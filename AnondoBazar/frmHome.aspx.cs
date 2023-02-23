using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnondoBazar
{
    public partial class frmHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                TextBox1.Visible = true;
                TextBox1.Enabled = false;
                lblHomeText.Text = "I'am A Registerd User </br> I can see TextBox But No Access";
            }

            if (Session["UserType"] != null)
            {
                string usertype = Session["UserType"].ToString();
                if (usertype == "admin")
                {
                    TextBox1.Visible = true;
                    TextBox1.Enabled = true;
                    lblHomeText.ForeColor = System.Drawing.Color.Teal;
                    lblHomeText.Text = "I'am A Admin</br>I Have Full Access</br>I Can Read & Write Also";
                }
            }
        }
    }
}