﻿namespace ClinicaFrba.Cancelar_Atencion
{
    partial class CancelarTurnoProfesional
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.VolverButton = new System.Windows.Forms.Button();
            this.CancelarTurnosButton = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.DiasACancelarCalendar = new System.Windows.Forms.MonthCalendar();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.VolverButton);
            this.groupBox1.Controls.Add(this.CancelarTurnosButton);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.DiasACancelarCalendar);
            this.groupBox1.Location = new System.Drawing.Point(13, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(332, 294);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            // 
            // VolverButton
            // 
            this.VolverButton.BackColor = System.Drawing.Color.IndianRed;
            this.VolverButton.Location = new System.Drawing.Point(217, 249);
            this.VolverButton.Name = "VolverButton";
            this.VolverButton.Size = new System.Drawing.Size(105, 30);
            this.VolverButton.TabIndex = 9;
            this.VolverButton.Text = "Volver";
            this.VolverButton.UseVisualStyleBackColor = false;
            this.VolverButton.Click += new System.EventHandler(this.VolverButton_Click_1);
            // 
            // CancelarTurnosButton
            // 
            this.CancelarTurnosButton.Location = new System.Drawing.Point(98, 249);
            this.CancelarTurnosButton.Name = "CancelarTurnosButton";
            this.CancelarTurnosButton.Size = new System.Drawing.Size(105, 30);
            this.CancelarTurnosButton.TabIndex = 1;
            this.CancelarTurnosButton.Text = "Cancelar Turno/s";
            this.CancelarTurnosButton.UseVisualStyleBackColor = true;
            this.CancelarTurnosButton.Click += new System.EventHandler(this.CancelarTurnosButton_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(104, 29);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(119, 18);
            this.label4.TabIndex = 8;
            this.label4.Text = "Seleccione Día/s";
            // 
            // DiasACancelarCalendar
            // 
            this.DiasACancelarCalendar.Location = new System.Drawing.Point(67, 56);
            this.DiasACancelarCalendar.Name = "DiasACancelarCalendar";
            this.DiasACancelarCalendar.TabIndex = 7;
            // 
            // CancelarTurnoProfesional
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(357, 314);
            this.Controls.Add(this.groupBox1);
            this.Name = "CancelarTurnoProfesional";
            this.Text = "Cancelar Turno de un dia";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button CancelarTurnosButton;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.MonthCalendar DiasACancelarCalendar;
        private System.Windows.Forms.Button VolverButton;
    }
}