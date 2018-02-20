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
    /// Interaction logic for Edit.xaml
    /// </summary>
    public partial class Edit : Window
    {
        TRiOAppEntities8 db = new TRiOAppEntities8();
        Student stu;
        String studentID;

        public Edit(String id)
        {
            stu = db.Students.Where(x => x.studentnumber == id || x.cardnumber == id).First();

            studentID = stu.studentnumber;

            InitializeComponent();
            this.txtFirst.Text = stu.firstname.Trim();
            this.txtMI.Text = stu.middleinitial.Trim();
            this.txtLast.Text = stu.lastname.Trim();
            this.txtEmail.Text = stu.email.Trim();
            this.txtPhone.Text = stu.phone.Trim();
            this.txtID.Text = stu.studentnumber.Trim();
            this.txtCard.Text = stu.cardnumber.Trim();
            this.txtPIN.Password = stu.pinnumber.Trim();

            txtID.IsEnabled = false;
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            stu = db.Students.First(x => x.studentnumber == studentID);

            stu.firstname = this.txtFirst.Text.ToLower().Trim();
            stu.middleinitial = this.txtMI.Text.ToLower().Trim();
            stu.lastname = this.txtLast.Text.ToLower().Trim();
            stu.email = this.txtEmail.Text.ToLower().Trim();
            stu.phone = this.txtPhone.Text.ToLower().Trim();
            stu.cardnumber = this.txtCard.Text.ToLower().Trim();
            stu.pinnumber = this.txtPIN.Password.ToString();

            bool problem = false;

            if (db.Students.Where(x => x.email == stu.email && x.studentnumber != studentID).Any())
            {
                problem = true;
            }
            else if (!String.IsNullOrWhiteSpace(txtCard.Text))
            {
                if (db.Students.Where(x => x.cardnumber == stu.cardnumber && x.studentnumber != studentID).Any())
                    problem = true;
            }

            if (problem)
            {
                UniversalError ue = new UniversalError("Error!", "Some of the information you've entered is already associated with another account.");
                ue.ShowDialog();
            }
            else
            {
                db.SaveChanges();

                SignIn si = new SignIn();
                UniversalSuccess us = new UniversalSuccess("Yay!", "Your information has been saved.");
                us.ShowDialog();
                this.Close();
                si.Show();
            }
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            SignIn signIn = new SignIn();
            this.Close();
            signIn.ShowDialog();
        }
    }
}