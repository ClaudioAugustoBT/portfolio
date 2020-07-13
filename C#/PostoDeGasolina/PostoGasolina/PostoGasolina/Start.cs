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
    public partial class Start : Form
    {
        public Start()
        {
            InitializeComponent();
        }

        private void btn_ctrl_combustivel_Click(object sender, EventArgs e)
        {
            new Controle_Combustivel().Visible = true;
            this.Hide();
        }

        private void btn_ctrl_conveniencia_Click(object sender, EventArgs e)
        {
            new Controle_Conveniencia().Visible = true;
            this.Hide();
        }

        private void btn_ctrl_financeiro_Click(object sender, EventArgs e)
        {
            new Controle_Financeiro().Visible = true;
            this.Hide();
        }

        private void btn_v_conveniencia_Click(object sender, EventArgs e)
        {
            new Venda_Conveniencia().Visible = true;
            this.Hide();
        }

        private void btn_v_combustivel_Click(object sender, EventArgs e)
        {
            new Venda_Combustivel().Visible = true;
            this.Hide();
        }
    }
}
