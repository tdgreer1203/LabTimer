   M S B A M L   `   `   `  ���� C  ?LabTimer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:LabTimerLabTimer      LabTimer.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:LabTimer       � Title$  Lab Tracker�� � WindowState$ 	Maximized=� � WindowStyle$
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
��Auto � � ColumnDefinitions �� $��1* ��� $��2* �.+��� $��Center=�$��0��$��2��$��	0,50,0,50q�$
��Wrap=�$��Register��$	��Top=�$��80(�$
��Bold"��� $��Right=�$��1��$��0��$
��0,10q�$��*First Name:��$��Center=�$��40(�$
��Bold"��� $��Right=�$��2��$��0��$
��0,10q�$��Middle Initial:��$��Center=�$��40(�$
��Bold"��� $��Right=�$��3��$��0��$
��0,10q�$��*Last Name:��$��Center=�$��40(�$
��Bold"��� $��Right=�$��4��$��0��$
��0,10q�$��*Email:��$��Center=�$��40(�$
��Bold"��� $��Right=�$��5��$��0��$
��0,10q�$��Phone:��$��Center=�$��40(�$
��Bold"��� $��Right=�$��6��$��0��$
��0,10q�$��*Student ID Number:��$��Center=�$��40(�$
��Bold"��� $��Right=�$��7��$��0��$
��0,10q�$��Card Number:��$��Center=�$��40(�$
��Bold"��� $��Right=�$��8��$��0��$
��0,10q�$��*PIN Number:��$��Center=�$��40(�$
��Bold"��� -   $��txtFirst��	 �� 	MaxLength$	 20��$��1��$
��Left=�$
��Auto��$	��700��$��40(�$��20,0,0,0q�$��1��
 �� TextWrapping$

 Wrap=�$�� ��$��Center=�$��15,0,0,0q��� -   $��txtMI��$	 1��$��1��$
��Left=�$
��Auto��$	��200��$��40(�$��20,0,0,0q�$��2��$

 Wrap=�$�� ��$��Center=�$��15,0,0,0q��� -   $��txtLast��$	 20��$��1��$
��Left=�$
��Auto��$	��700��$��40(�$��20,0,0,0q�$��3��$

 Wrap=�$�� ��$��Center=�$��15,0,0,0q��� -   $��txtEmail��$	 50��$��1��$
��Left=�$
��Auto��$	��700��$��40(�$��20,0,0,0q�$��4��$

 Wrap=�$�� ��$��Center=�$��15,0,0,0q��� -   $��txtPhone��$	 12��$��1��$
��Left=�$
��Auto��$	��700��$��40(�$��20,0,0,0q�$��5��$

 Wrap=�$�� ��$��Center=�$��15,0,0,0q��� -   $��txtID��$	 12��$��1��$
��Left=�$
��Auto��$	��700��$��40(�$��20,0,0,0q�$��6��$

 Wrap=�$�� ��$��Center=�$��15,0,0,0q��� -   $��txtCard��$	 18��$��1��$
��Left=�$
��Auto��$	��700��$��40(�$��20,0,0,0q�$��7��$

 Wrap=�$�� ��$��Center=�$��15,0,0,0q�G� -   $��txtPIN�� G� 	MaxLength$ 4��$��1��$
��Left=�$
��Auto��$	��200��$��40(�$��20,0,0,0q�$��8��$��Center=�$��15,0,0,0q��� -	   $��Center=�$��9��$��2��$��	0,50,0,25q�$��Submit��$��40(�$��25,10q�
���/���
���   �$
��1000���� -
   $��	btnCancel��$��Center=�$��10��$��2��$��0,0,0,0q�$��Cancel��$��40(�$��25,10q�
���  ��$	��500��