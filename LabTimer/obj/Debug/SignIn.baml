   M S B A M L   `   `   `  ����C  ?LabTimer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:LabTimerLabTimer  5   	       LabTimer.SignIn   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:LabTimer     5   	     � Title$  Lab Tracker��5       � WindowState$ 	Maximized=�6%    � WindowStyle$
 None=�6=   $��1307.145��6P   $��1752.628��6b   .��5	      � $��0,0,0,0q�6    +� FocusedElement 6   ��  �� ElementName$ txtFirst����5
   
   �� 5       j� Stretch$
 Fill=�6    �� ImageSource$ bg.jpg��6(    j� 
AlignmentX$ Center=�6=    j� 
AlignmentY$ Center=�6Q   	 � RowDefinitions	 5   
   �� 5      $��1* �6   6*   �� 5      $��1* �6   6*   �� 5      $��1* �6   6*   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   
 � ColumnDefinitions
 5   
   �� 5      $��1* �6   6,   �� 5      $��1* �6   6,   �� 5      $��1* �6   6,   �� 5      $��1* �6   6,   .+�5   
   �� $��Center=�6   $��0��61   $��4��6>   $��	0,50,0,50q�6S   $
��Wrap=�6f   $��Sign In/Out��6z   $��Center=�6�   $��80(�6�   $
��Bold"�6�   �� 5   
   $��Center=�6   $��1��61   $��4��6>   $
��0,50q�6R   $B��<To sign in, swipe your card or enter your student ID number.��6`   $	��top=�6�   $��40(�6�   $
��Bold"�6�   �� 5   
   -   5        $��txtFirst��5   !    �� 	MaxLength$ 18��6   $��4��61   $��Center=�6E    �� TextAlignment$ Center=�6b   $
��Auto��6y   $
��1000��6�   $��40(�6�   $��	0,50,0,50q�6�   $��1��6�    �� TextWrapping$
 Wrap=�6�   $�� ��6�   $��Center=�6�   $��15,0,0,0q�6�   �� 5    
   -   5        $��btnGo��5       $��Center=�63   $��Bottom=�6P   $��1��6k   $��4��6x   $��	0,50,0,50q�6�   $	��Go!��6�   $��50(�6�   $
��Bold"�6�   $��25,10q�6�   
���/���
���   �$	��750��6	  6  �� 5!   
   -   5        $��btnRegister��5!      $��Center=�6>   $	��Top=�6[   $��2��6s   $��2��6�   $��0,0,0,0q�6�   $��Register��6�   $��40(�6�   $��25,10q�6�   
��� ���$	��500��6�   6�   �� 5"   
   -   5        $��btnEdit��5"      $��Center=�66   $	��Top=�6S   $��2��6k   $��2��6x   $��2��6�   $��0,0,0,0q�6�   $��	Edit Info��6�   $��40(�6�   $��25,10q�6�   
����� �$	��500��6�   6�   �� 5#   
   -   5        $��btnEquipment��5#      $��Center=�6@   $��Center=�6]   $��2��6x   $��2��6�   $��0,0,0,0q�6�   $��Get Equipment��6�   $��40(�6�   $��25,10q�6�   
���"�"�$	��500��6�   6  �� 5$   
   -   5        $��btnEquipmentIn��5$      $��Center=�6D   $��Center=�6a   $��2��6|   $��2��6�   $��2��6�   $��0,0,0,0q�6�   $��Return Equipment��6�   $��40(�6�   $��25,10q�6�   
�������$	��500��6  6  5%      5&      