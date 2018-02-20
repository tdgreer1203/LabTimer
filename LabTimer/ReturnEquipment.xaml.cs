using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace LabTimer
{
    /// <summary>
    /// Interaction logic for ReturnEquipment.xaml
    /// </summary>
    public partial class ReturnEquipment : Window
    {
        TRiOAppEntities8 db = new TRiOAppEntities8();
        string studentId;

        public ReturnEquipment(string id)
        {
            InitializeComponent();
            studentId = id;
            List<Loan> equipment = new List<Loan>();
            equipment = db.Loans.Where(x => x.studentID == id && x.active == true).ToList();
            gridEquipment.ItemsSource = equipment;
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnReturn_Click(object sender, RoutedEventArgs e)
        {
            bool isConfirmed = db.Admins.Where(x => x.pin == txtPIN.Password.ToString()).Any();
            int recordID;
            bool isRecord;

            if(string.IsNullOrWhiteSpace(txtID.Text))
            {
                txtID.Background = Brushes.LightPink;
                UniversalError ue = new UniversalError("Error!", "Please enter the ID of the record that's being returned");
                ue.ShowDialog();
            }
            else
            {
                recordID = Int32.Parse(txtID.Text);
                isRecord = db.Loans.Where(x => x.id == recordID && x.studentID == studentId).Any();

                if (!isRecord)
                {
                    UniversalError ue = new UniversalError("Error!", "Either that's an invalid record ID, or that record doesn't belong to this student.");
                    ue.ShowDialog();
                }
                else
                {
                    if (!isConfirmed)
                    {
                        txtPIN.Background = Brushes.LightPink;
                        UniversalError ue = new UniversalError("Error!", "The Admin's password is incorrect.");
                        ue.ShowDialog();
                    }
                    else
                    {
                        Loan ln = db.Loans.Where(x => x.id == recordID).First();
                        ln.active = false;
                        db.SaveChanges();
                        UniversalSuccess us = new UniversalSuccess("Success!", "The item has been returned.");
                        us.ShowDialog();
                        this.Close();
                    }
                }
            }
        }
    }
}
