namespace PostoGasolina
{
    partial class Venda_Combustivel
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.btn_confirm_combustivel = new System.Windows.Forms.Button();
            this.btn_cancel_combustivel = new System.Windows.Forms.Button();
            this.txb_cod_bomba = new System.Windows.Forms.TextBox();
            this.txb_combustivel = new System.Windows.Forms.TextBox();
            this.txb_preco_litro = new System.Windows.Forms.TextBox();
            this.txb_qtd_litro = new System.Windows.Forms.TextBox();
            this.txb_total_combustivel = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(16, 20);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(139, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "CÓDIGO DA BOMBA";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(49, 52);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(105, 17);
            this.label2.TabIndex = 1;
            this.label2.Text = "COMBUSTIVEL";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(56, 110);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(102, 17);
            this.label3.TabIndex = 2;
            this.label3.Text = "QTD (LITROS)";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(75, 78);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(79, 17);
            this.label4.TabIndex = 3;
            this.label4.Text = "R$ / LITRO";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(73, 142);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(86, 17);
            this.label5.TabIndex = 4;
            this.label5.Text = "TOTAL (R$)";
            // 
            // btn_confirm_combustivel
            // 
            this.btn_confirm_combustivel.Location = new System.Drawing.Point(87, 229);
            this.btn_confirm_combustivel.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btn_confirm_combustivel.Name = "btn_confirm_combustivel";
            this.btn_confirm_combustivel.Size = new System.Drawing.Size(181, 28);
            this.btn_confirm_combustivel.TabIndex = 5;
            this.btn_confirm_combustivel.Text = "CONFIRMAR VENDA";
            this.btn_confirm_combustivel.UseVisualStyleBackColor = true;
            // 
            // btn_cancel_combustivel
            // 
            this.btn_cancel_combustivel.Location = new System.Drawing.Point(125, 279);
            this.btn_cancel_combustivel.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btn_cancel_combustivel.Name = "btn_cancel_combustivel";
            this.btn_cancel_combustivel.Size = new System.Drawing.Size(100, 28);
            this.btn_cancel_combustivel.TabIndex = 6;
            this.btn_cancel_combustivel.Text = "CANCELAR";
            this.btn_cancel_combustivel.UseVisualStyleBackColor = true;
            this.btn_cancel_combustivel.Click += new System.EventHandler(this.btn_cancel_combustivel_Click);
            // 
            // txb_cod_bomba
            // 
            this.txb_cod_bomba.Location = new System.Drawing.Point(168, 16);
            this.txb_cod_bomba.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txb_cod_bomba.Name = "txb_cod_bomba";
            this.txb_cod_bomba.Size = new System.Drawing.Size(132, 22);
            this.txb_cod_bomba.TabIndex = 7;
            // 
            // txb_combustivel
            // 
            this.txb_combustivel.Location = new System.Drawing.Point(168, 48);
            this.txb_combustivel.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txb_combustivel.Name = "txb_combustivel";
            this.txb_combustivel.Size = new System.Drawing.Size(132, 22);
            this.txb_combustivel.TabIndex = 8;
            // 
            // txb_preco_litro
            // 
            this.txb_preco_litro.Location = new System.Drawing.Point(168, 78);
            this.txb_preco_litro.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txb_preco_litro.Name = "txb_preco_litro";
            this.txb_preco_litro.Size = new System.Drawing.Size(132, 22);
            this.txb_preco_litro.TabIndex = 9;
            // 
            // txb_qtd_litro
            // 
            this.txb_qtd_litro.Location = new System.Drawing.Point(168, 110);
            this.txb_qtd_litro.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txb_qtd_litro.Name = "txb_qtd_litro";
            this.txb_qtd_litro.Size = new System.Drawing.Size(132, 22);
            this.txb_qtd_litro.TabIndex = 10;
            // 
            // txb_total_combustivel
            // 
            this.txb_total_combustivel.Location = new System.Drawing.Point(168, 142);
            this.txb_total_combustivel.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txb_total_combustivel.Name = "txb_total_combustivel";
            this.txb_total_combustivel.Size = new System.Drawing.Size(132, 22);
            this.txb_total_combustivel.TabIndex = 11;
            // 
            // Venda_Combustivel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(379, 322);
            this.Controls.Add(this.txb_total_combustivel);
            this.Controls.Add(this.txb_qtd_litro);
            this.Controls.Add(this.txb_preco_litro);
            this.Controls.Add(this.txb_combustivel);
            this.Controls.Add(this.txb_cod_bomba);
            this.Controls.Add(this.btn_cancel_combustivel);
            this.Controls.Add(this.btn_confirm_combustivel);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "Venda_Combustivel";
            this.Text = "Venda Combustivel";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btn_confirm_combustivel;
        private System.Windows.Forms.Button btn_cancel_combustivel;
        private System.Windows.Forms.TextBox txb_cod_bomba;
        private System.Windows.Forms.TextBox txb_combustivel;
        private System.Windows.Forms.TextBox txb_preco_litro;
        private System.Windows.Forms.TextBox txb_qtd_litro;
        private System.Windows.Forms.TextBox txb_total_combustivel;
    }
}