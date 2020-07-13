using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PostoGasolina
{
    public partial class SplashScreen : Form
    {
        public SplashScreen()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (pbCarrega.Value < 100)
            {
                pbCarrega.Value = pbCarrega.Value + 2;
            }
            else
            {
                timer1.Enabled = false;
                this.Visible = false;
                Form1 inicio = new Form1();
                inicio.ShowDialog();
            }
        }

       
    }
}
