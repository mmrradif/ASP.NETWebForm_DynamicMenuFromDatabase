using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnondoBazar
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["userName"] != null && Request.Cookies["userPassword"] != null)
                {
                    txtUserName.Text = Request.Cookies["userName"].Value;
                    txtPassword.Text = Request.Cookies["userPassword"].Value;

                    cbRemember.Checked = true;
                }
            }
        }

        private void txtClear()
        {
            txtUserName.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtUserName.Focus();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["aspProject"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM signUp WHERE userName=@userName AND userPassword=@password", con);

                cmd.Parameters.AddWithValue("@userName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {

                    if (cbRemember.Checked)
                    {
                        Response.Cookies["userName"].Value = txtUserName.Text;
                        Response.Cookies["userPassword"].Value = txtPassword.Text;

                        Response.Cookies["userName"].Expires = DateTime.Now.AddYears(10);
                        Response.Cookies["userPassword"].Expires = DateTime.Now.AddYears(10);
                    }
                    else
                    {
                        Response.Cookies["userName"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["userPassword"].Expires = DateTime.Now.AddDays(-1);
                    }


                    string userType;
                    userType = dt.Rows[0][5].ToString().Trim();

                    Session["UserType"] = userType;

                    if (userType == "2")
                    {
                        Session["UserName"] = txtUserName.Text;
                        Response.Redirect("~/frmHome.aspx");
                    }
                    else if (userType == "1")
                    {
                        Session["UserName"] = txtUserName.Text;
                        Response.Redirect("~/frmAdminDashBoard.aspx");
                    }
                    else if (userType == "4")
                    {
                        Session["UserName"] = txtUserName.Text;
                        Response.Redirect("~/frmHome.aspx");
                    }

                    //Session["UserName"] = txtUserName.Text;
                    //Response.Redirect("~/frmHome.aspx");
                }

                else
                {
                    lblInvalid.Text = "Invalid Username or Password";
                }
                txtClear();
                con.Close();

            }

            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["aspProject"].ConnectionString);
            //SqlConnection con = new SqlConnection("Data Source=Mahbur;Initial Catalog=aspProject;Integrated Security=True");                  
            //Response.Write("<script>alert('Longin Successfully')</script>");            
        }

        protected void SignUpLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmRegister.aspx");
        }
    }
}