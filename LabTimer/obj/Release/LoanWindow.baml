   M S B A M L   `   `   `  ���� C  ?LabTimer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:LabTimerLabTimer      LabTimer.Loan   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:LabTimer       � Title$  Lab Tracker�� � WindowState$ 	Maximized=� � WindowStyle$
 None=�$��1307.145��$��1752.628��.��� $��0,0,0,0q�����  j� Stretch$
 Fill=� �� ImageSource$ bg.jpg�� j� 
AlignmentX$ Center=� j� 
AlignmentY$ Center=� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � � ColumnDefinitions �� $��1* ��� $��2* �.+��� $
��Left=�$��1��$��0��$��2��$��	50,0,50,0q�$
��Wrap=�$����To check out equipment, fill in the form below, and find an administrator to confirm the the loan by entering their pin number. By entering your pin number, you agree to abide by the rules of the equipoment agreement. Laptops must be returned within 30 days, but may be checked back out after inspected.��$��Center=�$��24(�$
��Bold"��� $��Center=�$��0��$��2��$��	0,50,0,50q�$
��Wrap=�$��Equipment Loan��$	��Top=�$��80(�$
��Bold"��� $��Right=�$��2��$��0��$��0,50,0,0q�$��Center=�$��Student ID:��$��40(�$
��Bold"��� -   $��txtID��	 �� 	MaxLength$	 18��$
��Left=�$��2��$��1��$��	25,50,0,0q�
 �� TextAlignment$

 Left=�$��Center=�$��40(�$	��700���� $��Right=�$��3��$��0��$��0,25,0,0q�$��Center=�$��Equipment Type:��$��40(�$
��Bold"��� -   $��cmbEquipment�� �� DisplayMemberPath$
 name��$
��Left=�$��3��$��1��$��	25,25,0,0q�$��40(�$��Center=�$	��700���� $��Right=�$��4��$��0��$��0,25,0,0q�$��Center=�$��Serial Number:��$��40(�$
��Bold"��� -   $��	txtSerial��$
��Left=�$��4��$��1��$��	25,25,0,0q�$

 Left=�$��Center=�$��40(�$	��700���� $��Right=�$��5��$��0��$��0,25,0,0q�$��Center=�$��Tag Number:��$��40(�$
��Bold"��� -   $��txtTag��$
��Left=�$��5��$��1��$��	25,25,0,0q�$

 Left=�$��Center=�$��40(�$	��700���� $��Right=�$��6��$��0��$��0,25,0,0q�$��Center=�$��Notes:��$��40(�$
��Bold"��� -   $��txtNote��$
��Left=�$��6�� �� TextWrapping$
 Wrap=�$��1��$��	25,25,0,0q�$

 Left=�$��Center=�$��40(�$
��1000�� �� AcceptsReturn .  �� 	IsEnabled . �� $��Right=�$��7��$��0��$��0,25,0,0q�$��Center=�$��Student PIN:��$��40(�$
��Bold"�G� -   $��txtPin��$
��Left=�$��7��$��1��$��	25,25,0,0q�$��Center=�$��40(�$	��350���� $��Right=�$��8��$��0��$��0,25,0,0q�$��Center=�$��
Admin PIN:��$��40(�$
��Bold"�G� -   $��txtAdminPin��$
��Left=�$��8��$��1��$��	25,25,0,0q�$��Center=�$��40(�$	��350���� -   $��btnCheckOut��$��Center=�$��9��$��4��$��	0,25,0,25q�$��Check Out Item��$��40(�$��25,10q�
���/���
���   �$
��1000���� -	   $��	btnCancel��$��Center=�$��10��$��4��$��0,0,0,0q�$��Cancel��$��40(�$��25,10q�
���  ��$	��500��