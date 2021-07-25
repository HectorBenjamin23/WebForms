using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ViewModel;

namespace WebForms.Views
{
    public partial class Usuarios : System.Web.UI.Page
    {
        #region "Properties
        protected UserViewModel VmUser { get; set; }
        #endregion

        public Usuarios()
        {
            this.VmUser = new UserViewModel();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;

            var roles = this.VmUser.ObtenerRoles();
            ddlRole.DataSource = roles;
            ddlRole.DataValueField = "Uid";
            ddlRole.DataTextField = "Name";
            ddlRole.DataBind();

            var usuarios = this.VmUser.ObtenerUsuarios("-");
            gvUsers.DataSource = usuarios;
            gvUsers.DataBind();
        }

        protected void btnReload_Click(object sender, EventArgs e)
        {
            this.VmUser.Agregar(txtName.Text.Trim(), DateTime.Parse(txtBirthday.Text), Guid.Parse(ddlRole.SelectedValue.ToString()));

            var usuarios = this.VmUser.ObtenerUsuarios("-");
            gvUsers.DataSource = usuarios;
            gvUsers.DataBind();
        }

        protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                txtName.Text = "No es Eliminar";
            }
            else if (e.CommandName == "Ovo")
            {
                string uid = e.CommandArgument.ToString();
                var usuario = this.VmUser.ObtenerUsuario(Guid.Parse(uid));

                txtName.Text = usuario.Name;
            }
        }
    }
}