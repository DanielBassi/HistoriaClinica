<%@ Page Language="C#" Title="Guardar" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Guardar.aspx.cs" Inherits="HistoriaClinica.Guardar" %>
<asp:Content runat="server" ID="Content" ContentPlaceHolderID="MainContent">

    <script type="text/javascript">
        
    </script>
    <br />
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <asp:Label runat="server" ID="lblTitle" Text="Crear nuevo paciente"></asp:Label>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblPrimerNombre">Primer nombre <span class="text-danger">*</span></asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtId" CssClass="hidden"></asp:TextBox>
                                <asp:TextBox runat="server" ID="txtPrimerNombre" CssClass="form-control form-control-sm" required="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblSegundoNombre">Segundo nombre</asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtSegundoNombre" CssClass="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblPrimerApellido">Primer apellido <span class="text-danger">*</span></asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtPrimerApellido" CssClass="form-control form-control-sm" required="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblSegundoApellido">Segundo apellido</asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtSegundoApellido" CssClass="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblTipoDocumento">Tipo documento <span class="text-danger">*</span></asp:Label>
                            <div class="form-group">
                                <asp:DropDownList runat="server" ID="DropDownListTipoDocumento" CssClass="form-control form-control-sm" required="true">
                                    <asp:ListItem Text="Cedula de ciudadania" Value="CC"></asp:ListItem>
                                    <asp:ListItem Text="Tarjeta de identidad" Value="TI"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblDocumento">Dcoumento <span class="text-danger">*</span></asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtDocumento" type="number" CssClass="form-control form-control-sm" required="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblDireccion">Dirección</asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtDireccion" CssClass="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblTelefono">Telefono <span class="text-danger">*</span></asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control form-control-sm" required="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-1">
                            <asp:Label runat="server" ID="LblEdad">Edad</asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtEdad" type="number" CssClass="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-1">
                            <asp:Label runat="server" ID="LblSexo">Sexo</asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtSexo" CssClass="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Label runat="server" ID="LblFecNac">Feca de nacimiento <span class="text-danger">*</span></asp:Label>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtFecNac" CssClass="form-control form-control-sm" required="true" type="date"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <p>Todos los campos con <span class="text-danger">*</span> son de caracter obligatoio</p>
                            <asp:Button runat="server" ID="btnGuardar" Text="Guardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>