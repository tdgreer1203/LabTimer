   M S B A M L   `   `   `  ���� C  ?LabTimer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:LabTimerLabTimer      LabTimer.ReturnEquipment   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:LabTimer       � Title$  Equipment Return��$	��400��$	��800��.��� ����  j� Stretch$ Uniform=� �� ImageSource$ triologo.png�� j� 
AlignmentX$ Center=� j� 
AlignmentY$ Center=� � RowDefinitions �� $��1* ��� $��1* ��� $��1* ��� $��1* � � ColumnDefinitions �� $��1* ��� $��1* �.+��� $��2��$��Center=�$��0,0,0,0q�$��0��$
��Wrap=�$��Equipment Return��$	��Top=�$��40(�$
��Bold"��� $��2��$��Center=�$��
40,58,39,0q�$
��Wrap=�$i��cSelect the item you are returning, and have an administrator input their PIN to confirm the return.��$��22(�$��Medium"�$	��Top=�$��81��$��2���� -   $��	btnReturn��$��Return��$��Center=�$��	50,20,0,0q�$��3��$	��Top=�$	��200��$��0��
������$��10,15q��� -   $��	btnCancel��$��Cancel��$��Center=�$��	50,20,0,0q�$��3��$	��Top=�$	��200��$��1��
�������$��10,15q�G� -   $��txtPIN��$��1��$��Center=�$��	30,55,0,0q�$��2��$��20(� G� 	MaxLength$ 4��$	��Top=�$	��100���� $
��Left=�$��1��$
��Bold"�$��	50,55,0,0q�$��20(�$��2��$��NoWrap=�$��
Admin PIN:��$	��Top=��� $��Center=�$��0��$
��Bold"�$��
0,55,110,0q�$��20(�$��2��$��Item ID:��$	��Top=��� -   $��txtID��$��Center=�$��0��$��2��$��20(�$	��Top=�$	��100��$��	75,55,0,0q�&   System.Windows.Controls.DataGrid  -   $��gridEquipment��   SelectionMode$ Single=�	   
IsReadOnly	 . $��Center=�$	��118��$��
40,24,40,0q�$��1��$	��Top=�$	��712��$��2��
   CanUserAddRows
 .     AutoGenerateColumns .  $��2������    Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ ID��   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *id+  $ 
Student ID��$	 100  �� *	studentID+  $
 Type��$	 100  �� *equipmenttype+  $
 Date��$	 100  �� *
loandate+  $ Serial��$	 100  �� *serialnumber+  $	 Tag��$	 100  �� *	tagnumber+  $ Description��$	 175  �� *description+