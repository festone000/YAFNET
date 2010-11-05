﻿/* YetAnotherForum.NET
 * Copyright (C) 2006-2010 Jaben Cargman
 * http://www.yetanotherforum.net/
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
namespace YAF.Classes.Core
{
  #region Using

  using System;
  using System.Collections.Generic;
  using System.Data;
  using System.Linq;
  using System.Text.RegularExpressions;

  using YAF.Classes.Data;
  using YAF.Classes.Pattern;
  using YAF.Classes.Utils;

  #endregion

  /// <summary>
  /// The bad word replace item.
  /// </summary>
  public class BadWordReplaceItem
  {
    #region Constants and Fields

    /// <summary>
    ///   The _active lock.
    /// </summary>
    private readonly object _activeLock = new object();

    /// <summary>
    ///   The _bad word.
    /// </summary>
    private readonly string _badWord;

    /// <summary>
    ///   The _good word.
    /// </summary>
    private readonly string _goodWord;

    /// <summary>
    ///   Regular expression object associated with this replace item...
    /// </summary>
    private readonly Regex _regEx;

    /// <summary>
    ///   The _active.
    /// </summary>
    private bool _active = true;

    #endregion

    #region Constructors and Destructors

    /// <summary>
    /// Initializes a new instance of the <see cref="BadWordReplaceItem"/> class.
    /// </summary>
    /// <param name="goodWord">
    /// The good word.
    /// </param>
    /// <param name="badWord">
    /// The bad word.
    /// </param>
    /// <param name="options">
    /// The options.
    /// </param>
    public BadWordReplaceItem([NotNull] string goodWord, [NotNull] string badWord, RegexOptions options)
    {
      this.Options = options;
      this._goodWord = goodWord;
      this._badWord = badWord;
      this._regEx = new Regex(badWord, options);
    }

    #endregion

    #region Properties

    /// <summary>
    ///   Gets or sets a value indicating whether Active.
    /// </summary>
    public bool Active
    {
      get
      {
        bool value;

        lock (this._activeLock)
        {
          value = this._active;
        }

        return value;
      }

      set
      {
        lock (this._activeLock)
        {
          this._active = value;
        }
      }
    }

    /// <summary>
    ///   Gets BadWord.
    /// </summary>
    public string BadWord
    {
      get
      {
        return this._badWord;
      }
    }

    /// <summary>
    ///   Gets BadWordRegEx.
    /// </summary>
    public Regex BadWordRegEx
    {
      get
      {
        return this._regEx;
      }
    }

    /// <summary>
    ///   Gets GoodWord.
    /// </summary>
    public string GoodWord
    {
      get
      {
        return this._goodWord;
      }
    }

    /// <summary>
    /// Gets or sets Options.
    /// </summary>
    public RegexOptions Options { get; protected set; }

    #endregion
  }

  /// <summary>
  /// The yaf bad word replace.
  /// </summary>
  public class YafBadWordReplace
  {
    #region Constants and Fields

    /// <summary>
    ///   The _options.
    /// </summary>
    private const RegexOptions _options = RegexOptions.IgnoreCase | RegexOptions.Compiled
                               /*| RegexOptions.Singleline | RegexOptions.Multiline*/;

    #endregion

    #region Properties

    /// <summary>
    ///   Gets ReplaceItems.
    /// </summary>
    public List<BadWordReplaceItem> ReplaceItems
    {
      get
      {
        string cacheKey = YafCache.GetBoardCacheKey(Constants.Cache.ReplaceWords);

        var replaceItems = YafContext.Current.Cache.GetItem(
          cacheKey, 
          30, 
          () =>
            {
              var replaceWords = DB.replace_words_list(YafContext.Current.PageBoardID, null).AsEnumerable();

              // move to collection...
              return
                replaceWords.Select(
                  row => new BadWordReplaceItem(row.Field<string>("goodword"), row.Field<string>("badword"), _options)).
                  ToList();
            });

        return replaceItems;
      }
    }

    /// <summary>
    ///   Gets ReplaceWordsCache.
    /// </summary>
    public MostRecentlyUsed ReplaceWordsCache
    {
      get
      {
        string cacheKey = YafCache.GetBoardCacheKey(Constants.Cache.ReplaceWordsCache);

        var replaceItems = YafContext.Current.Cache.GetItem(cacheKey, 30, () => new MostRecentlyUsed(250));

        return replaceItems;
      }
    }

    #endregion

    #region Public Methods

    /// <summary>
    /// Searches through SearchText and replaces "bad words" with "good words"
    ///   as defined in the database.
    /// </summary>
    /// <param name="searchText">
    /// The string to search through.
    /// </param>
    /// <returns>
    /// The replace.
    /// </returns>
    /// <exception cref="Exception">
    /// <c>Exception</c>.
    /// </exception>
    public string Replace([NotNull] string searchText)
    {
      if (searchText.IsNotSet())
      {
        return searchText;
      }

      int? hashCode = null;
      var cache = this.ReplaceWordsCache;

      if (searchText.Length < 250)
      {
        hashCode = searchText.GetHashCode();

        if (cache.Contains(hashCode))
        {
          return cache[hashCode] as string;
        }
      }

      string strReturn = searchText;

      foreach (BadWordReplaceItem item in this.ReplaceItems)
      {
        try
        {
          if (item.Active)
          {
            strReturn = item.BadWordRegEx.Replace(strReturn, item.GoodWord);
          }
        }

#if DEBUG
        catch (Exception e)
        {
          throw new Exception("Bad Word Regular Expression Failed: " + e.Message, e);
        }

#else
        catch (Exception x)
        {
          // disable this regular expression henceforth...
          item.Active = false;
          DB.eventlog_create(null, "BadWordReplace", x, EventLogTypes.Warning);
        }

#endif
      }

      if (hashCode.HasValue && strReturn.IsSet())
      {
        try
        {
          cache[hashCode.Value] = strReturn;
        }
        catch
        {
          // not the best solution -- but currently better then making MostRecentlyUsed ThreadSafe -- really not a major problem if we get here.
        }
      }

      return strReturn;
    }

    #endregion
  }
}