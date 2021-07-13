<%@ Page Title="Pacientes" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HistoriaClinica._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary">
                <div class="panel-heading">Listado de pacientes</div>
                <div class="panel-body">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-hover table-stripped">
                            <Columns>
                                <asp:TemplateField HeaderText="ID" ItemStyle-Width="50">
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Primer nombre" ItemStyle-Width="150">
                                <ItemTemplate>
                                    <asp:Label ID="lblPrimerNombre" runat="server" Text='<%# Eval("primer_nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Segundo nombre" ItemStyle-Width="150">
                                <ItemTemplate>
                                    <asp:Label ID="lblsegundo_nombre" runat="server" Text='<%# Eval("segundo_nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Acciones" ItemStyle-Width="150">
                                <ItemTemplate>
                                    <asp:Button runat="server" CssClass="btn btn-xs btn-success" Text="Detalle" ID="BtnDetalle" OnClick="BtnDetalle_Click" CommandArgument='<%# Eval("id") %>'></asp:Button>
                                    <asp:Button runat="server" CssClass="btn btn-xs btn-warning" Text="Editar" ID="BtnEditar" OnClick="BtnEditar_Click" CommandArgument='<%# Eval("id") %>'></asp:Button>
                                    <asp:Button runat="server" CssClass="btn btn-xs btn-danger" Text="Eliminar" ID="BtnEliminar" OnClick="BtnEliminar_Click" CommandArgument='<%# Eval("id") %>'></asp:Button>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
