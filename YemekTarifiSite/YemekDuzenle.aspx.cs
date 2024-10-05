using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YemekDuzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];

        if (Page.IsPostBack == false)
        {


            //kategori listesi
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtyemekad.Text = dr[1].ToString();
                txtyemekmalzeme.Text = dr[2].ToString();
                txtyemektarifi.Text = dr[3].ToString();
                DropDownList1.SelectedValue = dr[7].ToString();
            }
            bgl.baglanti().Close();
        }


    }

    protected void btnDuzenle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Tbl_Yemekler  set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4 where Yemekid=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", txtyemekad.Text);
        komut.Parameters.AddWithValue("@p2", txtyemekmalzeme.Text);
        komut.Parameters.AddWithValue("@p3", txtyemektarifi.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        txtyemekad.Text = "";
        txtyemekmalzeme.Text = "";
        txtyemektarifi.Text = "";
    }
}