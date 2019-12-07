using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1
{
    public partial class A : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            BtnOpe.Text = "Suma";
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            BtnOpe.Text = "Resta";
            RadioButton1.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            BtnOpe.Text = "Multiplicacion";
            RadioButton2.Checked = false;
            RadioButton1.Checked = false;
            RadioButton4.Checked = false;
        }
        

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            BtnOpe.Text = "Division";

            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton1.Checked = false;
            
        }

        protected void BtnOpe_Click(object sender, EventArgs e)
        {
            string txtRES = "";
            double txtb1 = Convert.ToDouble(txt1.Text);
            double txtb2 = Convert.ToDouble(txt2.Text);

            if (BtnOpe.Text == "Suma")
            {
                txtRES = Suma(txtb1, txtb2).ToString();
            }
            else if (BtnOpe.Text == "Resta")
            {
                txtRES = Resta(txtb1, txtb2).ToString();

            }
            else if (BtnOpe.Text == "Multiplicacion")
            {
                txtRES = Multiplicacion(txtb1, txtb2).ToString();
            }
            else if (BtnOpe.Text == "Division")
            {
                txtRES = Division(txtb1,txtb2).ToString();
            }

            txtRes.Text = txtRES;
        }

        private double Division(double txt1, double txt2)
        {
            double res = txt1 / txt2;
            return res;
        }

        private double Multiplicacion(double txt1, double txt2)
        {
            double res = txt1 * txt2;
            return res;
        }

        private double Suma(double txt1, double txt2)
        {
            double res = txt1 + txt2;
            return res;
        }

        private double Resta(double txt1, double txt2)
        {
            double res = txt1 - txt2;
            return res;
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                

            }
            else if (RadioButton2.Checked)
            {
               

            }
            else if (RadioButton3.Checked)
            {
                
            }
            else if (RadioButton4.Checked)
            {
                
            }
        }
    }
}