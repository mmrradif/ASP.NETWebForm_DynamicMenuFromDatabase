using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace AnondoBazar
{ 
    public partial class frmRegister : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["aspProject"].ConnectionString);
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=aspProject;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // ------------------------------------------------------
        // ----------------------- REGISTER
        // ---------- START

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO SignUp(name,userName,userPassword,userEmail,RoleId) VALUES('" + txtName.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "',2)", con);
            cmd.ExecuteNonQuery();

            Session["UserName"] = txtUserName.Text;
            Session["UserType"] = 2;
            txtClear();

            Response.Redirect("~/frmHome.aspx");
            con.Close();          
        }

        private void txtClear()
        {
            txtName.Text = string.Empty;
            txtUserName.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtName.Focus();
        }

        // ------------------------------------------------------
        // ----------------------- REGISTER
        // ---------- END
    }
}