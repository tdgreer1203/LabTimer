   M S B A M L   `   `   `  ����C  ?LabTimer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:LabTimerLabTimer  5   	       LabTimer.Loan   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:LabTimer     5   	     � Title$  Lab Tracker��5       � WindowState$ 	Maximized=�6%    � WindowStyle$
 None=�6=   $��1307.145��6P   $��1752.628��6b   .��5	      � $��0,0,0,0q�6   ��5
   
   �� 5       j� Stretch$
 Fill=�6    �� ImageSource$ bg.jpg��6(    j� 
AlignmentX$ Center=�6=    j� 
AlignmentY$ Center=�6Q    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,    � ColumnDefinitions 5   
   �� 5      $��1* �6   6,   �� 5      $��2* �6   6,   .+�5   
   �� $
��Left=�6   $��1��6/   $��0��6<   $��2��6L   $��	50,0,50,0q�6a   $
��Wrap=�6t   $����To check out equipment, fill in the form below, and find an administrator to confirm the the loan by entering their pin number. By entering your pin number, you agree to abide by the rules of the equipoment agreement. Laptops must be returned within 30 days, but may be checked back out after inspected.��6�   $��Center=�6�  $��24(�6�  $
��Bold"�6�  �� 5    
   $��Center=�6   $��0��61   $��2��6>   $��	0,50,0,50q�6S   $
��Wrap=�6f   $��Equipment Loan��6z   $	��Top=�6�   $��80(�6�   $
��Bold"�6�   �� 5"   
   $��Right=�6   $��2��60   $��0��6=   $��0,50,0,0q�6M   $��Center=�6_   $��Student ID:��6z   $��40(�6�   $
��Bold"�6�   �� 5#   
   -   5        $��txtID��5#      	 �� 	MaxLength$	 18��6   $
��Left=�6.   $��2��6I   $��1��6V   $��	25,50,0,0q�6f   
 �� TextAlignment$

 Left=�6y   $��Center=�6�   $��40(�6�   $	��700��6�   �� 5%   
   $��Right=�6   $��3��60   $��0��6=   $��0,25,0,0q�6M   $��Center=�6_   $��Equipment Type:��6z   $��40(�6�   $
��Bold"�6�   �� 5&   
   -   5        $��cmbEquipment��5&       �� DisplayMemberPath$
 name��6'   $
��Left=�6@   $��3��6[   $��1��6h   $��	25,25,0,0q�6x   $��40(�6�   $��Center=�6�   $	��700��6�   �� 5(   
   $��Right=�6   $��4��60   $��0��6=   $��0,25,0,0q�6M   $��Center=�6_   $��Serial Number:��6z   $��40(�6�   $
��Bold"�6�   �� 5)   
   -   5        $��	txtSerial��5)      $
��Left=�6#   $��4��6>   $��1��6K   $��	25,25,0,0q�6[   $

 Left=�6n   $��Center=�6�   $��40(�6�   $	��700��6�   �� 5+   
   $��Right=�6   $��5��60   $��0��6=   $��0,25,0,0q�6M   $��Center=�6_   $��Tag Number:��6z   $��40(�6�   $
��Bold"�6�   �� 5,   
   -   5        $��txtTag��5,      $
��Left=�6    $��5��6;   $��1��6H   $��	25,25,0,0q�6X   $

 Left=�6k   $��Center=�6�   $��40(�6�   $	��700��6�   �� 5.   
   $��Right=�6   $��6��60   $��0��6=   $��0,25,0,0q�6M   $��Center=�6_   $��Notes:��6z   $��40(�6�   $
��Bold"�6�   �� 5/   
   -   5        $��txtNote��5/      $
��Left=�6!   $��6��6<    �� TextWrapping$
 Wrap=�6I   $��1��6]   $��	25,25,0,0q�6m   $

 Left=�6�   $��Center=�6�   $��40(�6�   $
��1000��6�    �� AcceptsReturn .  �� 	IsEnabled . 6�   �� 51   
   $��Right=�6   $��7��60   $��0��6=   $��0,25,0,0q�6M   $��Center=�6_   $��Student PIN:��6z   $��40(�6�   $
��Bold"�6�   G� 52   
   -   5        $��txtPin��52      $
��Left=�6$   $��7��6?   $��1��6L   $��	25,25,0,0q�6\   $��Center=�6o   $��40(�6�   $	��350��6�   �� 54   
   $��Right=�6   $��8��60   $��0��6=   $��0,25,0,0q�6M   $��Center=�6_   $��
Admin PIN:��6z   $��40(�6�   $
��Bold"�6�   G� 55   
   -   5        $��txtAdminPin��55      $
��Left=�6)   $��8��6D   $��1��6Q   $��	25,25,0,0q�6a   $��Center=�6t   $��40(�6�   $	��350��6�   �� 57   
   -   5        $��btnCheckOut��57      $��Center=�6>   $��9��6[   $��4��6h   $��	0,25,0,25q�6|   $��Check Out Item��6�   $��40(�6�   $��25,10q�6�   
���/���
���   �$
��1000��6�   6  �� 58   
   -	   5        $��	btnCancel��58      $��Center=�6:   $��10��6W   $��4��6e   $��0,0,0,0q�6y   $��Cancel��6�   $��40(�6�   $��25,10q�6�   
���  ��$	��500��6�   6�   59      5:      