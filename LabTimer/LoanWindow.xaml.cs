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
    /// Interaction logic for Loan.xaml
    /// </summary>
    public partial class Loan : Window
    {
        TRiOAppEntities8 db = new TRiOAppEntities8();
        List<EquipmentType> equipment;
        Student stu = new Student();

        public Loan(string id)
        {
            InitializeComponent();
            txtID.Text = id.Trim();
            equipment = db.EquipmentTypes.ToList();
            cmbEquipment.ItemsSource = equipment;
            txtID.IsEnabled = false;
        }

        public Loan()
        {

        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            SignIn signIn = new SignIn();
            this.Close();
            signIn.ShowDialog();
        }

        private void btnCheckOut_Click(object sender, RoutedEventArgs e)
        {
            if(String.IsNullOrWhiteSpace(txtID.Text))
            {
                txtID.Background = Brushes.LightPink;
            }
            else if(String.IsNullOrWhiteSpace(cmbEquipment.Text))
            {
                cmbEquipment.Background = Brushes.LightPink;
            }
            else if(String.IsNullOrWhiteSpace(txtPin.Password.ToString()))
            {
                txtPin.Background = Brushes.LightPink;
            }
            else if(String.IsNullOrWhiteSpace(txtAdminPin.Password.ToString()))
            {
                txtAdminPin.Background = Brushes.LightPink;
            }
            else
            {
                Student stu = new Student();
                bool isConfirmed = false;

                stu = db.Students.Where(x => x.studentnumber == txtID.Text || x.cardnumber == txtID.Text).First();

                if(txtPin.Password.ToString() != stu.pinnumber)
                {
                    UniversalError ue = new UniversalError("Error!", "This is not the correct pin number for " + stu.firstname + "'s account.");
                    ue.ShowDialog();
                    txtPin.Background = Brushes.LightPink;
                }
                else
                {
                    isConfirmed = db.Admins.Where(x => x.pin == txtAdminPin.Password.ToString()).Any();

                    if(!isConfirmed)
                    {
                        UniversalError ue = new UniversalError("Error!", "The Admin's password is incorrect.");
                        ue.ShowDialog();
                        txtAdminPin.Background = Brushes.LightPink;
                    }
                    else
                    {
                        //Create a new loan here and add it to the database.
                        Loan loan = new Loan(stu.studentnumber);
                        loan.studentID = stu.studentnumber;
                        loan.description = txtNote.Text;
                        loan.tagnumber = txtTag.Text;
                        loan.loandate = DateTime.Today.Date;
                        loan.serialnumber = txtSerial.Text;
                        loan.equipmenttype = cmbEquipment.Text;
                        loan.active = true;

                        db.Loans.Add(loan);
                        db.SaveChanges();

                        SignIn pop = new SignIn();
                        UniversalSuccess us = new UniversalSuccess("Success!", "The item has been checked out.");
                        us.ShowDialog();
                        this.Close();
                        pop.Show();
                    }
                }
            }
        }
    }
}
