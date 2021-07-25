<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Layout/SiteMaterialize.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="WebForms.Views.Usuarios" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phBody" runat="server">

    <div class="row">
        <div class="col s12 m4">
            <asp:TextBox runat="server" ID="txtName"></asp:TextBox>
            <asp:TextBox runat="server" ID="txtBirthday" TextMode="Date" />

            <div class="input-field">
                <asp:DropDownList runat="server" ID="ddlRole"></asp:DropDownList>
            </div>
        </div>

        <div class="col s12 m4">
            <asp:LinkButton runat="server" ID="btnReload" OnClick="btnReload_Click" Text="Agregar"></asp:LinkButton>
        </div>
    </div>
    <div class="row">
        <div class="col s12 m4">
            <asp:GridView runat="server" ID="gvUsers" AutoGenerateColumns="false" AutoGenerateEditButton="true" OnRowCommand="gvUsers_RowCommand">
                <Columns>
                    <asp:BoundField HeaderText="Usuario" DataField="Name" />
                    <asp:BoundField HeaderText="Rol" DataField="RoleName" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" CommandName="Ovo" CommandArgument='<% #Eval("Uid") %>'>
                                <i class="material-icons">delete</i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <div class="row">
        <div class="col s12 m4">
            <div class="icon-block">
                <h2 class="center light-blue-text"><i class="material-icons">flash_on</i></h2>
                <h5 class="center">Speeds up development</h5>

                <p class="light">We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.</p>
            </div>
        </div>

        <div class="col s12 m4">
            <div class="icon-block">
                <h2 class="center light-blue-text"><i class="material-icons">group</i></h2>
                <h5 class="center">User Experience Focused</h5>

                <p class="light">By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. Additionally, a single underlying responsive system across all platforms allow for a more unified user experience.</p>
            </div>
        </div>

        <div class="col s12 m4">
            <div class="icon-block">
                <h2 class="center light-blue-text"><i class="material-icons">settings</i></h2>
                <h5 class="center">Easy to work with</h5>

                <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.</p>
            </div>
        </div>
    </div>
</asp:Content>

