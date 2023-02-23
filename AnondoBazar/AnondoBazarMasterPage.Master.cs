using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnondoBazar
{
    
    public partial class AnondoBazarMasterPage : System.Web.UI.MasterPage
    {
        SqlConnection con;

        public AnondoBazarMasterPage()
        {
             con = new SqlConnection("Data Source=Mahbur;Initial Catalog=aspProject;Integrated Security=True");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                Label1.Text = Session["UserName"].ToString();

            }



            if (!Page.IsPostBack)
            {
                if (Session["UserType"] == null || Session["UserName"] == null)
                {
                    bindMenuForUnRegisteredUser();
                    bindMenuForUnAuthorizedUser();

                }
                if (Session["UserName"] != null)
                {
                    if (Session["UserType"] != null)
                    {
                        string usertype = Session["UserType"].ToString();

                        if (usertype == "1")
                        {
                            bindMenuForAdmin();
                            Label1.Visible = true;
                            btnLogout.Visible = true;
                            Menu2.Visible = false;
                        }
                        if (usertype == "2")
                        {
                            bindMenuForRegisteredUser();
                            Label1.Visible = true;
                            btnLogout.Visible = true;
                            Menu2.Visible = false;

                        }
                        if (usertype == "4")
                        {
                            bindMenuForEmployee();
                            Label1.Visible = true;
                            btnLogout.Visible = true;
                            Menu2.Visible = false;
                        }

                    }
                }
                
            }

        }

        private void bindMenuForUnRegisteredUser()
        {
            con.Open();
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            string sql = "SELECT * FROM tblDynamicMenu WHERE roleid=3";
            
            SqlDataAdapter sda = new SqlDataAdapter(sql,con);
            sda.Fill(ds);
            dt = ds.Tables[0];

            DataRow[] drowParent = dt.Select("parentId=" + 0);

            foreach (DataRow dr in drowParent)
            {
                Menu1.Items.Add(new MenuItem(dr["menuName"].ToString(), dr["menuId"].ToString(), "", dr["menuLocation"].ToString()));
            }
            foreach (DataRow dr in dt.Select("parentId>" + 0))
            {
                MenuItem subMenu = new MenuItem(dr["menuName"].ToString(), dr["menuId"].ToString(), "", dr["menuLocation"].ToString());
                Menu1.FindItem(dr["parentId"].ToString()).ChildItems.Add(subMenu);
            }
            con.Close();
        }

        private void bindMenuForRegisteredUser()
        {

            Menu1.CssClass = "col-12 bg-primary p-1";
            Menu1.StaticMenuStyle.CssClass = "bg-primary shadow";

            Menu1.DynamicMenuStyle.CssClass = "bg-primary";

            Panel1.CssClass = "col bg-primary";
            Label1.CssClass = "col-6 bg-primary m-0 p-3 btn btn-primary shadow";
            btnLogout.CssClass = "col-4 btn btn-danger p-2 m-2 shadow";

            MasterFooter.CssClass = "bg-primary text-white text-center p-2";


            con.Open();
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            string sql = "SELECT * FROM tblDynamicMenu WHERE roleid=2";

            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            sda.Fill(ds);
            dt = ds.Tables[0];

            DataRow[] drowParent = dt.Select("parentId=" + 0);

            foreach (DataRow dr in drowParent)
            {
                Menu1.Items.Add(new MenuItem(dr["menuName"].ToString(), dr["menuId"].ToString(), "", dr["menuLocation"].ToString()));
            }
            foreach (DataRow dr in dt.Select("parentId>" + 0))
            {
                MenuItem subMenu = new MenuItem(dr["menuName"].ToString(), dr["menuId"].ToString(), "", dr["menuLocation"].ToString());
                Menu1.FindItem(dr["parentId"].ToString()).ChildItems.Add(subMenu);
            }
            con.Close();
        }


        private void bindMenuForAdmin()
        {

            Menu1.CssClass = "col-12 bg-success p-1";
            Menu1.StaticMenuStyle.CssClass = "bg-success shadow";

            Menu1.DynamicMenuStyle.CssClass= "bg-success";

            Panel1.CssClass = "col bg-success";
            Label1.CssClass = "col-6 bg-success m-0 p-3 btn btn-primary shadow";
            btnLogout.CssClass = "col-4 btn btn-danger p-2 m-2 shadow";

            MasterFooter.CssClass = "bg-success text-white text-center p-2";

            con.Open();
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            string sql = "SELECT * FROM tblDynamicMenu WHERE roleid=1";

            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            sda.Fill(ds);
            dt = ds.Tables[0];

            DataRow[] drowParent = dt.Select("parentId=" + 0);

            foreach (DataRow dr in drowParent)
            {
                Menu1.Items.Add(new MenuItem(dr["menuName"].ToString(), dr["menuId"].ToString(), "", dr["menuLocation"].ToString()));
            }
            foreach (DataRow dr in dt.Select("parentId>" + 0))
            {
                MenuItem subMenu = new MenuItem(dr["menuName"].ToString(), dr["menuId"].ToString(), "", dr["menuLocation"].ToString());
                Menu1.FindItem(dr["parentId"].ToString()).ChildItems.Add(subMenu);
            }
            con.Close();
        }


        private void bindMenuForEmployee()
        {
            Menu1.CssClass = "col-12 bg-warning p-1";
            Menu1.StaticMenuStyle.CssClass = "bg-warning shadow";

            Menu1.DynamicMenuStyle.CssClass = "bg-warning";

            Panel1.CssClass = "col bg-warning";
            Label1.CssClass = "col-6 bg-warning m-0 p-3 btn btn-primary shadow";
            btnLogout.CssClass = "col-4 btn btn-danger p-2 m-2 shadow";

            MasterFooter.CssClass = "bg-warning text-white text-center p-2";


            con.Open();
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            string sql = "SELECT * FROM tblDynamicMenu WHERE roleid=4";

            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            sda.Fill(ds);
            dt = ds.Tables[0];

            DataRow[] drowParent = dt.Select("parentId=" + 0);

            foreach (DataRow dr in drowParent)
            {
                Menu1.Items.Add(new MenuItem(dr["menuName"].ToString(), dr["menuId"].ToString(), "", dr["menuLocation"].ToString()));
            }
            foreach (DataRow dr in dt.Select("parentId>" + 0))
            {
                MenuItem subMenu = new MenuItem(dr["menuName"].ToString(), dr["menuId"].ToString(), "", dr["menuLocation"].ToString());
                Menu1.FindItem(dr["parentId"].ToString()).ChildItems.Add(subMenu);
            }
            con.Close();
        }

        // ------------------------------------
        // ------------------
        private void bindMenuForUnAuthorizedUser()
        {
            con.Open();
            DataSet dd = new DataSet();
            DataTable dp = new DataTable();
            string sql2 = "SELECT * FROM tblDynamicMenu2 WHERE roleid=3";

            SqlDataAdapter sda = new SqlDataAdapter(sql2, con);
            sda.Fill(dd);
            dp = dd.Tables[0];

            DataRow[] drowParent2 = dp.Select("parentId=" + 0);

            foreach (DataRow dr2 in drowParent2)
            {
                Menu2.Items.Add(new MenuItem(dr2["menuName"].ToString(), dr2["menuId"].ToString(), "", dr2["menuLocation"].ToString()));
            }
            con.Close();

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["UserType"] = null;
            Session["UserName"] = null;
            Response.Redirect("~/frmLogin.aspx");
        }

        //private void bindMenuForAuthorizedAdmin()
        //{
        //    con.Open();
        //    DataSet dd = new DataSet();
        //    DataTable dp = new DataTable();
        //    string sql2 = "SELECT * FROM tblDynamicMenu2 WHERE roleid=1";

        //    SqlDataAdapter sda = new SqlDataAdapter(sql2, con);
        //    sda.Fill(dd);
        //    dp = dd.Tables[0];

        //    DataRow[] drowParent2 = dp.Select("parentId=" + 0);

        //    foreach (DataRow dr2 in drowParent2)
        //    {
        //        Menu2.Items.Add(new MenuItem(dr2["menuName"].ToString(), dr2["menuId"].ToString(), "", dr2["menuLocation"].ToString()));
        //    }
        //    con.Close();

        //}


        //private void bindMenuForAuthorizeduser()
        //{
        //    con.Open();
        //    DataSet dd = new DataSet();
        //    DataTable dp = new DataTable();
        //    string sql2 = "SELECT * FROM tblDynamicMenu2 WHERE roleid=2";

        //    SqlDataAdapter sda = new SqlDataAdapter(sql2, con);
        //    sda.Fill(dd);
        //    dp = dd.Tables[0];

        //    DataRow[] drowParent2 = dp.Select("parentId=" + 0);

        //    foreach (DataRow dr2 in drowParent2)
        //    {
        //        Menu2.Items.Add(new MenuItem(dr2["menuName"].ToString(), dr2["menuId"].ToString(), "", dr2["menuLocation"].ToString()));
        //    }
        //    con.Close();

        //}

        //private void bindMenuForAuthorizedEmployee()
        //{
        //    con.Open();
        //    DataSet dd = new DataSet();
        //    DataTable dp = new DataTable();
        //    string sql2 = "SELECT * FROM tblDynamicMenu2 WHERE roleid=4";

        //    SqlDataAdapter sda = new SqlDataAdapter(sql2, con);
        //    sda.Fill(dd);
        //    dp = dd.Tables[0];

        //    DataRow[] drowParent2 = dp.Select("parentId=" + 0);

        //    foreach (DataRow dr2 in drowParent2)
        //    {
        //        Menu2.Items.Add(new MenuItem(dr2["menuName"].ToString(), dr2["menuId"].ToString(), "", dr2["menuLocation"].ToString()));
        //    }
        //    con.Close();

        //}



        // -----------------------------------------------------------
        // -----------------------------------------------------------

        //protected void btnUserRegister_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/frmRegister.aspx");
        //}

        //protected void btnHome_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("/frmHome.aspx");
        //}

        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/frmLogin.aspx");
        //}

        //protected void btnLogout_Click(object sender, EventArgs e)
        //{
        //    Session["UserName"] = null;
        //    Session["UserType"] = null;
        //    Response.Redirect("~/frmLogin.aspx");

        //}
    }
}