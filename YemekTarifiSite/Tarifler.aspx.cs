using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Tarifler : System.Web.UI.Page
{
     sqlsinif bgl=new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;
       
        SqlCommand komut = new SqlCommand("select * from Tbl_Tarifler where TarifDurum=0", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        SqlCommand komut2 = new SqlCommand("select * from Tbl_Tarifler where TarifDurum=1", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();

    }

    protected void btngoster_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void btnkapat_Click(object sender, EventArgs e)
    {
        Panel2.Visible=false;
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