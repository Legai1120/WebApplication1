using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNet
{
    public partial class _10WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.Text = "STOP";
            Button1.Font.Size = FontUnit.Point(38);
            Button2.Text = "就叫你別按吧!!!!";
            Button1.BackColor = System.Drawing.Color.Yellow;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button2.Text = "幹嘛按我";
            Button2.Font.Size = FontUnit.Point(40);
            Button1.Text = "你幹嘛按他!!!!";
        }
    }
}