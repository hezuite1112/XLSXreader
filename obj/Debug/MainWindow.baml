   M S B A M L   `   `   `  ����D  @XMLLoader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:XMLLoader	XMLLoader  5   	       XMLLoader.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:XMLLoader     5   	   $��20(�5        � Title$  XLSX Loader��5   	    � SizeToContent$ WidthAndHeight=�6    � 
ResizeMode$ NoResize=�6<   .��5	      � ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ Black��6    � Offset$ 1Q�6-   � 5      $ 	#FF17C1A2��6   $ 0.755Q�61   5       � ColumnDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $��20 �6    � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $��20 �6   .+�5"   
   �� -   5        	 ��Name$	 main1��5"      $��1��6#   $��1��63   $��45(�6@   $��Times New Roman)�6N   $��3��6k   $��	0,10,0,40q�6   Wczytaj Plik XLSX/XLS/CSV5$      �� 5%   
   $��1��6   $��2��6$   $��Wybrany Plik:��61   $��30,0,0,5q�6G   �� 5&   
   -   5        
 ��Name$
 	fileBlock��5&       �� 
IsReadOnly . $��1��6R   $��3��6b   $	��300��6o   $��0,0,0,0q�6{   ��6&   �� *
filename+6�   �� 5'   
   -   5         ��Name$ selectButton��5'      $��Wybierz��6'   $��2��69   $��3��6I   6V   5)      5+      