using System;
using System.Windows;
using System.Windows.Input;
using System.Threading;
using System.Threading.Tasks;

namespace WorkTimeTracker
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private ClockStatus clockStatus;
        public MainWindow()
        {
            InitializeComponent();
            clockStatus = new ClockStatus
            {
                Status = false
            };
        }

        private void CountTimeAndUpdateLabel(ClockStatus clockStatus)
        {
            DateTime startTime = DateTime.Now;
            clockStatus.Status = true;
            while (true)
            {
                lock (clockStatus)
                {
                    if (!clockStatus.Status)
                    {
                        break;
                    };
                }
                TimeSpan time = DateTime.Now - startTime;
                int h = time.Hours, m = time.Minutes;
                string hours = (h < 10) ? ("0" + h) : h.ToString();
                string minutes = (m < 10) ? ("0" + m) : m.ToString();
                Dispatcher.Invoke(() =>
                {
                    TimeLabel.Content = hours+":"+minutes; 
                    //TimeLabel.Content = time.ToString();
                });
            }

        }

        private async void StartButton_Click(object sender, RoutedEventArgs e)
        {
            await Task.Run(() =>
             {
                 CountTimeAndUpdateLabel(clockStatus);
             });
        }

        private void StopButton_Click(object sender, RoutedEventArgs e)
        {
            lock (clockStatus)
            {
                clockStatus.Status = false;
            }
        }

        private void HistoryIcon_MouseDown(object sender, MouseButtonEventArgs e)
        {
            RecentTimers.Visibility = (RecentTimers.Visibility == Visibility.Visible) ? Visibility.Hidden : Visibility.Visible;
        }
    }
}
