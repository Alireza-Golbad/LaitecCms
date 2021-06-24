<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddGroup.aspx.cs" Inherits="LaitecCms.Admin.AddGroup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron text-center" style="font-size: x-large; background-color: aquamarine">
        افزودن گروه های خبری
    </div>

    <div class="alert-info">
        <asp:Label ID="lblshow" Text="" runat="server" />
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" Text="گروه خبری" runat="server" />
        <asp:TextBox CssClass="form-control" ID="GroupTitle" runat="server"></asp:TextBox>
    </div>
    
    <asp:Button ID="btnSave" Text="ذخیره" runat="server" CssClass="btn btn-success" OnClick="btnSave_Click" />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <a class="btn btn-warning" href="/Admin/ShowGroups.aspx">انصراف</a>

</asp:Content>
