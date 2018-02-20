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
    /// Interaction logic for SignIn.xaml
    /// </summary>
    public partial class SignIn : Window
    {

        TRiOAppEntities8 db = new TRiOAppEntities8();

        public SignIn()
        {
            InitializeComponent();
            txtFirst.Text = "";
        }

        private void btnRegister_Click(object sender, RoutedEventArgs e)
        {
            MainWindow registerWindow = new MainWindow();
            this.Close();
            registerWindow.ShowDialog();
        }

        private void btnGo_Click(object sender, RoutedEventArgs e)
        {
            if(string.IsNullOrWhiteSpace(txtFirst.Text))
            {
                //Do nothing, because the user didn't input anything.
            }
            else
            {
                bool isRegistered = db.Students.Where(x => x.studentnumber == txtFirst.Text || x.cardnumber == txtFirst.Text).Any();

                if(isRegistered)
                {
                    Student stu = new Student();
                    Session ses = new Session();

                    stu = db.Students.Where(x => x.studentnumber == txtFirst.Text || x.cardnumber == txtFirst.Text).First();

                    bool activeSession = db.Sessions.Where(x => x.studentID == stu.studentnumber && x.active == true).Any();

                    if(activeSession)
                    {
                        ses = db.Sessions.Where(x => x.studentID == stu.studentnumber && x.active == true).First();
                        var sessionDate = ses.date;
                        var sessionStateTime = ses.starttime;
                        var studentID = ses.studentID;
                        var kioskID = ses.kioskID;

                        Session ses2 = new Session();

                        ses2.kioskID = kioskID;
                        ses2.starttime = sessionStateTime;
                        ses2.date = sessionDate;
                        ses2.studentID = studentID;
                        ses2.endtime = DateTime.Now.TimeOfDay;
                        ses2.active = false;

                        db.Sessions.Remove(ses);
                        db.Sessions.Add(ses2);
                        db.SaveChanges();

                        txtFirst.Text = "";

                        UniversalSuccess us = new UniversalSuccess("Signed Out!", "You have been signed out.");
                        us.ShowDialog();
                    }
                    else
                    {
                        ses.studentID = stu.studentnumber;
                        ses.kioskID = 1;
                        ses.date = DateTime.Today.Date;
                        ses.starttime = DateTime.Now.TimeOfDay;
                        ses.endtime = DateTime.Now.TimeOfDay;
                        ses.active = true;

                        db.Sessions.Add(ses);
                        db.SaveChanges();

                        txtFirst.Text = "";

                        UniversalSuccess us = new UniversalSuccess("Signed In!", "You are now signed in.");
                        us.ShowDialog();
                    }
                }
                else
                {
                    MainWindow registerWindow = new MainWindow();
                    this.Close();
                    registerWindow.ShowDialog();
                }
            }
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            if(String.IsNullOrWhiteSpace(txtFirst.Text) || String.IsNullOrEmpty(txtFirst.Text))
            {
                UniversalError ue = new UniversalError("Uh-Oh!", "Please swipe your card or enter your student ID in first");
                ue.ShowDialog();
            }
            else
            {
                bool activeSession = db.Sessions.Where(x => x.studentID == txtFirst.Text && x.active == true).Any();

                if(activeSession)
                {
                    UniversalError ue = new UniversalError("Uh-Oh!", "You can't edit your information until you've signed out of the lab.");
                    ue.ShowDialog();
                }
                else
                {
                    Edit edit = new Edit(txtFirst.Text);
                    this.Close();
                    edit.ShowDialog();
                }
            }

        }

        private void btnEquipment_Click(object sender, RoutedEventArgs e)
        {
            if (String.IsNullOrWhiteSpace(txtFirst.Text) || String.IsNullOrEmpty(txtFirst.Text))
            {
                UniversalError ue = new UniversalError("Uh-Oh!", "Please swipe your card or enter your student ID in first");
                ue.ShowDialog();
            }
            else
            {
                Loan lw = new Loan(txtFirst.Text);
                this.Close();
                lw.ShowDialog();
            }
        }

        private void btnEquipmentIn_Click(object sender, RoutedEventArgs e)
        {
            if (String.IsNullOrWhiteSpace(txtFirst.Text) || String.IsNullOrEmpty(txtFirst.Text))
            {
                UniversalError ue = new UniversalError("Uh-Oh!", "Please swipe your card or enter your student ID in first.");
                ue.ShowDialog();
            }
            else
            {
                bool hasEquipment = db.Loans.Any(x => x.studentID == txtFirst.Text && x.active==true);

                if(hasEquipment)
                {
                    ReturnEquipment re = new ReturnEquipment(txtFirst.Text);
                    txtFirst.Text = "";
                    re.ShowDialog();
                }
                else
                {
                    UniversalError ue = new UniversalError("Uh-Oh", "We don't show that you have any equipment checked out.");
                    txtFirst.Text = "";
                    ue.ShowDialog();
                }
            }
        }
    }
}
