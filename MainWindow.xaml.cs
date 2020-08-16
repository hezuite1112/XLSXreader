using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace XMLLoader
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void selectButton_Click(object sender, RoutedEventArgs e)
        {
            FileInfo fileLocation = new FileInfo(fileBlock.Text);

            List<object[]> objectArrayList = new List<object[]>();

            ExcelPackage.LicenseContext = LicenseContext.NonCommercial;

            using (ExcelPackage package = new ExcelPackage(fileLocation))
            {
                ExcelWorksheet workSheet = package.Workbook.Worksheets.First();

                int columns = workSheet.Dimension.Columns;
                int rows = workSheet.Dimension.Rows;

                for (int row = 2; row <= rows; row++)
                {
                    var arrayObject = new object[columns];
                    for (int column = 1; column <= columns; column++)
                    {
                        arrayObject[column - 1] = workSheet.Cells[row, column].Value;
                    }
                    objectArrayList.Add(arrayObject);
                }
            }

            using (var db = new Wpf_exercisesEntities())
            {
                foreach (var row in objectArrayList)
                {
                    db.excercises.Add(new excercises()
                    {
                        first_column = Convert.ToInt32(row[0]),
                        second_column = Convert.ToInt32(row[1]),
                        thrid_column = Convert.ToInt32(row[2])
                    });
                }
                db.SaveChanges();
            }
            main1.Text = "Udało się! Dodano: " + objectArrayList.Count() + " pozycji!";
        }

        private void fileBlock_GotFocus(object sender, RoutedEventArgs e)
        {
            // Configure open file dialog box
            Microsoft.Win32.OpenFileDialog dlg = new Microsoft.Win32.OpenFileDialog();

            // Show open file dialog box
            Nullable<bool> result = dlg.ShowDialog();

            // Process open file dialog box results
            if (result == true)
            {
                // put adress into textbox
                fileBlock.Text = dlg.FileName;
            }
        }
    }
}
