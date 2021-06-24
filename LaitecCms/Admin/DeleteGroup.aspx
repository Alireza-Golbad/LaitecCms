<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteGroup.aspx.cs" Inherits="LaitecCms.Admin.DeleteGroup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">صفحه حذف گروه خبری</div>
    <div class="alert alert-danger">
        <asp:Label runat="server" ID="label" Text="آیا از حذف این گروه مطمئنی؟"></asp:Label>
    </div>
    <div class="form-group">
        <asp:Label ID="groupid" runat="server" Text="Label"></asp:Label><br/>
        <asp:Label ID="grouptitle" runat="server" Text="Label"></asp:Label><br/>
    </div>
    <asp:Button ID="btnDelete" runat="server" Text="حذف گروه" CssClass="btn-danger" OnClick="btnDelete_Click" />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <a class="btn btn-warning" href="/Admin/ShowGroups.aspx">انصراف</a>
</asp:Content>
