using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.Views
{
    public partial class Roles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
        }

        protected void btnModal_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "MyScript", "showClientModal();", true);
        }

        protected void btnUserFormSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtFirstName.Text.Trim()))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ToastUserFormFirstName", " M.toast({html: 'Enter First Name!', classes: 'rounded'});", true);
                return;
            }

            if (string.IsNullOrEmpty(txtLastName.Text.Trim()))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ToastUserFormLastName", " M.toast({html: 'Enter Last Name!', classes: 'rounded'});", true);
                return;
            }

            ScriptManager.RegisterStartupScript(this, this.GetType(), "MyScript", "hideClientModal();", true);
        }
    }
}