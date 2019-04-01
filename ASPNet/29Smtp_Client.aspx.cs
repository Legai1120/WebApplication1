using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
namespace ASPNet
{
    public partial class _29Smtp_Client : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SmtpClient myMail = new SmtpClient("smtp.gmail.com",587);
            myMail.Credentials = new NetworkCredential("legai19821120@gmail.com", "liviagaby202411");
            myMail.EnableSsl = true;

            //純文字
            //string from = "legai19821120@gmail.com";
            //string to = "ppcay@hotmail.com";
            //string subject = "邀請您一同來參加晚上派對!!";
            //string body = "哈囉\n我愛妳喔!!!";
            //myMail.Send(from, to, subject, body);

            MailAddress from = new MailAddress("legai19821120@gmail.com", "liviagaby202411");
            MailAddress to = new MailAddress("ppcay@hotmail.com");
            MailMessage Msg = new MailMessage(from, to);
            Msg.Subject = "邀請妳一同來參加晚上派對!!";
            Msg.Body = "哈囉\n我愛妳喔!!!";      //可以拉入圖片
            Msg.IsBodyHtml = true;

            myMail.Send(Msg);
        }
    }
}