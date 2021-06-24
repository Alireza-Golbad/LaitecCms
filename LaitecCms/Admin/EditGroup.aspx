<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditGroup.aspx.cs" Inherits="LaitecCms.Admin.EditGroup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center" style="font-size: x-large; background-color: aquamarine">
        ویرایش گروه های خبری
    </div>

    <div class="alert alert-danger">
        <asp:Label ID="lblShow" Text="" runat="server" />
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" Text="گروه خبری" runat="server" />
        <asp:TextBox CssClass="form-control" ID="GroupTitle" runat="server"></asp:TextBox>
    </div>
    
    <asp:Button ID="btnEdit" Text="ویرایش" runat="server" CssClass="btn btn-success" OnClick="btnEdit_Click"/>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <a class="btn btn-warning" href="/Admin/ShowGroups.aspx">انصراف</a>
</asp:Content>
