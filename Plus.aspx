<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Plus.aspx.cs" Inherits="Tienda.Plus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="overflow-auto">
        <div class="px-3 py-3">
        <div class="row mb-lg-0 mb-5">
            <div class="col-lg-6">
            <div class="fs-5 text-black">Marca</div>
            <div class="mb-2">
                <div class="input-group">
                <asp:TextBox class="form-control" placeholder="Buscar Por ID" ID="search1" runat="server" AutoCompleteType="Disabled" TextMode="Number"></asp:TextBox>
                <asp:Button class="btna btns" id="btnSearch1" runat="server" Text="Ok" OnClick="btnSearch1_Click"></asp:Button>
                <asp:Button class="btna btnl" id="list1" runat="server" Text="Regresar" OnClick="list1_Click"></asp:Button>
                </div>
            </div>
            <div class="overflow-auto">
            <asp:GridView ID="GridView1" CssClass="table grid" Width="100%" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="ID" BackColor="White" CellPadding="0" AllowPaging="True" GridLines="None" PageSize="9" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle CssClass="hg h" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle HorizontalAlign="Right" CssClass="GridPager"/>
                <RowStyle HorizontalAlign="Center" CssClass="gh" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("ID") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="id" CssClass="bg-transparent text-center w-100 olnb" Text='<%# Eval("ID") %>' runat="server" Enabled="false"></asp:TextBox>
                        </EditItemTemplate>
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

                    <asp:TemplateField HeaderText="OPCIONES">
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="30px" Height="30px"/>
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
            <div class="col-lg-6">
            <div class="fs-5 text-black">Tipo</div>
            <div class="mb-2">
                <div class="input-group">
                <asp:TextBox class="form-control" placeholder="Buscar Por ID" ID="search2" runat="server" AutoCompleteType="Disabled" TextMode="Number"></asp:TextBox>
                <asp:Button class="btna btns" id="btnSearch2" runat="server" Text="Ok" OnClick="btnSearch2_Click"></asp:Button>
                <asp:Button class="btna btnl" id="list2" runat="server" Text="Regresar" OnClick="list2_Click"></asp:Button>
                </div>
            </div>
            <div class="overflow-auto">
            <asp:GridView ID="GridView2" CssClass="table grid" Width="100%" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="ID" BackColor="White" CellPadding="0" AllowPaging="True" GridLines="None" PageSize="9" OnPageIndexChanging="GridView2_PageIndexChanging" OnRowCommand="GridView2_RowCommand" OnRowEditing="GridView2_RowEditing" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowUpdating="GridView2_RowUpdating">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle CssClass="hg h" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle HorizontalAlign="Right" CssClass="GridPager"/>
                <RowStyle HorizontalAlign="Center" CssClass="gh" VerticalAlign="Middle" />
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("ID") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="id" CssClass="bg-transparent text-center w-100 olnb" Text='<%# Eval("ID") %>' runat="server" Enabled="false"></asp:TextBox>
                        </EditItemTemplate>
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

                    <asp:TemplateField HeaderText="OPCIONES">
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="30px" Height="30px"/>
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
    </div>
</asp:Content>
