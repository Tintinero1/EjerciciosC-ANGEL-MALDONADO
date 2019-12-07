using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AngelCEjemplo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void BtnDesplegar_Click(object sender, EventArgs e)
        {
            btnDesplegar.Text = "orange";

            MessageBox.Show("Hola como estas"," ", MessageBoxButtons.OKCancel);
            

            
            
        }
    }
}
