   M S B A M L   `   `   `  ����J  FWorkTimeTracker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WorkTimeTrackerWorkTimeTracker  5   	        WorkTimeTracker.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WorkTimeTracker     5   	     � Title$  Work Time Tracker��5   	   $	��400��6#   $	��600��60    � 
ResizeMode$ NoResize=�6<   $	��600��6R   $	��400��6a    � Icon$ 	timer.ico��6q    � TaskbarItemInfo 5	      *  $System.Windows.Shell.TaskbarItemInfo  5
   
   .��5      � ���#2C4251 � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6    � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��2* �6   �� 5      $��2* �6   �� 5      $��2* �6   �� 5      $��1* �6   .+�5   
   �� -   5         ��Name$ StartButton��5      $��2��6&   $��Start��6:   $��4��6J   ���#F0386B���	#FFA6B1E1$��Source Code Pro Semibold)�6�   $
��Bold"�6�   $��16(�6�   6�   �� 5   
   -   5        $ 
StopButton��5      $��2��6%   $
��Stop��69   $��2��6H   $��4��6X   ���#F0386B���	#FFA6B1E1$��Source Code Pro Semibold)�6�   $
��Bold"�6�   $��16(�6�   6�   �� 5   
   -   5         ��Name$ 	TimeLabel��5      $��00:00:00��6#   $��1��66   $��2��6F   $��2��6S   ���	#FFA6B1E1$��Center=�6�   $��Center=�6�   $��60(�6�   $��Source Code Pro Semibold)�6�   $
��Bold"�6  ��6g   Z� 6  �� 5   
   -   5         ��Name$ HistoryIcon��5      $��0��6%   $
��Left=�62   $3��-pack://siteoforigin:,,,/Resources/history.png��6M   	 K� ZIndex$	 1��6�   6�   �� 5   
   -   5        
 ��Name$
 RecentTimers��5      $y�Hidden=�6+   $��0��6?   $��4��6L   ���#BAA7B05      5!      5"      