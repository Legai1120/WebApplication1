﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNet
{
    public partial class _03Statement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int a = 10; //宣告變數初始化
            a = 20; //指定運算 a=20
            a = a + 10; //加法運算,指定運算 a=30
            a += 10; //加法運算,指定運算 a=40 (a=30+10)
            a -= 15; //減法運算,指定運算 a=25 (a=a-15  a=40-15)
            a *= 10; // a=250
            a /= 25; // a=10 (250/25)

            a = a + 1; // a=11
            a += 1; // a=12
            a++; // a=13
            //Response.Write("a=" + a);
            ///////////////////////////////

            //浮點數問題-超過可以表示位數
            int x = 123, y = 456;
            float z = 12.14567f;
            float result = 0;
            result = x + z;
            //Response.Write(result);

            //浮點數問題-失去精準度
            float xx = 10000.8f;
            double yy = 999.3;
            Response.Write(xx - yy);

        }
    }
}