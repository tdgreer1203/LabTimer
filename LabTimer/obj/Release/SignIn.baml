   M S B A M L   `   `   `  ���� C  ?LabTimer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:LabTimerLabTimer      LabTimer.SignIn   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:LabTimer       � Title$  Lab Tracker�� � WindowState$ 	Maximized=� � WindowStyle$
 None=�$��1307.145��$��1752.628��.��� $��0,0,0,0q� +� FocusedElement ��  �� ElementName$ txtFirst������  j� Stretch$
 Fill=� �� ImageSource$ bg.jpg�� j� 
AlignmentX$ Center=� j� 
AlignmentY$ Center=�	 � RowDefinitions	 �� $��1* ��� $��1* ��� $��1* ��� $
��Auto ��� $
��Auto �
 � ColumnDefinitions
 �� $��1* ��� $��1* ��� $��1* ��� $��1* �.+��� $��Center=�$��0��$��4��$��	0,50,0,50q�$
��Wrap=�$��Sign In/Out��$��Center=�$��80(�$
��Bold"��� $��Center=�$��1��$��4��$
��0,50q�$B��<To sign in, swipe your card or enter your student ID number.��$	��top=�$��40(�$
��Bold"��� -   $��txtFirst�� �� 	MaxLength$ 18��$��4��$��Center=� �� TextAlignment$ Center=�$
��Auto��$
��1000��$��40(�$��	0,50,0,50q�$��1�� �� TextWrapping$
 Wrap=�$�� ��$��Center=�$��15,0,0,0q��� -   $��btnGo��$��Center=�$��Bottom=�$��1��$��4��$��	0,50,0,50q�$	��Go!��$��50(�$
��Bold"�$��25,10q�
���/���
���   �$	��750���� -   $��btnRegister��$��Center=�$	��Top=�$��2��$��2��$��0,0,0,0q�$��Register��$��40(�$��25,10q�
��� ���$	��500���� -   $��btnEdit��$��Center=�$	��Top=�$��2��$��2��$��2��$��0,0,0,0q�$��	Edit Info��$��40(�$��25,10q�
����� �$	��500���� -   $��btnEquipment��$��Center=�$��Center=�$��2��$��2��$��0,0,0,0q�$��Get Equipment��$��40(�$��25,10q�
���"�"�$	��500���� -   $��btnEquipmentIn��$��Center=�$��Center=�$��2��$��2��$��2��$��0,0,0,0q�$��Return Equipment��$��40(�$��25,10q�
�������$	��500��