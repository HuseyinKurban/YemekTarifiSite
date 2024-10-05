using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string islem = "";
    string yorumid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            yorumid = Request.QueryString["Yorumid"];
            islem = Request.QueryString["islem"];
        }

        if (islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("delete  from Tbl_Yorumlar where Yorumid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", yorumid);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        Panel2.Visible = false;
        Panel4.Visible = false;

        //onaylı yorumlar listesi
        SqlCommand komut = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=1", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        bgl.baglanti().Close();

        //onaysız yorumlar listesi
        SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=0", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
        bgl.baglanti().Close();
    }

    protected void btngoster_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void btnkapat_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void btnpanel4goster_Click1(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void btnpanel4gizle_Click1(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }
}