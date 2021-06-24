<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNews.aspx.cs" Inherits="LaitecCms.Admin.AddNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center" style="font-size: x-large; background-color: aquamarine">
        گروه های خبری
    </div>
    <div class="alert-info">
        <asp:Label ID="lblShow" runat="server" Text="Label"></asp:Label>
    </div>
    
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="عکس خبر"></asp:Label>
        <div style="text-align: center;">
            <asp:Image ID="Image1" runat="server" Height="125px" Width="119px" />
        </div>
        <div style="text-align: center; margin-top: 10px;">
            <asp:FileUpload ID="FileUploadPic" runat="server" />
            <div style="text-align: center; margin-top: 10px;">
                <asp:Button CssClass="btn btn-info" ID="btnShow" runat="server" Font-Names="Tahoma" Font-Size="Small"
                            Text="نمایش تصویر" Width="91px" OnClick="btnShow_Click" />
            </div>
        </div>
    </div>
    
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="عنوان"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="NewsTitle" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="این فیلد ضروری است" ControlToValidate="NewsTitle"></asp:RequiredFieldValidator>
    </div>
    
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="متن کوتاه"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="این فیلد ضروری است" ControlToValidate="NewsTitle"></asp:RequiredFieldValidator>
    </div>
    
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="متن کامل"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="این فیلد ضروری است" ControlToValidate="NewsTitle"></asp:RequiredFieldValidator>
    </div>
    
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="عنوان"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="این فیلد ضروری است" ControlToValidate="NewsTitle"></asp:RequiredFieldValidator>
    </div>
    <asp:Button ID="Button1" runat="server" Text="ایجاد" CssClass="btn-success btn-lg"/>
</asp:Content>
