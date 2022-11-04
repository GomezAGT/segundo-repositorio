<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Provider.aspx.cs" Inherits="Tienda.Provider" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
           <div class="px-3 py-3">
            <div class="mb-3">
                <div class="input-group">
                <asp:TextBox class="form-control" placeholder="Buscar Por Nombre" ID="txtSearch" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:Button class="btna btns" id="search" runat="server" Text="Ok" OnClick="search_Click"></asp:Button>
                <asp:Button class="btna btnl" id="list" runat="server" Text="Regresar" OnClick="list_Click"></asp:Button>
                </div>
            </div>
           <div class="overflow-auto">
            <asp:GridView ID="GridView1" CssClass="table grid" Width="100%" AllowPaging="true" PageSize="9" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="ID" BackColor="White" CellPadding="0" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle CssClass="hg h" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle HorizontalAlign="right" CssClass="GridPager"/>
                <RowStyle HorizontalAlign="Center" CssClass="gh" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("ID") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="NOMBRE">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Nombre") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="name" CssClass="bg-transparent text-center w-100 olnb" Text='<%# Eval("Nombre") %>' runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="nameFooter" CssClass="bg-transparent text-center w-100 olnb" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="DIRECCION">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Direccion") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="address" CssClass="bg-transparent text-center w-100 olnb" Text='<%# Eval("Direccion") %>' runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="addressFooter" CssClass="bg-transparent text-center w-100 olnb" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="TELEFONO">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Telefono") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="phone" CssClass="bg-transparent text-center w-100 olnb" Text='<%# Eval("Telefono") %>' runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="phoneFooter" CssClass="bg-transparent text-center w-100 olnb" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="OPCIONES">
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="30px" Height="30px"/>
                            <asp:ImageButton ImageUrl="~/images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="30px" Height="30px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="30px" Height="30px"/>
                            <asp:ImageButton ImageUrl="~/images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="30px" Height="30px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/images/add.png" runat="server" CommandName="Add" ToolTip="Add" Width="30px" Height="30px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
         </div>
       </div>
     </div>
     </div>
    </div>
</asp:Content>
