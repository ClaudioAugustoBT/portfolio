namespace Questionario
{
    partial class Inicio
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
            this.label_nome = new System.Windows.Forms.Label();
            this.label_rm = new System.Windows.Forms.Label();
            this.label_turma = new System.Windows.Forms.Label();
            this.txtNome = new System.Windows.Forms.TextBox();
            this.txtRM = new System.Windows.Forms.TextBox();
            this.rbTurma1DS2 = new System.Windows.Forms.RadioButton();
            this.rbTurma1DS3 = new System.Windows.Forms.RadioButton();
            this.btIniciar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label_nome
            // 
            this.label_nome.AutoSize = true;
            this.label_nome.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_nome.Location = new System.Drawing.Point(12, 24);
            this.label_nome.Name = "label_nome";
            this.label_nome.Size = new System.Drawing.Size(55, 16);
            this.label_nome.TabIndex = 0;
            this.label_nome.Text = "NOME:";
            // 
            // label_rm
            // 
            this.label_rm.AutoSize = true;
            this.label_rm.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold);
            this.label_rm.Location = new System.Drawing.Point(32, 53);
            this.label_rm.Name = "label_rm";
            this.label_rm.Size = new System.Drawing.Size(35, 16);
            this.label_rm.TabIndex = 1;
            this.label_rm.Text = "RM:";
            // 
            // label_turma
            // 
            this.label_turma.AutoSize = true;
            this.label_turma.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold);
            this.label_turma.Location = new System.Drawing.Point(214, 53);
            this.label_turma.Name = "label_turma";
            this.label_turma.Size = new System.Drawing.Size(62, 16);
            this.label_turma.TabIndex = 2;
            this.label_turma.Text = "TURMA:";
            // 
            // txtNome
            // 
            this.txtNome.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold);
            this.txtNome.Location = new System.Drawing.Point(73, 17);
            this.txtNome.Name = "txtNome";
            this.txtNome.Size = new System.Drawing.Size(319, 23);
            this.txtNome.TabIndex = 3;
            // 
            // txtRM
            // 
            this.txtRM.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold);
            this.txtRM.Location = new System.Drawing.Point(73, 46);
            this.txtRM.Name = "txtRM";
            this.txtRM.Size = new System.Drawing.Size(120, 23);
            this.txtRM.TabIndex = 4;
            // 
            // rbTurma1DS2
            // 
            this.rbTurma1DS2.AutoSize = true;
            this.rbTurma1DS2.Font = new System.Drawing.Font("Arial", 10F);
            this.rbTurma1DS2.Location = new System.Drawing.Point(282, 52);
            this.rbTurma1DS2.Name = "rbTurma1DS2";
            this.rbTurma1DS2.Size = new System.Drawing.Size(61, 20);
            this.rbTurma1DS2.TabIndex = 6;
            this.rbTurma1DS2.TabStop = true;
            this.rbTurma1DS2.Text = "1DS2";
            this.rbTurma1DS2.UseVisualStyleBackColor = true;
            // 
            // rbTurma1DS3
            // 
            this.rbTurma1DS3.AutoSize = true;
            this.rbTurma1DS3.Font = new System.Drawing.Font("Arial", 10F);
            this.rbTurma1DS3.Location = new System.Drawing.Point(282, 72);
            this.rbTurma1DS3.Name = "rbTurma1DS3";
            this.rbTurma1DS3.Size = new System.Drawing.Size(61, 20);
            this.rbTurma1DS3.TabIndex = 7;
            this.rbTurma1DS3.TabStop = true;
            this.rbTurma1DS3.Text = "1DS3";
            this.rbTurma1DS3.UseVisualStyleBackColor = true;

            // 
            // btIniciar
            // 
            this.btIniciar.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold);
            this.btIniciar.Location = new System.Drawing.Point(160, 125);
            this.btIniciar.Name = "btIniciar";
            this.btIniciar.Size = new System.Drawing.Size(100, 25);
            this.btIniciar.TabIndex = 8;
            this.btIniciar.Text = "INICIAR";
            this.btIniciar.UseVisualStyleBackColor = true;
            this.btIniciar.Click += new System.EventHandler(this.btIniciar_Click);
            // 
            // Inicio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.ClientSize = new System.Drawing.Size(404, 162);
            this.Controls.Add(this.btIniciar);
            this.Controls.Add(this.rbTurma1DS3);
            this.Controls.Add(this.rbTurma1DS2);
            this.Controls.Add(this.txtRM);
            this.Controls.Add(this.txtNome);
            this.Controls.Add(this.label_turma);
            this.Controls.Add(this.label_rm);
            this.Controls.Add(this.label_nome);
            this.MaximizeBox = false;
            this.Name = "Inicio";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label_nome;
        private System.Windows.Forms.Label label_rm;
        private System.Windows.Forms.Label label_turma;
        private System.Windows.Forms.TextBox txtNome;
        private System.Windows.Forms.TextBox txtRM;
        private System.Windows.Forms.RadioButton rbTurma1DS2;
        private System.Windows.Forms.RadioButton rbTurma1DS3;
        private System.Windows.Forms.Button btIniciar;
    }
}

