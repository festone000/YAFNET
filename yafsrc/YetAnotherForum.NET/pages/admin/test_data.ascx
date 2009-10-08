<%@ Control Language="c#" AutoEventWireup="True" CodeFile="test_data.ascx.cs" Inherits="YAF.Pages.Admin.test_data"
	TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<YAF:PageLinks runat="server" ID="PageLinks" />
<YAF:AdminMenu runat="server" ID="Adminmenu1">
	<DotNetAge:Tabs ID="HostSettingsTabs" runat="server" ActiveTabEvent="Click" AsyncLoad="false"
		AutoPostBack="false" Collapsible="false" ContentCssClass="" ContentStyle="" Deselectable="false"
		EnabledContentCache="false" HeaderCssClass="" HeaderStyle="" OnClientTabAdd=""
		OnClientTabDisabled="" OnClientTabEnabled="" OnClientTabLoad="" OnClientTabRemove=""
		OnClientTabSelected="" OnClientTabShow="" SelectedIndex="0" Sortable="false" Spinner="">
		<Animations>
		</Animations>
		<Views>
			<DotNetAge:View runat="server" ID="View1" Text="Users" NavigateUrl="" HeaderCssClass=""
				HeaderStyle="" Target="_blank">
				<table class="content" cellspacing="1" cellpadding="0" width="100%">
					<tr>
						<td class="header1" colspan="2">
							Create Test Users
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Number of users to create:
						</td>
						<td class="post">
							<asp:TextBox ID="UsersNumber" runat="server">0</asp:TextBox>
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" EnableClientScript="False"
								Text="0" ControlToValidate="UsersNumber" ErrorMessage="User's number is required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Create in CurrentBoard:
						</td>
						<td class="post">
							<asp:CheckBox ID="CreateUsersInCurrentBoardCheckBox" Enabled="false" runat="server"
								Checked="true" />
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Password(for all users):
						</td>
						<td class="post">
							<asp:TextBox ID="Password" runat="server">testuser?</asp:TextBox>
							<asp:RequiredFieldValidator ID="PasswordRequiredfieldvalidator" runat="server" EnableClientScript="False"
								Text="0" ControlToValidate="Password" ErrorMessage="Users password is required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Confirm Password:
						</td>
						<td class="post">
							<asp:TextBox ID="Password2" runat="server">testuser?</asp:TextBox>
							<asp:CompareValidator ID="PasswordConfirmComparevalidator" runat="server" NAME="Comparevalidator1"
								EnableClientScript="False" ControlToValidate="Password2" ErrorMessage="Passwords didn't match."
								ControlToCompare="Password"></asp:CompareValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Password Question(for all users):
						</td>
						<td class="post">
							<asp:TextBox ID="Question" runat="server">testuser?</asp:TextBox>
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" EnableClientScript="False"
								ControlToValidate="Question" ErrorMessage="Password Question is Required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Password Answer(for all users):
						</td>
						<td class="post">
							<asp:TextBox ID="Answer" runat="server">yes</asp:TextBox>
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator4" runat="server" EnableClientScript="False"
								ControlToValidate="Answer" ErrorMessage="Password Answer is Required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Location(for all users):
						</td>
						<td class="post">
							<asp:TextBox ID="Location" runat="server">Earth</asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Home Page(for all users):
						</td>
						<td class="post">
							<asp:TextBox ID="HomePage" runat="server"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Time Zone(for all users):
						</td>
						<td class="post">
							<asp:DropDownList ID="TimeZones" runat="server" DataValueField="Value" DataTextField="Name">
							</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td class="header1" colspan="2">
							Delete Test Users
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Delete All Test Users:
						</td>
						<td class="post">
							<asp:CheckBox ID="DeleteUsersCheckBox" runat="server" Enabled="true" Checked="false" />
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							From Current Board:
						</td>
						<td class="post">
							<asp:CheckBox ID="DeleteUsersCurrentBoardCheckBox" Enabled="false" runat="server"
								Checked="true" />
						</td>
					</tr>
					<tr>
						<td class="postheader" colspan="2">
							Warning! This is a test/debug feature. Never use it in production environment.
						</td>
					</tr>
				</table>
			</DotNetAge:View>
			<DotNetAge:View runat="server" ID="View2" Text="Boards" NavigateUrl="" HeaderCssClass=""
				HeaderStyle="" Target="_blank">
				<table class="content" cellspacing="1" cellpadding="0" width="100%">
					<tr>
						<td class="header1" colspan="2">
							Create Boards
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Number of boards to create(max 10):
						</td>
						<td class="post">
							<asp:TextBox ID="BoardNumber" runat="server">0</asp:TextBox>
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator10" runat="server" EnableClientScript="False"
								Text="0" ControlToValidate="BoardNumber" ErrorMessage="Boards's number is required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Board Membership Name:
						</td>
						<td class="post">
							<asp:TextBox ID="BoardMembershipName" Enabled="false" runat="server"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Board Roles Name:
						</td>
						<td class="post">
							<asp:TextBox ID="BoardRolesName" Enabled="false" runat="server"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<tr>
							<td class="postheader">
								Number of Categories in Each Board:
							</td>
							<td class="post">
								<asp:TextBox ID="BoardsCategoriesNumber" runat="server" Enabled="false" datavaluefield="TopicID"
									datatextfield="Subject">0</asp:TextBox>
							</td>
						</tr>
						<tr>
							<td class="postheader">
								Number of Forums in Each Category:
							</td>
							<td class="post">
								<asp:TextBox ID="BoardsForumsNumber" runat="server" Enabled="false" datavaluefield="TopicID"
									datatextfield="Subject">0</asp:TextBox>
							</td>
						</tr>
						<tr>
							<td class="postheader">
								Number of Topics in Each Forum:
							</td>
							<td class="post">
								<asp:TextBox ID="BoardsTopicsNumber" runat="server" Enabled="false" datavaluefield="TopicID"
									datatextfield="Subject">0</asp:TextBox>
							</td>
						</tr>
						<tr>
							<td class="postheader">
								Number of Messages in Each Topic:
							</td>
							<td class="post">
								<asp:TextBox ID="BoardsMessagesNumber" runat="server" Enabled="false" datavaluefield="TopicID"
									datatextfield="Subject">0</asp:TextBox>
							</td>
						</tr>
						<td class="header1" colspan="2">
							Delete Boards
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Delete All Test Boards:
						</td>
						<td class="post">
							<asp:CheckBox ID="DeleteBoardsCheckBox" runat="server" Enabled="false" Checked="false" />
						</td>
					</tr>
					<tr>
						<td class="postheader" colspan="2">
							Warning! This is a test/debug feature. Never use it in production environment.
						</td>
					</tr>
				</table>
			</DotNetAge:View>
			<DotNetAge:View runat="server" ID="View3" Text="Categories" NavigateUrl="" HeaderCssClass=""
				HeaderStyle="" Target="_blank">
				<table class="content" cellspacing="1" cellpadding="0" width="100%">
					<tr>
						<td class="header1" colspan="2">
							Create Test Categories
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Number of categories to create(max 100):
						</td>
						<td class="post">
							<asp:TextBox ID="CategoriesNumber" runat="server">0</asp:TextBox>
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator5" runat="server" EnableClientScript="False"
								Text="0" ControlToValidate="CategoriesNumber" ErrorMessage="Categories's number is required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Number of Forums in Each Category:
						</td>
						<td class="post">
							<asp:TextBox ID="CategoriesForumsNumber" runat="server" Enabled="false" datavaluefield="TopicID"
								datatextfield="Subject">0</asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Number of Topics in Each Forum:
						</td>
						<td class="post">
							<asp:TextBox ID="CategoriesTopicsNumber" runat="server" Enabled="false" datavaluefield="TopicID"
								datatextfield="Subject">0</asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Number of Messages in Each Topic:
						</td>
						<td class="post">
							<asp:TextBox ID="CategoriesMessagesNumber" runat="server" Enabled="false" datavaluefield="TopicID"
								datatextfield="Subject">0</asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="header1" colspan="2">
							Delete Test Categories
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Delete All Test Categories:
						</td>
						<td class="post">
							<asp:CheckBox ID="DeleteCategoriesCheckBox" runat="server" Enabled="false" Checked="false" />
						</td>
					</tr>
					<tr>
						<td class="postheader" colspan="2">
							Warning! This is a test/debug feature. Never use it in production environment.
						</td>
					</tr>
				</table>
			</DotNetAge:View>
			<DotNetAge:View runat="server" ID="View4" Text="Forums" NavigateUrl="" HeaderCssClass=""
				HeaderStyle="" Target="_blank">
				<table class="content" cellspacing="1" cellpadding="0" width="100%">
					<tr>
						<td class="header1" colspan="2">
							Create Test Forums
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Number of forums to create:
						</td>
						<td class="post">
							<asp:TextBox ID="ForumsNumber" runat="server">0</asp:TextBox>
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator6" runat="server" EnableClientScript="False"
								Text="0" ControlToValidate="ForumsNumber" ErrorMessage="Forums' number is required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Count topics and messages in statistics:
						</td>
						<td class="post">
							<asp:CheckBox ID="ForumsCountMessages" runat="server" Enabled="true" Checked="true" />
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Hide forums if no access:
						</td>
						<td class="post">
							<asp:CheckBox ID="ForumsHideNoAccess" runat="server" Enabled="true" Checked="true" />
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Select common access mask for all groups:
						</td>
						<td class="post">
							<asp:DropDownList ID="ForumsStartMask" runat="server" DataValueField="AccessMaskID"
								DataTextField="Name" OnSelectedIndexChanged="ForumsCategory_OnSelectedIndexChanged">
							</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Select a group with special rights for the test data:
						</td>
						<td class="post">
							<asp:DropDownList ID="ForumsGroups" runat="server" DataValueField="GroupID" DataTextField="Name"
								OnSelectedIndexChanged="ForumsCategory_OnSelectedIndexChanged">
							</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Select an access mask with special rights for the test data:
						</td>
						<td class="post">
							<asp:DropDownList ID="ForumsAdminMask" runat="server" DataValueField="AccessMaskID"
								DataTextField="Name" OnSelectedIndexChanged="ForumsCategory_OnSelectedIndexChanged">
							</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Choose category:
						</td>
						<td class="post">
							<asp:DropDownList ID="ForumsCategory" runat="server" AutoPostBack="true" DataValueField="CategoryID"
								DataTextField="Name" OnDataBound="ForumsCategory_OnSelectedIndexChanged" OnSelectedIndexChanged="ForumsCategory_OnSelectedIndexChanged">
							</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Choose parent forum:
						</td>
						<td class="post">
							<asp:DropDownList ID="ForumsParent" runat="server" DataValueField="ForumID" DataTextField="Title">
							</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Number of Topics in Each Forum:
						</td>
						<td class="post">
							<asp:TextBox ID="ForumsTopicsNumber" runat="server" Enabled="true" datavaluefield="TopicID"
								datatextfield="Subject">0</asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Number of Messages in Each Topic:
						</td>
						<td class="post">
							<asp:TextBox ID="ForumsMessagesNumber" runat="server" Enabled="true" datavaluefield="TopicID"
								datatextfield="Subject">0</asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="header1" colspan="2">
							Delete Test Forums
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Delete All Test Forums:
						</td>
						<td class="post">
							<asp:CheckBox ID="DeleteForumsCheckBox" runat="server" Enabled="true" Checked="false" />
						</td>
					</tr>
					<tr>
						<td class="postheader" colspan="2">
							Warning! This is a test/debug feature. Never use it in production environment.
						</td>
					</tr>
				</table>
			</DotNetAge:View>
			<DotNetAge:View runat="server" ID="View5" Text="Topics" NavigateUrl="" HeaderCssClass=""
				HeaderStyle="" Target="_blank">
				<table class="content" cellspacing="1" cellpadding="0" width="100%">
					<tr>
						<td class="header1" colspan="2">
							Create Test Topics
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Number of topics to create:
						</td>
						<td class="post">
							<asp:TextBox ID="TopicsNumber" runat="server">0</asp:TextBox>
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator7" runat="server" EnableClientScript="False"
								Text="0" ControlToValidate="TopicsNumber" ErrorMessage="Categories' number is required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="post" width="80%">
							<asp:DropDownList ID="TopicsPriorityList" runat="server" />
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Create Poll:
						</td>
						<td class="post">
							<asp:CheckBox ID="PollCreate" runat="server" Enabled="true" Checked="false" />
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Choose category:
						</td>
						<td class="post">
							<asp:DropDownList ID="TopicsCategory" runat="server" AutoPostBack="true" DataValueField="CategoryID"
								DataTextField="Name" OnDataBound="TopicsCategory_OnSelectedIndexChanged" OnSelectedIndexChanged="TopicsCategory_OnSelectedIndexChanged">
							</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Choose forum:
						</td>
						<td class="post">
							<asp:DropDownList ID="TopicsForum" runat="server" AutoPostBack="false" DataValueField="ForumID"
								DataTextField="Title">
							</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Number of Messages in Each Topic:
						</td>
						<td class="post">
							<asp:TextBox ID="TopicsMessagesNumber" runat="server" Enabled="true" datavaluefield="TopicID"
								datatextfield="Subject">0</asp:TextBox>
						</td>
					</tr>
					<tr>
						<td class="header1" colspan="2">
							Delete Test Topics
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Delete All Test Topics:
						</td>
						<td class="post">
							<asp:CheckBox ID="DeleteTopicsCheckBox" runat="server" Enabled="false" Checked="false" />
						</td>
					</tr>
					<tr>
						<td class="postheader" colspan="2">
							Warning! This is a test/debug feature. Never use it in production environment.
						</td>
					</tr>
				</table>
			</DotNetAge:View>
			<DotNetAge:View runat="server" ID="View6" Text="Messages" NavigateUrl="" HeaderCssClass=""
				HeaderStyle="" Target="_blank">
				<table class="content" cellspacing="1" cellpadding="0" width="100%">
					<tr>
						<td class="header1" colspan="2">
							Create Test Messages
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Number of messages to create:
						</td>
						<td class="post">
							<asp:TextBox ID="PostsNumber" runat="server">0</asp:TextBox>
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator8" runat="server" EnableClientScript="False"
								Text="0" ControlToValidate="PostsNumber" ErrorMessage="Categories' number is required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Choose category:
						</td>
						<td class="post">
							<asp:DropDownList ID="PostsCategory" runat="server" AutoPostBack="true" DataValueField="CategoryID"
								DataTextField="Name" OnDataBound="PostsCategory_OnSelectedIndexChanged" OnSelectedIndexChanged="PostsCategory_OnSelectedIndexChanged">
							</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Choose forum:
						</td>
						<td class="post">
							<asp:DropDownList ID="PostsForum" runat="server" DataValueField="ForumID" AutoPostBack="true"
								DataTextField="Title" OnSelectedIndexChanged="PostsForum_OnSelectedIndexChanged">
							</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td class="postheader">
							Choose topic:
						</td>
						<td class="post">
							<asp:DropDownList ID="PostsTopic" runat="server" DataValueField="TopicID" DataTextField="Subject">
							</asp:DropDownList>
						</td>
					</tr>
					<tr>
						<td class="header1" colspan="2">
							Delete Test Messages
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Delete All Test Messages:
						</td>
						<td class="post">
							<asp:CheckBox ID="DeletePostsCheckBox" runat="server" Enabled="false" Checked="false" />
						</td>
					</tr>
					<tr>
						<td class="postheader" colspan="2">
							Warning! This is a test/debug feature. Never use it in production environment.
						</td>
					</tr>
				</table>
			</DotNetAge:View>
			<DotNetAge:View runat="server" ID="View7" Text="PMessages" NavigateUrl="" HeaderCssClass=""
				HeaderStyle="" Target="_blank" Enabled="true">
				<table class="content" cellspacing="1" cellpadding="0" width="100%">
					<tr>
						<td class="header1" colspan="2">
							Create Test Private Messages
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Number of pmessages to create:
						</td>
						<td class="post">
							<asp:TextBox ID="PMessagesNumber" runat="server">0</asp:TextBox>
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator9" runat="server" EnableClientScript="False"
								Text="0" ControlToValidate="PMessagesNumber" ErrorMessage="Pmessages's number is required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							From User:
						</td>
						<td class="post">
							<asp:TextBox ID="From" runat="server"></asp:TextBox>
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" EnableClientScript="False"
								Text="0" ControlToValidate="From" ErrorMessage="User Name is Required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							To User:
						</td>
						<td class="post">
							<asp:TextBox ID="To" runat="server"></asp:TextBox>
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator11" runat="server" EnableClientScript="False"
								Text="0" ControlToValidate="To" ErrorMessage="User Name is Required."></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Send To All:
						</td>
						<td class="post">
							<asp:CheckBox ID="PMessagesToAll" runat="server" Enabled="false" Checked="false" />
						</td>
					</tr>
					<tr>
						<td class="header1" colspan="2">
							Delete Test Private Messages(Disabled)
						</td>
					</tr>
					<tr>
						<td class="postheader" width="50%">
							Delete All Test Private Messages:
						</td>
						<td class="post">
							<asp:CheckBox ID="DeletePMessagesCheckBox" runat="server" Enabled="false" Checked="false" />
						</td>
					</tr>
					<tr>
						<td class="postheader" colspan="2">
							Warning! This is a test/debug feature. Never use it in production environment.
						</td>
					</tr>
				</table>
			</DotNetAge:View>
			<DotNetAge:View runat="server" ID="View8" Text="Combinations" NavigateUrl="" HeaderCssClass=""
				HeaderStyle="" Target="_blank" Enabled="false">
				<table class="content" cellspacing="1" cellpadding="0" width="100%">
					<tr>
						<td class="header2" align="center" colspan="2">
							Delete Test Data:
						</td>
					</tr>
				</table>
			</DotNetAge:View>
		</Views>
	</DotNetAge:Tabs>
	<table class="content" cellspacing="1" cellpadding="0" width="100%">
		<tr>
			<td class="postfooter" align="center">
				<asp:Button ID="LaunchGenerator" runat="server" Text="Launch Generator" CssClass="pbutton"
					OnClick="CreateTestData_Click"></asp:Button>
				<asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="pbutton" OnClick="cancel_Click"></asp:Button>
			</td>
		</tr>
	</table>
</YAF:AdminMenu>
<YAF:SmartScroller ID="SmartScroller1" runat="server" />
