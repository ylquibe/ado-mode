FasdUAS 1.101.10   ��   ��    k             l      ��  ��    ( " version 2.1.2 - January 24, 2016      � 	 	 D   v e r s i o n   2 . 1 . 2   -   J a n u a r y   2 4 ,   2 0 1 6     
  
 l      ��  ��    , & sends contents of clipboard to Stata      �   L   s e n d s   c o n t e n t s   o f   c l i p b o a r d   t o   S t a t a        l      ��  ��    U O allows running from command window, as a temporary do-file or via a menu item      �   �   a l l o w s   r u n n i n g   f r o m   c o m m a n d   w i n d o w ,   a s   a   t e m p o r a r y   d o - f i l e   o r   v i a   a   m e n u   i t e m        l      ��  ��    N H applescript bug: single bar in front of "include" causes compile error      �   �   a p p l e s c r i p t   b u g :   s i n g l e   b a r   i n   f r o n t   o f   " i n c l u d e "   c a u s e s   c o m p i l e   e r r o r        l      ��  ��    W Q args are: { "command" | "menu" | "dofile" || "include" } [ name-of-tmp-dofile ]      �   �   a r g s   a r e :   {   " c o m m a n d "   |   " m e n u "   |   " d o f i l e "   | |   " i n c l u d e "   }   [   n a m e - o f - t m p - d o f i l e   ]        i        !   I     �� "��
�� .aevtoappnull  �   � **** " o      ���� 0 args  ��   ! k    � # #  $ % $ l     �� & '��   &  - initializations    ' � ( ( " -   i n i t i a l i z a t i o n s %  ) * ) q       + + �� ,�� 0 numargs numArgs , �� -�� 0 pasteme pasteMe - �� .�� 0 dothis doThis . ������ 0 	tmpdofile 	tmpDoFile��   *  / 0 / q       1 1 �� 2�� 0 howmanystatas howManyStatas 2 �� 3�� 0 	thestatas 	theStatas 3 ������ 0 thestataname theStataName��   0  4 5 4 q       6 6 ������ $0 defaulttmpdofile defaultTmpDoFile��   5  7 8 7 r      9 : 9 m      ; ; � < <  f e e d S t a t a . d o : o      ���� $0 defaulttmpdofile defaultTmpDoFile 8  = > = q     ? ? ������ 0 uiok UIOK��   >  @ A @ l   �� B C��   B . ( first check that UI scripting will work    C � D D P   f i r s t   c h e c k   t h a t   U I   s c r i p t i n g   w i l l   w o r k A  E F E O     G H G Z     I J�� K I 1    ��
�� 
uien J r     L M L m    ��
�� boovtrue M o      ���� 0 uiok UIOK��   K r     N O N m    ��
�� boovfals O o      ���� 0 uiok UIOK H m     P P�                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��   F  Q�� Q l  � R S T R Z   � U V�� W U H     X X o    ���� 0 uiok UIOK V O    c Y Z Y Z   # b [ \�� ] [ A   # * ^ _ ^ l  # ( `���� ` n  # ( a b a I   $ (�������� 0 getosxversion getOSXversion��  ��   b  f   # $��  ��   _ m   ( )����  \ k   - E c c  d e d I  - 6�� f g
�� .sysodlogaskr        TEXT f m   - . h h � i i � W h e n   S y s t e m   P r e f r e n c e s   o p e n s ,   b e   s u r e   t h a t   ' E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s '   i s   c h e c k e d ,   t h e n   t r y   a g a i n . g �� j��
�� 
btns j J   / 2 k k  l�� l m   / 0 m m � n n  O K��  ��   e  o p o I  7 <������
�� .miscactvnull��� ��� null��  ��   p  q�� q r   = E r s r 4   = A�� t
�� 
xppb t m   ? @ u u � v v H c o m . a p p l e . p r e f e r e n c e . u n i v e r s a l a c c e s s s 1   A D��
�� 
xpcp��  ��   ] k   H b w w  x y x I  H Q�� z {
�� .sysodlogaskr        TEXT z m   H I | | � } } W h e n   S y s t e m   P r e f r e n c e s   o p e n s ,   s e l e c t   t h e   P r i v a c y   t a b ,   t h e n   s e l e c t   t h e   A c c e s s i b i l i t y   i t e m   a n d   b e   s u r e   y o u r   v e r s i o n   o f   E m a c s   i s   c h e c k e d . { �� ~��
�� 
btns ~ J   J M    ��� � m   J K � � � � �  O K��  ��   y  � � � I  R W������
�� .miscactvnull��� ��� null��  ��   �  ��� � r   X b � � � 4   X ^�� �
�� 
xppb � m   Z ] � � � � � : c o m . a p p l e . p r e f e r e n c e . s e c u r i t y � 1   ^ a��
�� 
xpcp��   Z m      � ��                                                                                  sprf  alis    t  	Tucholsky                  �Y�H+     �System Preferences.app                                           ������        ����  	                Applications    �Y?�      ���       �  .Tucholsky:Applications: System Preferences.app  .  S y s t e m   P r e f e r e n c e s . a p p   	 T u c h o l s k y  #Applications/System Preferences.app   / ��  ��   W k   f� � �  � � � l  f f�� � ���   � ' ! check proper number of arguments    � � � � B   c h e c k   p r o p e r   n u m b e r   o f   a r g u m e n t s �  � � � r   f m � � � l  f k ����� � n   f k � � � 1   g k��
�� 
leng � o   f g���� 0 args  ��  ��   � o      ���� 0 numargs numArgs �  � � � Q   n � � � � � k   q � � �  � � � r   q y � � � n   q w � � � 4   r w�� �
�� 
cobj � m   u v����  � o   q r���� 0 args   � o      ���� 0 dothis doThis �  � � � Z   z � � ����� � H   z � � � E   z � � � � J   z � � �  � � � m   z } � � � � �  c o m m a n d �  � � � m   } � � � � � �  m e n u �  � � � m   � � � � � � �  d o f i l e �  ��� � m   � � � � � � �  i n c l u d e��   � o   � ����� 0 dothis doThis � n  � � � � � I   � ��������� 0 badfirstarg badFirstArg��  ��   �  f   � ���  ��   �  ��� � Z   � � � ��� � � ?   � � � � � o   � ����� 0 numargs numArgs � m   � �����  � k   � � � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 args   � o      ���� 0 	tmpdofile 	tmpDoFile �  ��� � Z   � � � ����� � =   � � � � � o   � ����� 0 	tmpdofile 	tmpDoFile � m   � � � � � � �   � r   � � � � � o   � ����� $0 defaulttmpdofile defaultTmpDoFile � o      ���� 0 	tmpdofile 	tmpDoFile��  ��  ��  ��   � r   � � � � � o   � ����� $0 defaulttmpdofile defaultTmpDoFile � o      ���� 0 	tmpdofile 	tmpDoFile��   � R      ������
�� .ascrerr ****      � ****��  ��   � l  � � � � � � n  � � � � � I   � ��������� 0 badfirstarg badFirstArg��  ��   �  f   � � �   no arguments    � � � �    n o   a r g u m e n t s �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � U O grab clipboard, strip totally blank lines, to check if there is anything to do    � � � � �   g r a b   c l i p b o a r d ,   s t r i p   t o t a l l y   b l a n k   l i n e s ,   t o   c h e c k   i f   t h e r e   i s   a n y t h i n g   t o   d o �  � � � l  � ��� � ���   � 9 3   Aside: perhaps this should be on the emacs side?    � � � � f       A s i d e :   p e r h a p s   t h i s   s h o u l d   b e   o n   t h e   e m a c s   s i d e ? �  � � � l  � ��� � ���   � X R   for now it will stay here... could be wrong behavior, plus it is simpler to do     � � � � �       f o r   n o w   i t   w i l l   s t a y   h e r e . . .   c o u l d   b e   w r o n g   b e h a v i o r ,   p l u s   i t   i s   s i m p l e r   t o   d o   �  � � � l  � ��� � ���   �       in Applescript (!)    � � � � .           i n   A p p l e s c r i p t   ( ! ) �  � � � r   � � � � � n  � � � � � I   � ��� ����� "0 stripblanklines stripBlankLines �  ��� � I  � �������
�� .JonsgClp****    ��� null��  ��  ��  ��   �  f   � � � o      ���� 0 pasteme pasteMe �  � � � Z   � � � ����� � =   � �   o   � ����� 0 pasteme pasteMe m   � � �   � O   � � I  � ���
�� .sysodlogaskr        TEXT m   � � �		 , N o t h i n g   t o   s e n d   S t a t a ! ��
��
�� 
btns
 J   � � �� m   � � �  C a n c e l��  ��   m   � ��                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  l  � ���������  ��  ��    l  � �����   \ V in the best of worlds, it would be possible to allow looping through the instances of    � �   i n   t h e   b e s t   o f   w o r l d s ,   i t   w o u l d   b e   p o s s i b l e   t o   a l l o w   l o o p i n g   t h r o u g h   t h e   i n s t a n c e s   o f  l  � �����   5 /   Stata to send the same code to each instance    � ^       S t a t a   t o   s e n d   t h e   s a m e   c o d e   t o   e a c h   i n s t a n c e  O   � r   � !  l  �"����" 6  �#$# 2   ��
� 
prcs$ E  %&% 1  �~
�~ 
pnam& m  '' �(( 
 S t a t a��  ��  ! o      �}�} 0 	thestatas 	theStatas m   � �))�                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��   *+* l �|�{�z�|  �{  �z  + ,-, r  ./. l 0�y�x0 I �w1�v
�w .corecnte****       ****1 o  �u�u 0 	thestatas 	theStatas�v  �y  �x  / o      �t�t 0 howmanystatas howManyStatas- 232 Z  s45�s64 = !787 o  �r�r 0 howmanystatas howManyStatas8 m   �q�q  5 O  $>9:9 k  *=;; <=< I */�p�o�n
�p .sysobeepnull��� ��� long�o  �n  = >�m> I 0=�l?@
�l .sysodlogaskr        TEXT? m  03AA �BB " N o   S t a t a   r u n n i n g !@ �kC�j
�k 
btnsC J  49DD E�iE m  47FF �GG  C a n c e l�i  �j  �m  : m  $'HH�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  �s  6 k  AsII JKJ Z  AaLM�h�gL ?  ADNON o  AB�f�f 0 howmanystatas howManyStatasO m  BC�e�e M k  G]PP QRQ O  G[STS I MZ�dUV
�d .sysodlogaskr        TEXTU m  MPWW �XX @ n o t h i n g   f o r   m u l t i p l e   s t a t a ' s   y e tV �cY�b
�c 
btnsY J  QVZZ [�a[ m  QT\\ �]]  C a n c e l�a  �b  T m  GJ^^�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  R _`_ l \\�`ab�`  a : 4 Stata can use the same name for different processes   b �cc h   S t a t a   c a n   u s e   t h e   s a m e   n a m e   f o r   d i f f e r e n t   p r o c e s s e s` ded l \\�_fg�_  f J D so... the it is impossible to cycle through Stata processes by name   g �hh �   s o . . .   t h e   i t   i s   i m p o s s i b l e   t o   c y c l e   t h r o u g h   S t a t a   p r o c e s s e s   b y   n a m ee i�^i l  \\�]jk�]  j � � tell application "System Events"					set theStatas to (the file of every process whose name contains "Stata")				 end tell				repeat with aStata in theStatas				end repeat
				   k �llj   t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 	 	 	 s e t   t h e S t a t a s   t o   ( t h e   f i l e   o f   e v e r y   p r o c e s s   w h o s e   n a m e   c o n t a i n s   " S t a t a " )  	 	 	 	   e n d   t e l l  	 	 	 	 r e p e a t   w i t h   a S t a t a   i n   t h e S t a t a s  	 	 	 	 e n d   r e p e a t 
 	 	 	 	�^  �h  �g  K mnm l bb�\op�\  o : 4 know there is exactly one instance of Stata running   p �qq h   k n o w   t h e r e   i s   e x a c t l y   o n e   i n s t a n c e   o f   S t a t a   r u n n i n gn rsr l bb�[tu�[  t   can finally get to work   u �vv 0   c a n   f i n a l l y   g e t   t o   w o r ks w�Zw O  bsxyx r  frz{z l fp|�Y�X| l fp}�W�V} n  fp~~ 1  lp�U
�U 
pnam l fl��T�S� n  fl��� 4 gl�R�
�R 
cobj� m  jk�Q�Q � o  fg�P�P 0 	thestatas 	theStatas�T  �S  �W  �V  �Y  �X  { o      �O�O 0 thestataname theStataNamey m  bc���                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �Z  3 ��� l tt�N�M�L�N  �M  �L  � ��� l tt�K���K  � $  Stata *must* be made active		   � ��� <   S t a t a   * m u s t *   b e   m a d e   a c t i v e 	 	� ��� O  t���� I }��J�I�H
�J .miscactvnull��� ��� null�I  �H  � 4  tz�G�
�G 
capp� o  xy�F�F 0 thestataname theStataName� ��� l ���E�D�C�E  �D  �C  � ��B� Z  �����A�� = ����� o  ���@�@ 0 dothis doThis� m  ���� ���  c o m m a n d� n ����� I  ���?��>�? 0 pastetmpstata pasteTmpStata� ��� o  ���=�= 0 thestataname theStataName� ��<� o  ���;�; 0 pasteme pasteMe�<  �>  �  f  ���A  � n ����� I  ���:��9�: 0 dotmpdofile doTmpDofile� ��� o  ���8�8 0 thestataname theStataName� ��� o  ���7�7 0 	tmpdofile 	tmpDoFile� ��6� o  ���5�5 0 dothis doThis�6  �9  �  f  ���B   S ' !- from test of UI being turned on    T ��� B -   f r o m   t e s t   o f   U I   b e i n g   t u r n e d   o n��    ��� l     �4�3�2�4  �3  �2  � ��� i    ��� I      �1�0�/�1 0 badfirstarg badFirstArg�0  �/  � O     ��� I   �.��
�. .sysodlogaskr        TEXT� m    �� ��� \ T h e   f i r s t   a r g u m e n t   m u s t   b e   " c o m m a n d "   o r   " m e n u "� �-��,
�- 
btns� J    	�� ��+� m    �� ���  C a n c e l�+  �,  � m     ���                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  � ��� l     �*�)�(�*  �)  �(  � ��� i    ��� I      �'��&�' 0 dotmpdofile doTmpDofile� ��� o      �%�% 0 	stataname 	stataName� ��� o      �$�$ 0 	tmpdofile 	tmpDoFile� ��#� o      �"�" 0 dowhat doWhat�#  �&  � k     �� ��� l     �!���!  � K E if multiple instances ever work, be sure this gets written just once   � ��� �   i f   m u l t i p l e   i n s t a n c e s   e v e r   w o r k ,   b e   s u r e   t h i s   g e t s   w r i t t e n   j u s t   o n c e� ��� q      �� � ��  
0 tmpdir  � ��� "0 stupidapplefile stupidAppleFile�  � ��� l     ����  � X R need to change this, because it changes the working directory in Stata on the Mac   � ��� �   n e e d   t o   c h a n g e   t h i s ,   b e c a u s e   i t   c h a n g e s   t h e   w o r k i n g   d i r e c t o r y   i n   S t a t a   o n   t h e   M a c� ��� r     ��� I    ���
� .sysoexecTEXT���     TEXT� m     �� ��� 8 g e t c o n f   D A R W I N _ U S E R _ T E M P _ D I R�  � o      �� 
0 tmpdir  � ��� r    ��� l   ���� b    ��� o    	�� 
0 tmpdir  � o   	 
�� 0 	tmpdofile 	tmpDoFile�  �  � o      �� 0 	tmpdofile 	tmpDoFile� ��� l   ����  � < 6 need applescript-style file name to write to the file   � ��� l   n e e d   a p p l e s c r i p t - s t y l e   f i l e   n a m e   t o   w r i t e   t o   t h e   f i l e� ��� r    ��� 4    ��
� 
psxf� o    �� 0 	tmpdofile 	tmpDoFile� o      �� "0 stupidapplefile stupidAppleFile� ��� Q    a���� k    A�� ��� I   ���
� .rdwropenshor       file� o    �� "0 stupidapplefile stupidAppleFile� ���
� 
perm� m    �
� boovtrue�  � ��� I    '���
� .rdwrseofnull���     ****� o     !�
�
 "0 stupidapplefile stupidAppleFile� �	��
�	 
set2� m   " #��  �  � � � I  ( 3�
� .rdwrwritnull���     **** l  ( -�� I  ( -���
� .JonsgClp****    ��� null�  �  �  �   � ��
�  
refn o   . /���� "0 stupidapplefile stupidAppleFile��     I  4 ;��
�� .rdwrwritnull���     **** o   4 5��
�� 
ret  ��	��
�� 
refn	 o   6 7���� "0 stupidapplefile stupidAppleFile��   
��
 I  < A����
�� .rdwrclosnull���     **** o   < =���� "0 stupidapplefile stupidAppleFile��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   I a  I  I N����
�� .rdwrclosnull���     **** o   I J���� "0 stupidapplefile stupidAppleFile��   �� O   O a I  S `��
�� .sysodlogaskr        TEXT m   S T � L H a d   t r o u b l e   w i t h   t h e   t e m p o r a r y   d o - f i l e ����
�� 
btns J   W \ �� m   W Z �  C a n c e l��  ��   m   O P�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  �  l  b b�� ��   #  applescript really is a pita     �!! :   a p p l e s c r i p t   r e a l l y   i s   a   p i t a "#" O   b q$%$ I  k p������
�� .miscactvnull��� ��� null��  ��  % 4   b h��&
�� 
capp& o   f g���� 0 	stataname 	stataName# '��' Z   r ()��*( =   r w+,+ o   r s���� 0 dowhat doWhat, m   s v-- �..  m e n u) Q   z �/01/ I   } ���2���� 0 	doviamenu 	doViaMenu2 3��3 o   ~ ���� 0 	stataname 	stataName��  ��  0 R      ������
�� .ascrerr ****      � ****��  ��  1 k   � �44 565 I   � ���7���� "0 createmenuitems createMenuItems7 898 o   � ����� 0 	stataname 	stataName9 :��: o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  6 ;<; l  � ���=>��  = 8 2 need to be sure the menu item exists on first try   > �?? d   n e e d   t o   b e   s u r e   t h e   m e n u   i t e m   e x i s t s   o n   f i r s t   t r y< @A@ I  � ���B��
�� .sysodelanull��� ��� nmbrB m   � ����� ��  A C��C Q   � �DEFD I   � ���G���� 0 	doviamenu 	doViaMenuG H��H o   � ����� 0 	stataname 	stataName��  ��  E R      ������
�� .ascrerr ****      � ****��  ��  F O   � �IJI I  � ���KL
�� .sysodlogaskr        TEXTK m   � �MM �NN v S o m e t h i n g   w e n t   w r o n g . . .   i s   y o u r   s t a t a   v e r s i o n   s e t   p r o p e r l y ?L ��O��
�� 
btnsO J   � �PP Q��Q m   � �RR �SS  C a n c e l��  ��  J m   � �TT�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  ��  * l  � UVWU Z   � XY��ZX =   � �[\[ o   � ����� 0 dowhat doWhat\ m   � �]] �^^  i n c l u d eY Q   � �_`a_ n  � �bcb I   � ���d���� 0 pastetmpstata pasteTmpStatad efe o   � ����� 0 	stataname 	stataNamef g��g b   � �hih m   � �jj �kk  i n c l u d e  i o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  c  f   � �` R      ������
�� .ascrerr ****      � ****��  ��  a O   � �lml I  � ���no
�� .sysodlogaskr        TEXTn m   � �pp �qq \ H a d   t r o u b l e   r u n n i n g   v i a   t e m p o r a r y   i n c l u d e   f i l eo ��r��
�� 
btnsr J   � �ss t��t m   � �uu �vv  C a n c e l��  ��  m m   � �ww�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  Z l  � xyzx Q   � {|}{ k   �~~ � l  � �������  � = 7 'open' changes directory as an unavoidable side-effect   � ��� n   ' o p e n '   c h a n g e s   d i r e c t o r y   a s   a n   u n a v o i d a b l e   s i d e - e f f e c t� ��� l  � �������  �   open stupidAppleFile   � ��� *   o p e n   s t u p i d A p p l e F i l e� ���� n  ���� I   �������� 0 pastetmpstata pasteTmpStata� ��� o   � ����� 0 	stataname 	stataName� ���� b   � ��� m   � ��� ���  d o  � o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  �  f   � ���  | R      ������
�� .ascrerr ****      � ****��  ��  } O   ��� I ����
�� .sysodlogaskr        TEXT� m  �� ��� R H a d   t r o u b l e   r u n n i n g   v i a   t e m p o r a r y   d o - f i l e� �����
�� 
btns� J  �� ���� m  �� ���  C a n c e l��  ��  � m  ���                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  y   doing via dofile   z ��� "   d o i n g   v i a   d o f i l eV I C doing via dofile or include--- needs fixing for multiple instances   W ��� �   d o i n g   v i a   d o f i l e   o r   i n c l u d e - - -   n e e d s   f i x i n g   f o r   m u l t i p l e   i n s t a n c e s��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 	doviamenu 	doViaMenu� ���� o      ���� 0 	stataname 	stataName��  ��  � O     /��� Z    .������� 1    ��
�� 
uien� O    *��� I   )�����
�� .prcsclicnull��� ��� uiel� n    %��� 4   " %���
�� 
menI� m   # $�� ���  r u n   t m p   f i l e� n    "��� 4    "���
�� 
menE� m     !���� � n    ��� 4    ���
�� 
menI� m    �� ��� & A p p l e s c r i p t   h e l p e r s� n    ��� 4    ���
�� 
menE� m    ���� � n    ��� 4    ���
�� 
mbri� m    �� ���  U s e r� 4    ���
�� 
mbar� m    ���� ��  � 4    ���
�� 
pcap� o    ���� 0 	stataname 	stataName��  ��  � m     ���                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� "0 createmenuitems createMenuItems� ��� o      ���� 0 	stataname 	stataName� ���� o      ���� 0 	tmpdofile 	tmpDoFile��  ��  � O     G��� Z    F������� 1    ��
�� 
uien� O    B��� k    A�� ��� l   ������  � * $ get the command window to the front   � ��� H   g e t   t h e   c o m m a n d   w i n d o w   t o   t h e   f r o n t� ��� I   #�����
�� .prcsclicnull��� ��� uiel� n   ��� 4    ���
�� 
menI� m    �� ���  C o m m a n d� n    ��� 4    ���
�� 
menE� m    �� ���  W i n d o w� n   ��� 4    ���
�� 
mbri� m    �� ���  W i n d o w� 4    ��
� 
mbar� m    �~�~ ��  � ��� I  $ +�}��|
�} .prcskprsnull���     ctxt� b   $ '��� m   $ %�� ��� r w i n d o w   m e n u   a p p e n d   s u b m e n u   " s t U s e r "   " A p p l e s c r i p t   h e l p e r s "� o   % &�{
�{ 
ret �|  � ��� I  , 7�z��y
�z .prcskprsnull���     ctxt� b   , 3��� b   , 1��� b   , /   m   , - � � w i n d o w   m e n u   a p p e n d   i t e m   " A p p l e s c r i p t   h e l p e r s "   " r u n   t m p   f i l e "   " d o   o   - .�x�x 0 	tmpdofile 	tmpDoFile� m   / 0 �  "� o   1 2�w
�w 
ret �y  � �v I  8 A�u�t
�u .prcskprsnull���     ctxt b   8 =	 m   8 ;

 � & w i n d o w   m e n u   r e f r e s h	 o   ; <�s
�s 
ret �t  �v  � 4    �r
�r 
pcap o    �q�q 0 	stataname 	stataName��  ��  � m     �                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �  l     �p�o�n�p  �o  �n    i     I      �m�l�m 0 pastetmpstata pasteTmpStata  o      �k�k 0 	stataname 	stataName �j o      �i�i 0 pasteme pasteMe�j  �l   k     �  q       �h�g�h 0 oldclipboard oldClipBoard�g    r      I    �f�e�d
�f .JonsgClp****    ��� null�e  �d   o      �c�c 0 oldclipboard oldClipBoard  !  Q    �"#$" k    h%% &'& I   �b(�a
�b .JonspClpnull���     ****( l   )�`�_) c    *+* o    �^�^ 0 pasteme pasteMe+ m    �]
�] 
ctxt�`  �_  �a  ' ,�\, O    h-.- Z    g/0�[�Z/ 1    �Y
�Y 
uien0 O    c121 k   % b33 454 I  % 6�X6�W
�X .prcsclicnull��� ��� uiel6 n  % 2787 4   / 2�V9
�V 
menI9 m   0 1:: �;;  C o m m a n d8 n   % /<=< 4   , /�U>
�U 
menE> m   - .?? �@@  W i n d o w= n  % ,ABA 4   ) ,�TC
�T 
mbriC m   * +DD �EE  W i n d o wB 4   % )�SF
�S 
mbarF m   ' (�R�R �W  5 GHG I  7 <�QI�P
�Q .sysodelanull��� ��� nmbrI m   7 8JJ ?ə������P  H KLK I  = T�OM�N
�O .prcsclicnull��� ��� uielM n  = PNON 4   K P�MP
�M 
menIP l 	 L OQ�L�KQ m   L ORR �SS 
 P a s t e�L  �K  O n   = KTUT 4   F K�JV
�J 
menEV m   G JWW �XX  E d i tU n  = FYZY 4   A F�I[
�I 
mbri[ m   B E\\ �]]  E d i tZ 4   = A�H^
�H 
mbar^ m   ? @�G�G �N  L _`_ l  U U�Fab�F  a > 8 added delay when seeing odd behavior on machine at work   b �cc p   a d d e d   d e l a y   w h e n   s e e i n g   o d d   b e h a v i o r   o n   m a c h i n e   a t   w o r k` ded l  U U�Efg�E  f U O it seems that a delay of under 0.2 seconds makes things weird on fast machines   g �hh �   i t   s e e m s   t h a t   a   d e l a y   o f   u n d e r   0 . 2   s e c o n d s   m a k e s   t h i n g s   w e i r d   o n   f a s t   m a c h i n e se iji I  U Z�Dk�C
�D .sysodelanull��� ��� nmbrk m   U Vll ?ə������C  j m�Bm I  [ b�An�@
�A .prcskprsnull���     ctxtn o   [ ^�?
�? 
ret �@  �B  2 4    "�>o
�> 
pcapo o     !�=�= 0 	stataname 	stataName�[  �Z  . m    pp�                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �\  # R      �<�;�:
�< .ascrerr ****      � ****�;  �:  $ k   p �qq rsr I  p u�9t�8
�9 .JonspClpnull���     ****t o   p q�7�7 0 oldclipboard oldClipBoard�8  s u�6u O   v �vwv I  | ��5xy
�5 .sysodlogaskr        TEXTx m   | zz �{{ V H a d   t r o u b l e   p a s t i n g   t o   S t a t a   c o m m a n d   w i n d o wy �4|�3
�4 
btns| J   � �}} ~�2~ m   � � ���  C a n c e l�2  �3  w m   v y���                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  �6  ! ��1� I  � ��0��/
�0 .JonspClpnull���     ****� o   � ��.�. 0 oldclipboard oldClipBoard�/  �1   ��� l     �-�,�+�-  �,  �+  � ��� i    ��� I      �*��)�* "0 stripblanklines stripBlankLines� ��(� o      �'�' 0 thetext theText�(  �)  � k     i�� ��� q      �� �&��& 0 theparas theParas� �%��% 0 thepara thePara� �$��$ 0 achar aChar� �#��# 0 thecleanstuff theCleanStuff� �"�!�" 0 eraseme  �!  � ��� r     ��� l    �� �� n     ��� 2   �
� 
cpar� o     �� 0 thetext theText�   �  � o      �� 0 theparas theParas� ��� r    
��� J    ��  � o      �� 0 thecleanstuff theCleanStuff� ��� X    ^���� k    Y�� ��� r    ��� m    �
� boovtrue� o      �� 0 eraseme  � ��� X    I���� Z   1 D����� H   1 8�� E  1 7��� J   1 5�� ��� m   1 2�� ���   � ��� m   2 3�� ���  	�  � o   5 6�� 0 achar aChar� k   ; @�� ��� r   ; >��� m   ; <�
� boovfals� o      �� 0 eraseme  � ���  S   ? @�  �  �  � 0 achar aChar� n   " %��� 2   # %�
� 
cha � o   " #�� 0 thepara thePara� ��� Z   J Y����
� H   J L�� o   J K�	�	 0 eraseme  � r   O U��� l  O R���� c   O R��� o   O P�� 0 thepara thePara� m   P Q�
� 
TEXT�  �  � l     ���� n      ���  ;   S T� o   R S�� 0 thecleanstuff theCleanStuff�  �  �  �
  �  � 0 thepara thePara� o    �� 0 theparas theParas� ��� r   _ d��� o   _ `� 
�  
ret � l     ������ 1   ` c��
�� 
txdl��  ��  � ���� L   e i�� l  e h������ c   e h��� o   e f���� 0 thecleanstuff theCleanStuff� m   f g��
�� 
TEXT��  ��  ��  � ��� l     ��������  ��  ��  � ���� i    ��� I      �������� 0 getosxversion getOSXversion��  ��  � k     �� ��� q      �� ������ $0 thefullosversion theFullOSVersion��  � ��� r     ��� m     �� ���  .� l     ������ 1    ��
�� 
txdl��  ��  � ��� O    ��� r   
 ��� l  
 ������ 1   
 ��
�� 
vers��  ��  � o      ���� $0 thefullosversion theFullOSVersion� m    ���                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  � ���� L    �� n    ��� 4    ���
�� 
citm� m    ���� � o    ���� $0 thefullosversion theFullOSVersion��  ��       
�������������  � ����������������
�� .aevtoappnull  �   � ****�� 0 badfirstarg badFirstArg�� 0 dotmpdofile doTmpDofile�� 0 	doviamenu 	doViaMenu�� "0 createmenuitems createMenuItems�� 0 pastetmpstata pasteTmpStata�� "0 stripblanklines stripBlankLines�� 0 getosxversion getOSXversion� �� !��������
�� .aevtoappnull  �   � ****�� 0 args  ��  � 
���������������������� 0 args  �� 0 numargs numArgs�� 0 pasteme pasteMe�� 0 dothis doThis�� 0 	tmpdofile 	tmpDoFile�� 0 howmanystatas howManyStatas�� 0 	thestatas 	theStatas�� 0 thestataname theStataName�� $0 defaulttmpdofile defaultTmpDoFile�� 0 uiok UIOK� 0 ; P�� ����� h�� m������ u�� | � ����� � � � ����� ��������������'����AFW\�������
�� 
uien�� 0 getosxversion getOSXversion�� 
�� 
btns
�� .sysodlogaskr        TEXT
�� .miscactvnull��� ��� null
�� 
xppb
�� 
xpcp
�� 
leng
�� 
cobj�� �� 0 badfirstarg badFirstArg��  ��  
�� .JonsgClp****    ��� null�� "0 stripblanklines stripBlankLines
�� 
prcs�  
�� 
pnam
�� .corecnte****       ****
�� .sysobeepnull��� ��� long
�� 
capp�� 0 pastetmpstata pasteTmpStata�� 0 dotmpdofile doTmpDofile����E�O� *�,E eE�Y fE�UO� I� A)j+ � ���kvl 	O*j 
O*��/*�,FY ���kvl 	O*j 
O*�a /*�,FUY:�a ,E�O R�a k/E�Oa a a a a v� 
)j+ Y hO�k �a l/E�O�a   �E�Y hY �E�W X  )j+ O)*j k+ E�O�a   a  a  �a !kvl 	UY hO� *a "-a #[a $,\Za %@1E�UO�j &E�O�j  a  *j 'Oa (�a )kvl 	UY 4�k a  a *�a +kvl 	UOPY hO� �a k/a $,E�UO*a ,�/ *j 
UO�a -  )��l+ .Y 
)���m+ /� ������� ���� 0 badfirstarg badFirstArg��  ��      �������
�� 
btns
�� .sysodlogaskr        TEXT�� � ���kvl U� ����������� 0 dotmpdofile doTmpDofile�� ����   �������� 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile�� 0 dowhat doWhat��   ������������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile�� 0 dowhat doWhat�� 
0 tmpdir  �� "0 stupidapplefile stupidAppleFile #�����������������������������������-������MR]j��pu���
�� .sysoexecTEXT���     TEXT
�� 
psxf
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� .JonsgClp****    ��� null
�� 
refn
�� .rdwrwritnull���     ****
�� 
ret 
�� .rdwrclosnull���     ****��  ��  
�� 
btns
�� .sysodlogaskr        TEXT
�� 
capp
�� .miscactvnull��� ��� null�� 0 	doviamenu 	doViaMenu�� "0 createmenuitems createMenuItems
�� .sysodelanull��� ��� nmbr�� 0 pastetmpstata pasteTmpStata��!�j E�O��%E�O*�/E�O .��el O��jl O*j �l 	O��l 	O�j W X  �j O� �a a kvl UO*a �/ *j UO�a   I *�k+ W :X  *��l+ Okj O *�k+ W X  � a a a kvl UY a�a   / )�a �%l+ W X  � a a a kvl UY , )�a  �%l+ W X  � a !a a "kvl U� ����������� 0 	doviamenu 	doViaMenu�� ����   ���� 0 	stataname 	stataName��   ���� 0 	stataname 	stataName ������������������
�� 
uien
�� 
pcap
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicnull��� ��� uiel�� 0� ,*�,E $*�/ *�k/��/�k/��/�k/��/j 
UY hU� ���~�}	�|� "0 createmenuitems createMenuItems�~ �{
�{ 
  �z�y�z 0 	stataname 	stataName�y 0 	tmpdofile 	tmpDoFile�}   �x�w�x 0 	stataname 	stataName�w 0 	tmpdofile 	tmpDoFile	 �v�u�t�s��r��q��p��o�n

�v 
uien
�u 
pcap
�t 
mbar
�s 
mbri
�r 
menE
�q 
menI
�p .prcsclicnull��� ��� uiel
�o 
ret 
�n .prcskprsnull���     ctxt�| H� D*�,E <*�/ 1*�k/��/��/��/j 
O��%j O�%�%�%j Oa �%j UY hU� �m�l�k�j�m 0 pastetmpstata pasteTmpStata�l �i�i   �h�g�h 0 	stataname 	stataName�g 0 pasteme pasteMe�k   �f�e�d�f 0 	stataname 	stataName�e 0 pasteme pasteMe�d 0 oldclipboard oldClipBoard �c�b�ap�`�_�^�]D�\?�[:�ZJ�Y\WR�X�W�V�U�z�T�S
�c .JonsgClp****    ��� null
�b 
ctxt
�a .JonspClpnull���     ****
�` 
uien
�_ 
pcap
�^ 
mbar
�] 
mbri
�\ 
menE
�[ 
menI
�Z .prcsclicnull��� ��� uiel
�Y .sysodelanull��� ��� nmbr
�X 
ret 
�W .prcskprsnull���     ctxt�V  �U  
�T 
btns
�S .sysodlogaskr        TEXT�j �*j  E�O b��&j O� R*�,E J*�/ ?*�k/��/��/��/j O�j O*�k/�a /�a /�a /j O�j O_ j UY hUW #X  �j Oa  a a a kvl UO�j � �R��Q�P�O�R "0 stripblanklines stripBlankLines�Q �N�N   �M�M 0 thetext theText�P   �L�K�J�I�H�G�L 0 thetext theText�K 0 theparas theParas�J 0 thepara thePara�I 0 achar aChar�H 0 thecleanstuff theCleanStuff�G 0 eraseme   
�F�E�D�C�B���A�@�?
�F 
cpar
�E 
kocl
�D 
cobj
�C .corecnte****       ****
�B 
cha 
�A 
TEXT
�@ 
ret 
�? 
txdl�O j��-E�OjvE�O R�[��l kh eE�O )��-[��l kh ��lv� 
fE�OY h[OY��O� ��&�6FY h[OY��O�*�,FO��&� �>��=�<�;�> 0 getosxversion getOSXversion�=  �<   �:�: $0 thefullosversion theFullOSVersion ��9��8�7
�9 
txdl
�8 
vers
�7 
citm�; �*�,FO� *�,E�UO��l/Eascr  ��ޭ