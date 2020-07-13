using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Pokedex_Claudio_RM06286
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if(pbCarrega.Value < 100)
            {
                pbCarrega.Value = pbCarrega.Value + 2;
            }else
            {
                timer1.Enabled = false;
                this.Visible = false;
                Form1 inicio = new Form1();
                inicio.ShowDialog();
            }
        }
    }
}
