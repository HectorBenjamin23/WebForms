<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Layout/SiteMaterialize.Master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="WebForms.Views.Roles" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phBody" runat="server">

    <h1 class="header center orange-text">Starter Template</h1>
    <div class="row center">
        <h5 class="header col s12 light">A modern responsive front-end framework based on Material Design</h5>
    </div>
    <div class="row center">
        <asp:LinkButton runat="server" ID="btnModal" OnClick="btnModal_Click" CssClass="btn-large waves-effect waves-light orange" Text="Modal"></asp:LinkButton>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="sModal" runat="server">

    <%--MODAL--%>
    <div id="mdlUserForm" class="modal">
        <%--UPDATE PANEL--%>
        <asp:UpdatePanel runat="server" ID="upUserForm">
            <ContentTemplate>
                <%--CONTENT--%>
                <div class="modal-content">
                    <h4>User Form</h4>
                    <div class="row">
                        <div class="row">
                            <div class="input-field col s6">
                                <label class="active">First Name</label>
                                <asp:TextBox runat="server" ID="txtFirstName"></asp:TextBox>
                            </div>
                            <div class="input-field col s6">
                                <label class="active">Last Name</label>
                                <asp:TextBox runat="server" ID="txtLastName"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton Text="Agree" runat="server" ID="btnUserFormSave" OnClick="btnUserFormSave_Click" CssClass="waves-effect waves-green btn-flat" />
                </div>
                <%--CONTENT--%>
            </ContentTemplate>
        </asp:UpdatePanel>
        <%--UPDATE PANEL--%>
    </div>
    <%--MODAL--%>
</asp:Content>

<asp:Content runat="server" ID="Content4" ContentPlaceHolderID="phScripts">
    <script>
        function showClientModal() {
            $('#mdlUserForm').modal('open');
        }
        function hideClientModal() {
            $('#mdlUserForm').modal('close');
        }
    </script>
</asp:Content>
