   M S B A M L   `   `   `  ����C  ?LabTimer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:LabTimerLabTimer  5   	       LabTimer.ReturnEquipment   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:LabTimer     5   	     � Title$  Equipment Return��5      $	��400��6*   $	��800��67   .��5	      � ��5
   
   �� 5       j� Stretch$ Uniform=�6    �� ImageSource$ triologo.png��6+    j� 
AlignmentX$ Center=�6F    j� 
AlignmentY$ Center=�6Z    � RowDefinitions 5   
   �� 5      $��1* �6   6*   �� 5      $��1* �6   6*   �� 5      $��1* �6   6*   �� 5      $��1* �6   6*    � ColumnDefinitions 5   
   �� 5      $��1* �6   6,   �� 5      $��1* �6   6,   .+�5   
   �� $��2��6   $��Center=�6(   $��0,0,0,0q�6E   $��0��6V   $
��Wrap=�6c   $��Equipment Return��6w   $	��Top=�6�   $��40(�6�   $
��Bold"�6�   �� 5   
   $��2��6   $��Center=�6(   $��
40,58,39,0q�6E   $
��Wrap=�6Y   $i��cSelect the item you are returning, and have an administrator input their PIN to confirm the return.��6m   $��22(�6�   $��Medium"�6�   $	��Top=�6�   $��81��6  $��2��6  �� 5   
   -   5        $��	btnReturn��5      $��Return��6:   $��Center=�6K   $��	50,20,0,0q�6h   $��3��6{   $	��Top=�6�   $	��200��6�   $��0��6�   
������$��10,15q�6�   �� 5   
   -   5        $��	btnCancel��5      $��Cancel��6:   $��Center=�6K   $��	50,20,0,0q�6h   $��3��6{   $	��Top=�6�   $	��200��6�   $��1��6�   
�������$��10,15q�6�   G� 5   
   -   5        $��txtPIN��5   &   $��1��6   $��Center=�64   $��	30,55,0,0q�6Q   $��2��6d   $��20(�6q    G� 	MaxLength$ 4��6   $	��Top=�6�   $	��100��6�   �� 5   
   $
��Left=�6   $��1��6/   $
��Bold"�6?   $��	50,55,0,0q�6Q   $��20(�6d   $��2��6r   $��NoWrap=�6   $��
Admin PIN:��6�   $	��Top=�6�   �� 5   
   $��Center=�6   $��0��61   $
��Bold"�6A   $��
0,55,110,0q�6S   $��20(�6g   $��2��6u   $��Item ID:��6�   $	��Top=�6�   �� 5   
   -   5        $��txtID��5   r   $��Center=�6   $��0��6/   $��2��6?   $��20(�6L   $	��Top=�6Z   $	��100��6   $��	75,55,0,0q�6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��gridEquipment��5         SelectionMode$ Single=�6(   	   
IsReadOnly	 . $��Center=�6Q   $	��118��6n   $��
40,24,40,0q�6{   $��1��6�   $	��Top=�6�   $	��712��6�   $��2��6�   
   CanUserAddRows
 .     AutoGenerateColumns .  $��2��6  ��6�   ��    Columns 5       0  *System.Windows.Controls.DataGridTextColumn  5!      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 61   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *id+  5"      $ 
Student ID��6%   $	 100 69    6E   �� *	studentID+  5#      $
 Type��6%   $	 100 63    6?   �� *equipmenttype+  5$      $
 Date��6%   $	 100 63    6?   �� *
loandate+  5%      $ Serial��6%   $	 100 65    6A   �� *serialnumber+  5&      $	 Tag��6%   $	 100 62    6>   �� *	tagnumber+  5'      $ Description��6%   $	 175 6:    6F   �� *description+5)      5*      5+      