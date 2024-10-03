using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    void kategoriler()
    {
        SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriler();

        Panel2.Visible = false;
        Panel4.Visible = false;
    }

    protected void btngoster_Click(object sender, EventArgs e)
    {
        Panel2.Visible=true;
    }

    protected void btnkapat_Click(object sender, EventArgs e)
    {
        Panel2.Visible=false;
    }

    protected void btnpanel4goster_Click(object sender, EventArgs e)
    {
        Panel4.Visible=true;
    }

    protected void btnpanel4gizle_Click(object sender, EventArgs e)
    {
        Panel4.Visible=false;
    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", txtkategoriad.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        kategoriler();
        txtkategoriad.Text = "";
        
    }
}