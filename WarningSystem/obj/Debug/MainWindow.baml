   M S B A M L   `   `   `  ����H  DWarningSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WarningSystemWarningSystem  5   	       WarningSystem.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -localclr-namespace:WarningSystem     5   	     � Title$<  6坝光收费站边坡防护预警系统客户端软件��5   	   $	��500��6$   $	��700��61   $��12(�6S   ��6=   Z� .��5      � -   5        $��mygrid��5      .+�5   
   �� -   5         ��Name$ View_Select_Border��5      
���   �$��1q�6A   $
��Left=�6U   $	��358��6p   $��	36,59,0,0q�6}   $	��Top=�6�   $	��123��6�    �� CornerRadius$ 5,5,5,5��6�   $y�Hidden=�6�   �� 5	   
   -   5        $ 	Main_View��5	      $��1q�6%   $
��Left=�69   $	��100��6T   $��
189,59,0,0q�6a   $	��Top=�6u   $	��100��6�   $ 0,0,0,0��6�   ._�5
      � -   5         �Name$ Main_View_Grid��5
      5      �� 5   
   -   5         ��Name$ btn_mainview��5      $��	主界面��6'   $
��Left=�65   $��	48,80,0,0q�6P   $	��Top=�6c   $��97��6{   $��31��6�   $
��Bold"�6�    � UseLayoutRounding . ���	#FF0A0A0A$y�Hidden=�6�   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      �  � Color$ Black��6#   	 � Offset$	 0Q�61   � 5      $ 	#FF117EEC��6#   $	 0.498Q�65   � 5      $ 	#FF0C59A8��6#   $	 0.151Q�65   5      5      �� 5   
   -   5        $ 
btn_quxian��5      $��数据曲线��6%   $
��Left=�64   $	��Top=�6O   $��97��6g   $��31��6r   $
��Bold"�6�    . ���	#FF080707$��
48,116,0,0q�6�   $y�Hidden=�6�   ��5      �� 5      $ 0.5,1&�6&   $ 0.5,0&�67   .��5      � $ Black��6#   $	 0Q�61   � 5      $ 	#FF117EEC��6#   $	 0.498Q�65   � 5      $ 	#FF0C59A8��6#   $	 0.151Q�65   5      5      �� 5   
   -   5        $ btn_value_set��5      $��参数设置��6(   $
��Left=�67   $	��Top=�6R   $��97��6j   $��31��6u   $
��Bold"�6�    . ���	#FF0A0A0A$��
48,154,0,0q�6�   $y�Hidden=�6�   ��5      �� 5       $ 0.5,1&�6&   $ 0.5,0&�67   .��5!      � $ Black��6#   $	 0Q�61   � 5"      $ 	#FF117EEC��6#   $	 0.498Q�65   � 5#      $ 	#FF0C59A8��6#   $	 0.151Q�65   5$      5&      �� 5'   
   -   5        $ 	btn_Qushi��5'      $��趋势曲线��6$   $
��Left=�63   $	��Top=�6N   $��97��6f   $��31��6q   $
��Bold"�6�    . ���	#FF080707$��
49,192,0,0q�6�   $y�Hidden=�6�   ��5(      �� 5)      $ 0.5,1&�6&   $ 0.5,0&�67   .��5*      � $ Black��6#   $	 0Q�61   � 5+      $ 	#FF117EEC��6#   $	 0.498Q�65   � 5,      $ 	#FF0C59A8��6#   $	 0.151Q�65   5-      5/      �� 50   
   -	   5        $ btn_Set��50      $��地图标定��6"   $
��Left=�61   $	��Top=�6L   $��97��6d   $��31��6o   $
��Bold"�6�    . ���	#FF080707$��
49,228,0,0q�6�   $y�Hidden=�6�   ��51      �� 52      $ 0.5,1&�6&   $ 0.5,0&�67   .��53      � $ Black��6#   $	 0Q�61   � 54      $ 	#FF117EEC��6#   $	 0.498Q�65   � 55      $ 	#FF0C59A8��6#   $	 0.151Q�65   56      58      o� 59   
   $��Stretch=�6   $��22��6-   $	��Top=�69   $
��auto��6Q   $��Center=�6^   $��16(�6�   .@�5:      m� $��系统��6   .@�5;      m� -
   5        $��关闭��5;      6'   5=      m� 5>      $��画面��6   .@�5?      m� -   5        $��	主页面��5?      6(   m� 5@      -   5        $��数据曲线��5@      6)   m� 5A      -   5        $��差分查询��5A      6)   m� 5B      -   5        $��报表查询��5B      6)   5E      m� 5F      -   5        $��报警记录��5F      6%   5H      5I      5J      