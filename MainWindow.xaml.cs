using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Dummy_exe
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
        private void Window_Startup(object sender, StartupEventArgs e)
        {
            MainWindow wnd = new MainWindow();
        }
        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
    public partial class App : Application
    {

        private void Application_Startup(object sender, StartupEventArgs e)
        {
            // Create the startup window
            MainWindow wnd = new MainWindow();

            // Do stuff here, e.g. to the window
            wnd.Title = System.AppDomain.CurrentDomain.FriendlyName;

            if (e.Args.Length == 1)
            {
                wnd.textBlock.Text = "Dummy EXE for profile:\n\n " + e.Args[0];
            }
            else
            {
                wnd.textBlock.Text = "Dummy EXE for profile:\n\n Name not specified as parameter!";
            }
            // Show the window
            wnd.Show();
        }
    }
}
