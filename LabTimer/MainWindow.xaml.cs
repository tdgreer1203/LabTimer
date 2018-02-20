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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LabTimer
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

        TRiOAppEntities8 db = new TRiOAppEntities8();
        Student stu = new Student();
        bool alreadyRegistered = false;

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtFirst.Text) || txtFirst.Text == "REQUIRED")
            {
                txtFirst.Background = Brushes.LightPink;
                txtFirst.Text = "REQUIRED";
            }
            else if (string.IsNullOrWhiteSpace(txtLast.Text) || txtLast.Text == "REQUIRED")
            {
                txtLast.Background = Brushes.LightPink;
                txtLast.Text = "REQUIRED";
            } 
            else if (string.IsNullOrWhiteSpace(txtEmail.Text) || txtEmail.Text == "REQUIRED")
            {
                txtEmail.Background = Brushes.LightPink;
                txtEmail.Text = "REQUIRED";
            }                
            else if (string.IsNullOrWhiteSpace(txtID.Text) || txtID.Text == "REQUIRED")
            {
                txtID.Background = Brushes.LightPink;
                txtID.Text = "REQUIRED";
            }               
            else if (string.IsNullOrWhiteSpace(txtPIN.Password.ToString()))
            {
                txtPIN.Background = Brushes.LightPink;
            }    
            else
            {
                alreadyRegistered = false;

                if (db.Students.Where(x => x.studentnumber == txtID.Text).Any())
                {
                    alreadyRegistered = true;
                }
                else if (db.Students.Where(x => x.email == txtEmail.Text).Any())
                {
                    alreadyRegistered = true;
                }
                else if (!String.IsNullOrWhiteSpace(txtCard.Text))
                {
                    if(db.Students.Where(x => x.cardnumber == txtCard.Text).Any())
                        alreadyRegistered = true;
                }

                if(alreadyRegistered)
                {
                    UniversalError ue = new UniversalError("Error!", "Some of the information you included is already associated with another account.");
                    ue.ShowDialog();
                }
                else
                {
                    stu = new Student();

                    stu.firstname = txtFirst.Text.ToLower().Trim();
                    stu.lastname = txtLast.Text.ToLower().Trim();
                    stu.middleinitial = txtMI.Text.ToLower().Trim();
                    stu.email = txtEmail.Text.ToLower().Trim();
                    stu.phone = txtPhone.Text.Trim();
                    stu.studentnumber = txtID.Text.Trim();
                    stu.cardnumber = txtCard.Text.Trim();
                    stu.pinnumber = txtPIN.Password.ToString().Trim();

                    db.Students.Add(stu);
                    db.SaveChanges();

                    txtFirst.Text = "";
                    txtMI.Text = "";
                    txtLast.Text = "";
                    txtMI.Text = "";
                    txtEmail.Text = "";
                    txtPhone.Text = "";
                    txtID.Text = "";
                    txtCard.Text = "";
                    txtPIN.Clear();

                    txtFirst.Background = Brushes.White;
                    txtLast.Background = Brushes.White;
                    txtEmail.Background = Brushes.White;
                    txtID.Background = Brushes.White;
                    txtPIN.Background = Brushes.White;

                    UniversalSuccess us = new UniversalSuccess("Account Created!", "To sign in, enter your student number or card number on the home screen.");
                    SignIn signIn = new SignIn();
                    us.ShowDialog();
                    this.Close();
                    signIn.ShowDialog();
                }
            }
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            SignIn signInWindow = new SignIn();
            this.Close();
            signInWindow.ShowDialog();
        }
    }
}
