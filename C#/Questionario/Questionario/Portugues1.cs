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
    public partial class Portugues1 : Form
    {
        public Portugues1()
        {
            InitializeComponent();
        }

        private void btnrl1_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex + 1;
        }

        private void btprl2_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex - 1;
        }

        private void btnrl2_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex + 1;
        }

        private void btprl7_Click(object sender, EventArgs e)
        {
            tRL.SelectedIndex = tRL.SelectedIndex - 1;
        }

        private void btnrl15_Click(object sender, EventArgs e)
        {
            Portugues2 proximo = new Portugues2();
            proximo.Show();
            this.Hide();
        }
    }
}
