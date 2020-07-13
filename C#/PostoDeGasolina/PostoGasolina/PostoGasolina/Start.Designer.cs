namespace PostoGasolina
{
    partial class Start
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
            this.label3 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btn_ctrl_conveniencia = new System.Windows.Forms.Button();
            this.btn_ctrl_financeiro = new System.Windows.Forms.Button();
            this.btn_ctrl_combustivel = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btn_v_conveniencia = new System.Windows.Forms.Button();
            this.btn_v_combustivel = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(73, 138);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(0, 17);
            this.label3.TabIndex = 2;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btn_ctrl_conveniencia);
            this.groupBox1.Controls.Add(this.btn_ctrl_financeiro);
            this.groupBox1.Controls.Add(this.btn_ctrl_combustivel);
            this.groupBox1.Location = new System.Drawing.Point(16, 169);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBox1.Size = new System.Drawing.Size(267, 144);
            this.groupBox1.TabIndex = 9;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "CONTROLES";
            // 
            // btn_ctrl_conveniencia
            // 
            this.btn_ctrl_conveniencia.Location = new System.Drawing.Point(8, 59);
            this.btn_ctrl_conveniencia.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btn_ctrl_conveniencia.Name = "btn_ctrl_conveniencia";
            this.btn_ctrl_conveniencia.Size = new System.Drawing.Size(251, 28);
            this.btn_ctrl_conveniencia.TabIndex = 1;
            this.btn_ctrl_conveniencia.Text = "PRODUTOS/CONVENIÊNCIA";
            this.btn_ctrl_conveniencia.UseVisualStyleBackColor = true;
            this.btn_ctrl_conveniencia.Click += new System.EventHandler(this.btn_ctrl_conveniencia_Click);
            // 
            // btn_ctrl_financeiro
            // 
            this.btn_ctrl_financeiro.Location = new System.Drawing.Point(8, 95);
            this.btn_ctrl_financeiro.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btn_ctrl_financeiro.Name = "btn_ctrl_financeiro";
            this.btn_ctrl_financeiro.Size = new System.Drawing.Size(251, 28);
            this.btn_ctrl_financeiro.TabIndex = 11;
            this.btn_ctrl_financeiro.Text = "FINANCEIRO";
            this.btn_ctrl_financeiro.UseVisualStyleBackColor = true;
            this.btn_ctrl_financeiro.Click += new System.EventHandler(this.btn_ctrl_financeiro_Click);
            // 
            // btn_ctrl_combustivel
            // 
            this.btn_ctrl_combustivel.Location = new System.Drawing.Point(8, 23);
            this.btn_ctrl_combustivel.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btn_ctrl_combustivel.Name = "btn_ctrl_combustivel";
            this.btn_ctrl_combustivel.Size = new System.Drawing.Size(251, 28);
            this.btn_ctrl_combustivel.TabIndex = 0;
            this.btn_ctrl_combustivel.Text = "COMBUSTÍVEIS";
            this.btn_ctrl_combustivel.UseVisualStyleBackColor = true;
            this.btn_ctrl_combustivel.Click += new System.EventHandler(this.btn_ctrl_combustivel_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btn_v_conveniencia);
            this.groupBox2.Controls.Add(this.btn_v_combustivel);
            this.groupBox2.Location = new System.Drawing.Point(16, 11);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBox2.Size = new System.Drawing.Size(267, 103);
            this.groupBox2.TabIndex = 10;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "CAIXA";
            // 
            // btn_v_conveniencia
            // 
            this.btn_v_conveniencia.Location = new System.Drawing.Point(8, 59);
            this.btn_v_conveniencia.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btn_v_conveniencia.Name = "btn_v_conveniencia";
            this.btn_v_conveniencia.Size = new System.Drawing.Size(251, 28);
            this.btn_v_conveniencia.TabIndex = 1;
            this.btn_v_conveniencia.Text = "VENDA CONVENIÊNCIA";
            this.btn_v_conveniencia.UseVisualStyleBackColor = true;
            this.btn_v_conveniencia.Click += new System.EventHandler(this.btn_v_conveniencia_Click);
            // 
            // btn_v_combustivel
            // 
            this.btn_v_combustivel.Location = new System.Drawing.Point(8, 23);
            this.btn_v_combustivel.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btn_v_combustivel.Name = "btn_v_combustivel";
            this.btn_v_combustivel.Size = new System.Drawing.Size(251, 28);
            this.btn_v_combustivel.TabIndex = 0;
            this.btn_v_combustivel.Text = "VENDA COMBUSTÍVEL";
            this.btn_v_combustivel.UseVisualStyleBackColor = true;
            this.btn_v_combustivel.Click += new System.EventHandler(this.btn_v_combustivel_Click);
            // 
            // Start
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(296, 342);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.label3);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "Start";
            this.Text = "Start";
            this.groupBox1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btn_ctrl_conveniencia;
        private System.Windows.Forms.Button btn_ctrl_financeiro;
        private System.Windows.Forms.Button btn_ctrl_combustivel;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btn_v_conveniencia;
        private System.Windows.Forms.Button btn_v_combustivel;
    }
}