﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using ClinicaFrba.DAO;
using System.Data.SqlClient;

using ClinicaFrba.src;

namespace ClinicaFrba
{
    static class Program
    {

        /// <summary>
        /// Punto de entrada principal para la aplicación.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.Run(new Login.Login());

        }

    }
}
