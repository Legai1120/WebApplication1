using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNet
{
    public partial class _02Var : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<h1>Hellow World!!</h1>");

            //字串
            string var = "Hellow World!!";
            var = "abcde";
            var = "784512";
            Response.Write(var);

            //布林值
            bool aaa = true;

            //整數
            int a = 12345;  //32bit整數
            long b = 12345; //64bit整數
            short c = 12345; //16bit整數
            byte d = 1; //8bit正整數

            //浮點數
            float f = 123.123f; //32bit浮點數
            double g = 123.123; //64bit浮點數
            Response.Write(f);
            //變數命名原則
            //不可以用保留字
            //開頭必須是英文字母或底線
            //同一支程式區塊內,變數名稱不可以重複,大小寫視為不同

            //變數命名原則
            //使用有意義的名稱
            //使用匈牙利命名法
            string strStudentN0 = "123456789";
            int intNumber = 123;
        }
    }
}