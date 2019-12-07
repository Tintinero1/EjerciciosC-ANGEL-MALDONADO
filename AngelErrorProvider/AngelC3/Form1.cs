using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AngelC3
{
    public partial class Form1 : Form
    {
        bool on_off = false;
        public Form1()
        {
            InitializeComponent();
        }

        private void BtnRes_Click(object sender, EventArgs e)
        {
            if (on_off == false)
            {
                if (txt1.Text == "" || txt2.Text == "")
                {
                    errorProvider1.SetError(txt1, "Ingresa un valor numerico");
                    errorProvider5.SetError(txt2, "Ingresa un valor numerico");
                    //MessageBox.Show("Ingresa un valor numerico en las cajas de Texto");
                }
                else
                {
                    string var1 = "";
                    double var2 = 0;
                    string res;

                    var1 = txt1.Text;
                    var2 = Convert.ToDouble(txt2.Text);

                    res = var1 + Convert.ToString(var2);

                    MessageBox.Show("Hiciste todo bien: \n" + res,"bien",MessageBoxButtons.OK,MessageBoxIcon.Asterisk);
                    
                    
                    
                    errorProvider1.Clear();
                    errorProvider5.Clear();
                    errorProvider6.Clear();




                }
            }
            else if (on_off)
            {
                errorProvider6.SetError(btnOn, "Encendiste el boton!");
            }
            
            
            
            
        }

        private void BtnOn_Click(object sender, EventArgs e)
        {
            
            
            if (on_off)
            {
                on_off = false;
                btnOn.Text = "Apagado";
                errorProvider4.SetError(btnOn, "Bien hecho chico!");
                errorProvider6.Clear();
            }
            else
            {
                on_off = true;
                btnOn.Text = "Encendido";
                errorProvider4.Clear();
            }
        }

        private void Txt1_TextChanged(object sender, EventArgs e)
        {
            if (txt1.Text != "")
            {
                errorProvider2.SetError(txt1, "Bien hecho!");
                errorProvider1.Clear();
            }
            else
                errorProvider2.Clear();
                
        }

        private void Txt2_TextChanged(object sender, EventArgs e)
        {
            if (txt2.Text != "")
            {
                errorProvider3.SetError(txt2, "Bien hecho!");
                errorProvider5.Clear();
            }
            else
                errorProvider3.Clear();

        }
    }
}
