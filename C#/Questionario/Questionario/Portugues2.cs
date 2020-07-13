using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Questionario
{
    public partial class Portugues2 : Form
    {
        public Portugues2()
        {
            InitializeComponent();
        }

        private void btprl6_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex - 1;
        }

        private void btprl5_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex - 1;
        }

        private void btprl4_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex - 1;
        }

        private void btprl3_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex - 1;
        }

        private void btprl2_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex - 1;
        }

        private void btnrl1_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex + 1;
        }

        private void btnrl2_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex + 1;
        }

        private void btnrl3_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex + 1;
        }

        private void btnrl4_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex + 1;
        }

        private void btnrl5_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex + 1;
        }

        private void btnrl15_Click(object sender, EventArgs e)
        {
            Matematica proximo = new Matematica();
            proximo.Show();
            this.Hide();
        }
    }
}
