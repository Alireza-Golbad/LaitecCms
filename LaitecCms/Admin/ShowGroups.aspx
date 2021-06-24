<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowGroups.aspx.cs" Inherits="LaitecCms.Admin.ShowGroups" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center" style="font-size: x-large; background-color: aquamarine">
        گروه های خبری
    </div>
    <a class="btn btn-success" href="/Admin/AddGroup.aspx">افزودن گروه خبری</a>
    
    <asp:GridView CssClass="table table-bordered text-center " ID="listGroup" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="GroupID" HeaderText="شناسه" SortExpression="gtoupid"></asp:BoundField>
            <asp:BoundField DataField="GroupTitle" HeaderText="گروه خبری"></asp:BoundField>
                
            <asp:TemplateField HeaderText="ویرایش" ShowHeader="False">
                <ItemStyle HorizontalAlign="Center" />
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageWidth="30" ImageUrl="~/Content/img/img.jpg"
                                   NavigateUrl='<%# "EditGroup.aspx?id="+Eval("GroupID")%>' Text="ویرایش"></asp:HyperLink>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Top" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="حذف" ShowHeader="False">
                <ItemStyle HorizontalAlign="Center" />
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageWidth="30" ImageUrl="~/img/delete.png"
                                   NavigateUrl='<%# "DeleteGroup.aspx?id="+Eval("GroupID")%>' Text="حذف"></asp:HyperLink>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Top" />
            </asp:TemplateField>
        </Columns>
        <HeaderStyle HorizontalAlign="Center" />
    </asp:GridView>
</asp:Content>
