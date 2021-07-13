<%@ Page Language="C#" Title="Detalle" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="HistoriaClinica.Detalle" %>
<asp:Content runat="server" ID="Detalle" ContentPlaceHolderID="MainContent">
     <br />
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary">
                <div class="panel-heading">Detalle - <asp:Label runat="server" ID="LblNombreCompleto"></asp:Label></div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-3">
                            <asp:Label runat="server" ID="LblNombre">Nombre completo</asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblDocumento">Dcoumento</asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtDocumento" CssClass="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblDireccion">Dirección</asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtDireccion" CssClass="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblTelefono">Telefono</asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-1">
                            <asp:Label runat="server" ID="LblEdad">Edad</asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtEdad" CssClass="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-1">
                            <asp:Label runat="server" ID="LblSexo">Sexo</asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtSexo" CssClass="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

