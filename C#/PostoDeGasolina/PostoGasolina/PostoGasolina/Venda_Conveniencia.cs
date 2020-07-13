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
    public partial class Venda_Conveniencia : Form
    {
        public Venda_Conveniencia()
        {
            InitializeComponent();
        }

        private void btn_cancel_conveniencia_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            Start inicio = new Start();
            inicio.ShowDialog();
        }
    }
}
