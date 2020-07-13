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
    public partial class Controle_Financeiro : Form
    {
        public Controle_Financeiro()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            Start inicio = new Start();
            inicio.ShowDialog();
        }
    }
}
