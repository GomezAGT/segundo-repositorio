<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Tienda.Product" %>
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
            <asp:GridView ID="GridView1" CssClass="table grid" Width="100%" AllowPaging="true" PageSize="9" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="ID" BackColor="White" CellPadding="0" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" OnDataBound="GridView1_DataBound" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
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

                    <asp:TemplateField HeaderText="MARCA">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Marca") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="brand" runat="server" CssClass="bg-transparent text-center w-100 olnb form-select border-0"></asp:DropDownList>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="brandFooter" runat="server" CssClass="bg-transparent text-center w-100 olnb form-select border-0"></asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="PRECIO">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Precio") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="price" CssClass="bg-transparent text-center w-100 olnb" Text='<%# Eval("Precio") %>' runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="priceFooter" CssClass="bg-transparent text-center w-100 olnb" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="DESCRIPCION">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Descripcion") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="describe" CssClass="bg-transparent text-center w-100 olnb" Text='<%# Eval("Descripcion") %>' runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="describeFooter" CssClass="bg-transparent text-center w-100 olnb" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="FECHA DE CADUCIDAD">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Caducidad","{0:MM/dd/yyyy}") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="caducidad" CssClass="bg-transparent text-center w-100 olnb" Text='<%# Eval("Caducidad","{0:yyyy-dd-MM}") %>' TextMode="Date" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="caducidadFooter" CssClass="bg-transparent text-center w-100 olnb" runat="server" TextMode="Date" AutoCompleteType="Disabled"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>    

                    <asp:TemplateField HeaderText="TIPO">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Tipo") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="category" runat="server" CssClass="bg-transparent text-center w-100 olnb form-select border-0"></asp:DropDownList>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="categoryFooter" runat="server" CssClass="bg-transparent text-center w-100 olnb form-select border-0"></asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="PROVEEDOR">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Proveedor") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="provider" runat="server" CssClass="bg-transparent text-center w-100 olnb form-select border-0"></asp:DropDownList>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="providerFooter" runat="server" CssClass="bg-transparent text-center w-100 olnb form-select border-0"></asp:DropDownList>
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
