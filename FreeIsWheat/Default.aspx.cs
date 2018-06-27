using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeIsWheat
{
    public partial class Default : System.Web.UI.Page
    {
        int num1 = 0;
        int num2 = 0;

        int answer = -34124612;

        int totalWheat = 0;
        clsSqlConnector sql = new clsSqlConnector();

        protected void Page_Load(object sender, EventArgs e)
        {
            String[] dbInfo = System.IO.File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + "/dbInfo.txt").Split(Environment.NewLine.ToCharArray()[0]);
            sql.Setup(dbInfo[0], dbInfo[1], dbInfo[1], dbInfo[2]);
            LongAd.Controls.Add(LoadControl("LongAdd.ascx"));

            if (!(IsPostBack))
            {
                getNewNumbers();
                lblWheatCount.Text = sql.GetSingleValue("EXEC getWheat");
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            answer = -34124612;
            Int32.TryParse(txtAnswer.Text, out answer);

            if (answer != -34124612)
            {
                if (Int32.Parse(lblFirstNumber.Text) * Int32.Parse(lblSecondNumber.Text) == answer)
                {
                    sql.Execute("EXEC addWheat");
                    lblCorrectIncorrect.ForeColor = Color.Green;
                    lblCorrectIncorrect.Text = "You were good boy and you did maths.";
                    lblCorrectIncorrect.Visible = true;
                    lblCorrectIncorrect.Visible = true;
                    //Good Boy
                }
                else
                {
                    lblCorrectIncorrect.ForeColor = Color.Red;
                    lblCorrectIncorrect.Text = "You STUPID";
                    lblCorrectIncorrect.Visible = true;
                    //Bad Boy
                }
            }

            getNewNumbers();
            txtAnswer.Focus();
            lblWheatCount.Text = sql.GetSingleValue("EXEC getWheat");
        }

        public void getNewNumbers()
        {
            txtAnswer.Text = "";
            Random r = new Random();
            num1 = r.Next(0, 12);
            num2 = r.Next(0, 12);

            lblFirstNumber.Text = num1.ToString();
            lblSecondNumber.Text = num2.ToString();

            answer = -34124612;
        }
    }
}