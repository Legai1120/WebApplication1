using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASPNet
{
    public partial class _25ADOnet_SqlDataAdapter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MySystemConnectionString1"].ConnectionString);//"重要!!!"//
            SqlDataAdapter da = new SqlDataAdapter("select * from products2", Conn);//"重要!!!"//

            DataSet ds = new DataSet();
            da.Fill(ds,"products");

            GridView gv = new GridView();
            gv.DataSource = ds;
            gv.DataBind();

            form1.Controls.Add(gv);

            // 修改dataset裡的某筆資料 (只有再 DataSet 裡修改)
            ds.Tables["products"].Rows[7]["product_Name"] = "111111Chef Topf薔薇系列不沾鍋 - 28公分炒鍋+28公分";
            ds.Tables["products"].Rows[7]["product_price"] = "123456";

            // 新增一筆資料進 dataset
            DataRow dr = ds.Tables["products"].NewRow();
            dr[0] = "P011";
            dr[1] = "mmmmmmmmmmmm";
            dr[2] = "P011.jpg";
            dr[3] = 123;
            dr[4] = 100;
            dr[5] = "rrrrrrrrrrr";
            dr[6] = 1;

            ds.Tables["products"].Rows.Add(dr);

            //刪除DataSet裡的資料
            ds.Tables["products"].Rows[5].Delete();

            try
            {
                SqlCommandBuilder myUpdate = new SqlCommandBuilder(da);
                da.Update(ds, "products");
            }
            catch(Exception ex)
            {
                Response.Write("沒有成功,原因" + ex.Message);
            }
        }
    }
}