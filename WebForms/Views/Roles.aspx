<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Layout/SiteMaterialize.Master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="WebForms.Views.Roles" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phBody" runat="server">
    <h1 class="header center orange-text">Starter Template</h1>
    <div class="row center">
        <h5 class="header col s12 light">A modern responsive front-end framework based on Material Design</h5>
    </div>
    <div class="row center">
        <asp:LinkButton runat="server" CssClass="btn-large waves-effect waves-light orange" Text="Postback"></asp:LinkButton>
    </div>

    <div class="row">
        <form class="col s12">
            <div class="row">
                <div class="input-field col s6">
                    <label>First Name</label>
                    <asp:TextBox runat="server" CssClass="validate" />
                </div>
                <div class="input-field col s6">
                    <input id="last_name" type="text" class="validate">
                    <label for="last_name">Last Name</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input disabled value="I am not editable" id="disabled" type="text" class="validate">
                    <label for="disabled">Disabled</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="password" type="password" class="validate">
                    <label for="password">Password</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="email" type="email" class="validate">
                    <label for="email">Email</label>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    This is an inline input field:
          <div class="input-field inline">
              <input id="email_inline" type="email" class="validate">
              <label for="email_inline">Email</label>
              <span class="helper-text" data-error="wrong" data-success="right">Helper text</span>
          </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
