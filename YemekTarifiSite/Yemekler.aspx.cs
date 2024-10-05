using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Yemekler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    string islem = "";


    void yemeklistesi()
    {
        //yemek listesi
        SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        bgl.baglanti().Close();

    }
    protected void Page_Load(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Panel4.Visible = false;

        if (Page.IsPostBack == false)
        {

            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];

            //kategori listesi
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }

        yemeklistesi();

        //silme işlemi
        if (islem == "sil")
        {

            SqlCommand komutsil = new SqlCommand("delete  from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

    }

    protected void btngoster_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void btnkapat_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void btnpanel4goster_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void btnpanel4gizle_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", txtyemekad.Text);
        komut.Parameters.AddWithValue("@p2", txtyemekmalzeme.Text);
        komut.Parameters.AddWithValue("@p3", txtyemektarifi.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        yemeklistesi();
        txtyemekad.Text = "";
        txtyemekmalzeme.Text = "";
        txtyemektarifi.Text = "";
    }
}