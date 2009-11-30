FasdUAS 1.101.10   ��   ��    k             l      ��  ��    F @ need some method for working with multiple instances of Stata.      � 	 	 �   n e e d   s o m e   m e t h o d   f o r   w o r k i n g   w i t h   m u l t i p l e   i n s t a n c e s   o f   S t a t a .     
  
 l      ��  ��    ? 9 currently bombs if there are multiple instances running      �   r   c u r r e n t l y   b o m b s   i f   t h e r e   a r e   m u l t i p l e   i n s t a n c e s   r u n n i n g        i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 args  ��    k    -       l     ��  ��      set args to {"menu"}     �   *   s e t   a r g s   t o   { " m e n u " }      l     ��  ��     - initializations     �   " -   i n i t i a l i z a t i o n s       l     �� ! "��   !  set args to {"command"}    " � # # . s e t   a r g s   t o   { " c o m m a n d " }    $ % $ l     ��������  ��  ��   %  & ' & q       ( ( �� )�� 0 numargs numArgs ) �� *�� 0 pasteme pasteMe * �� +�� 0 dothis doThis + ������ 0 	tmpdofile 	tmpDoFile��   '  , - , q       . . ������ 0 howmany howMany��   -  / 0 / q       1 1 ������ $0 defaulttmpdofile defaultTmpDoFile��   0  2 3 2 r      4 5 4 m      6 6 � 7 7  f e e d S t a t a . d o 5 o      ���� $0 defaulttmpdofile defaultTmpDoFile 3  8 9 8 l   ��������  ��  ��   9  : ; : l   �� < =��   < ' ! check proper number of arguments    = � > > B   c h e c k   p r o p e r   n u m b e r   o f   a r g u m e n t s ;  ? @ ? r    	 A B A l    C���� C n     D E D 1    ��
�� 
leng E o    ���� 0 args  ��  ��   B o      ���� 0 numargs numArgs @  F G F Q   
 U H I J H k    H K K  L M L r     N O N n     P Q P 4    �� R
�� 
cobj R m    ����  Q o    ���� 0 args   O o      ���� 0 dothis doThis M  S T S Z    ' U V���� U H     W W E     X Y X J     Z Z  [ \ [ m     ] ] � ^ ^  c o m m a n d \  _�� _ m     ` ` � a a  m e n u��   Y o    ���� 0 dothis doThis V n   # b c b I    #�������� 0 badfirstarg badFirstArg��  ��   c  f    ��  ��   T  d�� d Z   ( H e f�� g e ?   ( + h i h o   ( )���� 0 numargs numArgs i m   ) *����  f k   . B j j  k l k r   . 4 m n m n   . 2 o p o 4   / 2�� q
�� 
cobj q m   0 1����  p o   . /���� 0 args   n o      ���� 0 	tmpdofile 	tmpDoFile l  r�� r Z   5 B s t���� s =   5 8 u v u o   5 6���� 0 	tmpdofile 	tmpDoFile v m   6 7 w w � x x   t r   ; > y z y o   ; <���� $0 defaulttmpdofile defaultTmpDoFile z o      ���� 0 	tmpdofile 	tmpDoFile��  ��  ��  ��   g r   E H { | { o   E F���� $0 defaulttmpdofile defaultTmpDoFile | o      ���� 0 	tmpdofile 	tmpDoFile��   I R      ������
�� .ascrerr ****      � ****��  ��   J l  P U } ~  } n  P U � � � I   Q U�������� 0 badfirstarg badFirstArg��  ��   �  f   P Q ~   no arguments     � � �    n o   a r g u m e n t s G  � � � l  V V��������  ��  ��   �  � � � l  V V�� � ���   � U O grab clipboard, strip totally blank lines, to check if there is anything to do    � � � � �   g r a b   c l i p b o a r d ,   s t r i p   t o t a l l y   b l a n k   l i n e s ,   t o   c h e c k   i f   t h e r e   i s   a n y t h i n g   t o   d o �  � � � l  V V�� � ���   � 9 3   Aside: perhaps this should be on the emacs side?    � � � � f       A s i d e :   p e r h a p s   t h i s   s h o u l d   b e   o n   t h e   e m a c s   s i d e ? �  � � � l  V V�� � ���   � X R   for now it will stay here... could be wrong behavior, plus it is simpler to do     � � � � �       f o r   n o w   i t   w i l l   s t a y   h e r e . . .   c o u l d   b e   w r o n g   b e h a v i o r ,   p l u s   i t   i s   s i m p l e r   t o   d o   �  � � � l  V V�� � ���   �       in Applescript (!)    � � � � .           i n   A p p l e s c r i p t   ( ! ) �  � � � r   V b � � � n  V ` � � � I   W `�� ����� "0 stripblanklines stripBlankLines �  ��� � I  W \������
�� .JonsgClp****    ��� null��  ��  ��  ��   �  f   V W � o      ���� 0 pasteme pasteMe �  � � � Z   c { � ����� � =   c f � � � o   c d���� 0 pasteme pasteMe � m   d e � � � � �   � O   i w � � � I  m v�� � �
�� .sysodlogaskr        TEXT � m   m n � � � � � , N o t h i n g   t o   s e n d   S t a t a ! � �� ���
�� 
btns � J   o r � �  ��� � m   o p � � � � �  C a n c e l��  ��   � m   i j � ��                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l  | |��������  ��  ��   �  � � � l  | |�� � ���   � S M in the best of worlds, it would be possible to loop through the instances of    � � � � �   i n   t h e   b e s t   o f   w o r l d s ,   i t   w o u l d   b e   p o s s i b l e   t o   l o o p   t h r o u g h   t h e   i n s t a n c e s   o f �  � � � l  | |�� � ���   � 5 /   Stata to send the same code to each instance    � � � � ^       S t a t a   t o   s e n d   t h e   s a m e   c o d e   t o   e a c h   i n s t a n c e �  � � � O   | � � � � r   � � � � � l  � � ����� � 6  � � � � � 2   � ���
�� 
prcs � E   � � � � � 1   � ���
�� 
pnam � m   � � � � � � � 
 S t a t a��  ��   � o      ���� 0 	thestatas 	theStatas � m   |  � ��                                                                                  sevs  alis    �  	Tucholsky                  �:��H+   OhSystem Events.app                                               P��7��        ����  	                CoreServices    �:�      �8'7     Oh Og� Og�  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 	thestatas 	theStatas��  ��  ��   � o      ���� 0 howmany howMany �  � � � Z   � � � ��� � � =  � � � � � o   � ����� 0 howmany howMany � m   � �����   � O   � � � � � k   � � � �  � � � I  � �������
�� .sysobeepnull��� ��� long��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � " N o   S t a t a   r u n n i n g ! � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  C a n c e l��  ��  ��   � m   � � � ��                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��   � k   � � � �  � � � Z   � � � ����� � ?   � � � � � o   � ����� 0 howmany howMany � m   � �����  � k   � � � �  � � � O   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � @ n o t h i n g   f o r   m u l t i p l e   s t a t a ' s   y e t � �� ���
�� 
btns � J   � � � �  ��  m   � � �  C a n c e l��  ��   � m   � ��                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��   �  l  � �����   J D a PITA, because Stata can use the same name for different processes    � �   a   P I T A ,   b e c a u s e   S t a t a   c a n   u s e   t h e   s a m e   n a m e   f o r   d i f f e r e n t   p r o c e s s e s 	
	 l  � �����   Q K so... the following code doesn't work. It is here as a reminder and a stub    � �   s o . . .   t h e   f o l l o w i n g   c o d e   d o e s n ' t   w o r k .   I t   i s   h e r e   a s   a   r e m i n d e r   a n d   a   s t u b
 �� l   � �����  /) tell application "System Events"			set theStatas to (the file of every process whose name contains "Stata")		end tell		repeat with aStata in theStatas			doByFile(theFile, doThis, tmpDoFile)			--- doByFile will need to rely on frontmost applications, which could be dangerous.		end repeat
		    �R   t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 	 s e t   t h e S t a t a s   t o   ( t h e   f i l e   o f   e v e r y   p r o c e s s   w h o s e   n a m e   c o n t a i n s   " S t a t a " )  	 	 e n d   t e l l  	 	 r e p e a t   w i t h   a S t a t a   i n   t h e S t a t a s  	 	 	 d o B y F i l e ( t h e F i l e ,   d o T h i s ,   t m p D o F i l e )  	 	 	 - - -   d o B y F i l e   w i l l   n e e d   t o   r e l y   o n   f r o n t m o s t   a p p l i c a t i o n s ,   w h i c h   c o u l d   b e   d a n g e r o u s .  	 	 e n d   r e p e a t 
 	 	��  ��  ��   �  l  � �����~��  �  �~    l  � ��}�}   : 4 know there is exactly one instance of Stata running    � h   k n o w   t h e r e   i s   e x a c t l y   o n e   i n s t a n c e   o f   S t a t a   r u n n i n g  l  � ��|�|     can finally get to work    � 0   c a n   f i n a l l y   g e t   t o   w o r k �{ O   � �  r   � �!"! l  � �#�z�y# l  � �$�x�w$ n   � �%&% 1   � ��v
�v 
pnam& l  � �'�u�t' n   � �()( 4  � ��s*
�s 
cobj* m   � ��r�r ) o   � ��q�q 0 	thestatas 	theStatas�u  �t  �x  �w  �z  �y  " o      �p�p 0 thestataname theStataName  m   � �++�                                                                                  sevs  alis    �  	Tucholsky                  �:��H+   OhSystem Events.app                                               P��7��        ����  	                CoreServices    �:�      �8'7     Oh Og� Og�  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �{   � ,-, l  � ��o�n�m�o  �n  �m  - ./. l  � ��l01�l  0 : 4 without the following, things get really strange...   1 �22 h   w i t h o u t   t h e   f o l l o w i n g ,   t h i n g s   g e t   r e a l l y   s t r a n g e . . ./ 343 O   �565 I �k�j�i
�k .miscactvnull��� ��� null�j  �i  6 4   ��h7
�h 
capp7 o   �g�g 0 thestataname theStataName4 898 l �f�e�d�f  �e  �d  9 :;: Z  +<=�c>< = ?@? o  �b�b 0 dothis doThis@ m  AA �BB  m e n u= n CDC I  �aE�`�a 0 domenu doMenuE FGF o  �_�_ 0 thestataname theStataNameG H�^H o  �]�] 0 	tmpdofile 	tmpDoFile�^  �`  D  f  �c  > I  "+�\I�[�\ 0 pastetmpstata pasteTmpStataI JKJ o  #&�Z�Z 0 thestataname theStataNameK L�YL o  &'�X�X 0 pasteme pasteMe�Y  �[  ; M�WM l ,,�V�U�T�V  �U  �T  �W    NON l     �S�R�Q�S  �R  �Q  O PQP i    RSR I      �P�O�N�P 0 badfirstarg badFirstArg�O  �N  S O     TUT I   �MVW
�M .sysodlogaskr        TEXTV m    XX �YY \ T h e   f i r s t   a r g u m e n t   m u s t   b e   " c o m m a n d "   o r   " m e n u "W �LZ�K
�L 
btnsZ J    	[[ \�J\ m    ]] �^^  C a n c e l�J  �K  U m     __�                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  Q `a` l     �I�H�G�I  �H  �G  a bcb i    ded I      �Ff�E�F 0 domenu doMenuf ghg o      �D�D 0 	stataname 	stataNameh i�Ci o      �B�B 0 	tmpdofile 	tmpDoFile�C  �E  e k     �jj klk l     �Amn�A  m K E if multiple instances ever work, be sure this gets written just once   n �oo �   i f   m u l t i p l e   i n s t a n c e s   e v e r   w o r k ,   b e   s u r e   t h i s   g e t s   w r i t t e n   j u s t   o n c el pqp r     rsr I    �@t�?
�@ .sysoexecTEXT���     TEXTt m     uu �vv 8 g e t c o n f   D A R W I N _ U S E R _ T E M P _ D I R�?  s o      �>�> 
0 tmpdir  q wxw r    yzy l   {�=�<{ b    |}| o    	�;�; 
0 tmpdir  } o   	 
�:�: 0 	tmpdofile 	tmpDoFile�=  �<  z o      �9�9 0 	tmpdofile 	tmpDoFilex ~~ l   �8���8  � < 6 need applescript-style file name to write to the file   � ��� l   n e e d   a p p l e s c r i p t - s t y l e   f i l e   n a m e   t o   w r i t e   t o   t h e   f i l e ��� r    ��� 4    �7�
�7 
psxf� o    �6�6 0 	tmpdofile 	tmpDoFile� o      �5�5 "0 stupidapplefile stupidAppleFile� ��� Q    a���� k    A�� ��� I   �4��
�4 .rdwropenshor       file� o    �3�3 "0 stupidapplefile stupidAppleFile� �2��1
�2 
perm� m    �0
�0 boovtrue�1  � ��� I    '�/��
�/ .rdwrseofnull���     ****� o     !�.�. "0 stupidapplefile stupidAppleFile� �-��,
�- 
set2� m   " #�+�+  �,  � ��� I  ( 3�*��
�* .rdwrwritnull���     ****� l  ( -��)�(� I  ( -�'�&�%
�' .JonsgClp****    ��� null�&  �%  �)  �(  � �$��#
�$ 
refn� o   . /�"�" "0 stupidapplefile stupidAppleFile�#  � ��� I  4 ;�!��
�! .rdwrwritnull���     ****� o   4 5� 
�  
ret � ���
� 
refn� o   6 7�� "0 stupidapplefile stupidAppleFile�  � ��� I  < A���
� .rdwrclosnull���     ****� o   < =�� "0 stupidapplefile stupidAppleFile�  �  � R      ���
� .ascrerr ****      � ****�  �  � k   I a�� ��� I  I N���
� .rdwrclosnull���     ****� o   I J�� "0 stupidapplefile stupidAppleFile�  � ��� O   O a��� I  S `���
� .sysodlogaskr        TEXT� m   S T�� ��� L H a d   t r o u b l e   w i t h   t h e   t e m p o r a r y   d o - f i l e� ���
� 
btns� J   W \�� ��� m   W Z�� ���  C a n c e l�  �  � m   O P���                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  �  � ��� l  b b����  � #  applescript really is a pita   � ��� :   a p p l e s c r i p t   r e a l l y   i s   a   p i t a� ��� O   b q��� I  k p���

� .miscactvnull��� ��� null�  �
  � 4   b h�	�
�	 
capp� o   f g�� 0 	stataname 	stataName� ��� l  r r����  �  �  � ��� Q   r ����� I   u {���� 0 
dotmpstata 
doTmpStata� ��� o   v w� �  0 	stataname 	stataName�  �  � R      ������
�� .ascrerr ****      � ****��  ��  � k   � ��� ��� I   � �������� "0 createmenuitems createMenuItems� ��� o   � ����� 0 	stataname 	stataName� ���� o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  � ��� l  � �������  � 8 2 need to be sure the menu item exists on first try   � ��� d   n e e d   t o   b e   s u r e   t h e   m e n u   i t e m   e x i s t s   o n   f i r s t   t r y� ��� I  � ������
�� .sysodelanull��� ��� nmbr� m   � ����� ��  � ���� Q   � ����� I   � �������� 0 
dotmpstata 
doTmpStata� ���� o   � ����� 0 	stataname 	stataName��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � O   � ���� I  � �����
�� .sysodlogaskr        TEXT� m   � ��� ��� v S o m e t h i n g   w e n t   w r o n g . . .   i s   y o u r   s t a t a   v e r s i o n   s e t   p r o p e r l y ?� �����
�� 
btns� J   � ��� ���� m   � ��� ���  C a n c e l��  ��  � m   � ����                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  �  c ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 
dotmpstata 
doTmpStata� ���� o      ���� 0 	stataname 	stataName��  ��  � O     /��� Z    .������� 1    ��
�� 
uien� O    *��� I   )�����
�� .prcsclicuiel    ��� uiel� n    %��� 4   " %���
�� 
menI� m   # $�� ���  r u n   t m p   f i l e� n    "��� 4    "���
�� 
menE� m     !���� � n       4    ��
�� 
menI m     � & A p p l e s c r i p t   h e l p e r s n     4    ��
�� 
menE m    ����  n    	 4    ��

�� 
mbri
 m     �  U s e r	 4    ��
�� 
mbar m    ���� ��  � 4    ��
�� 
pcap o    ���� 0 	stataname 	stataName��  ��  � m     �                                                                                  sevs  alis    �  	Tucholsky                  �:��H+   OhSystem Events.app                                               P��7��        ����  	                CoreServices    �:�      �8'7     Oh Og� Og�  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �  l     ��������  ��  ��    i     I      ������ "0 createmenuitems createMenuItems  o      ���� 0 	stataname 	stataName �� o      ���� 0 	tmpdofile 	tmpDoFile��  ��   O     3 Z    2���� 1    ��
�� 
uien O    . k    -   !"! l   ��#$��  # * $ get the command window to the front   $ �%% H   g e t   t h e   c o m m a n d   w i n d o w   t o   t h e   f r o n t" &'& I   ��()
�� .prcskprsnull���    utxt( m    ** �++  4) ��,��
�� 
faal, m    ��
�� eMdsKcmd��  ' -.- I   !��/��
�� .prcskprsnull���    utxt/ b    010 m    22 �33 r w i n d o w   m e n u   a p p e n d   s u b m e n u   " s t U s e r "   " A p p l e s c r i p t   h e l p e r s "1 o    ��
�� 
ret ��  . 4��4 I  " -��5��
�� .prcskprsnull���    utxt5 b   " )676 b   " '898 b   " %:;: m   " #<< �== � w i n d o w   m e n u   a p p e n d   i t e m   " A p p l e s c r i p t   h e l p e r s "   " r u n   t m p   f i l e "   " d o  ; o   # $���� 0 	tmpdofile 	tmpDoFile9 m   % &>> �??  "7 o   ' (��
�� 
ret ��  ��   4    ��@
�� 
pcap@ o    ���� 0 	stataname 	stataName��  ��   m     AA�                                                                                  sevs  alis    �  	Tucholsky                  �:��H+   OhSystem Events.app                                               P��7��        ����  	                CoreServices    �:�      �8'7     Oh Og� Og�  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��   BCB l     ��������  ��  ��  C DED i    FGF I      ��H���� 0 pastetmpstata pasteTmpStataH IJI o      ���� 0 	stataname 	stataNameJ K��K o      ���� 0 pasteme pasteMe��  ��  G k     tLL MNM q      OO ������ 0 oldclipboard oldClipBoard��  N PQP r     RSR I    ������
�� .JonsgClp****    ��� null��  ��  S o      ���� 0 oldclipboard oldClipBoardQ TUT Q    nVWXV k    JYY Z[Z I   ��\��
�� .JonspClpnull���     ****\ o    ���� 0 pasteme pasteMe��  [ ]��] O    J^_^ Z    I`a����` 1    ��
�� 
uiena O    Ebcb k   # Ddd efe I  # *��gh
�� .prcskprsnull���    utxtg m   # $ii �jj  4h ��k��
�� 
faalk m   % &��
�� eMdsKcmd��  f lml l  + +��no��  n  delay 1   o �pp  d e l a y   1m qrq I  + <��s��
�� .prcsclicuiel    ��� uiels n  + 8tut 4   5 8��v
�� 
menIv l 	 6 7w����w m   6 7xx �yy 
 P a s t e��  ��  u n   + 5z{z 4   2 5��|
�� 
menE| m   3 4}} �~~  E d i t{ n  + 2� 4   / 2���
�� 
mbri� m   0 1�� ���  E d i t� 4   + /���
�� 
mbar� m   - .���� ��  r ��� l  = =������  � > 8 added delay when seeing odd behavior on machine at work   � ��� p   a d d e d   d e l a y   w h e n   s e e i n g   o d d   b e h a v i o r   o n   m a c h i n e   a t   w o r k� ��� l  = =������  � U O it seems that a delay of under 0.2 seconds makes things weird on fast machines   � ��� �   i t   s e e m s   t h a t   a   d e l a y   o f   u n d e r   0 . 2   s e c o n d s   m a k e s   t h i n g s   w e i r d   o n   f a s t   m a c h i n e s� ��� l  = =������  �  
 delay 0.2   � ���    d e l a y   0 . 2� ���� I  = D�����
�� .prcskprsnull���    utxt� o   = @��
�� 
ret ��  ��  c 4     ���
�� 
pcap� o    ���� 0 	stataname 	stataName��  ��  _ m    ���                                                                                  sevs  alis    �  	Tucholsky                  �:��H+   OhSystem Events.app                                               P��7��        ����  	                CoreServices    �:�      �8'7     Oh Og� Og�  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  ��  W R      ������
�� .ascrerr ****      � ****��  ��  X k   R n�� ��� I  R W�����
�� .JonspClpnull���     ****� o   R S���� 0 oldclipboard oldClipBoard��  � ���� O   X n��� I  ^ m����
�� .sysodlogaskr        TEXT� m   ^ a�� ��� V H a d   t r o u b l e   p a s t i n g   t o   S t a t a   c o m m a n d   w i n d o w� �����
�� 
btns� J   d i�� ���� m   d g�� ���  C a n c e l��  ��  � m   X [���                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  U ��� I  o t�~��}
�~ .JonspClpnull���     ****� o   o p�|�| 0 oldclipboard oldClipBoard�}  �  E ��� l     �{�z�y�{  �z  �y  � ��� i    ��� I      �x��w�x "0 stripblanklines stripBlankLines� ��v� o      �u�u 0 thetext theText�v  �w  � k     i�� ��� q      �� �t��t 0 theparas theParas� �s�r�s 0 thepara thePara�r  � ��� r     ��� l    ��q�p� n     ��� 2   �o
�o 
cpar� o     �n�n 0 thetext theText�q  �p  � o      �m�m 0 theparas theParas� ��� r    
��� J    �l�l  � o      �k�k 0 thecleanstuff theCleanStuff� ��� X    ^��j�� k    Y�� ��� r    ��� m    �i
�i boovtrue� o      �h�h 0 eraseme  � ��� X    I��g�� Z   1 D���f�e� H   1 8�� E  1 7��� J   1 5�� ��� m   1 2�� ���   � ��d� m   2 3�� ���  	�d  � o   5 6�c�c 0 achar aChar� k   ; @�� ��� r   ; >��� m   ; <�b
�b boovfals� o      �a�a 0 eraseme  � ��`�  S   ? @�`  �f  �e  �g 0 achar aChar� n   " %��� 2   # %�_
�_ 
cha � o   " #�^�^ 0 thepara thePara� ��]� Z   J Y���\�[� H   J L�� o   J K�Z�Z 0 eraseme  � r   O U��� l  O R��Y�X� c   O R��� o   O P�W�W 0 thepara thePara� m   P Q�V
�V 
TEXT�Y  �X  � l     ��U�T� n      ���  ;   S T� o   R S�S�S 0 thecleanstuff theCleanStuff�U  �T  �\  �[  �]  �j 0 thepara thePara� o    �R�R 0 theparas theParas� ��� r   _ d��� o   _ `�Q
�Q 
ret � l     ��P�O� 1   ` c�N
�N 
txdl�P  �O  � ��M� L   e i�� l  e h��L�K� c   e h��� o   e f�J�J 0 thecleanstuff theCleanStuff� m   f g�I
�I 
TEXT�L  �K  �M  � ��� l     �H�G�F�H  �G  �F  � ��E� l     �D�C�B�D  �C  �B  �E       �A�� �@�?�>�=�<�A  � �;�:�9�8�7�6�5�4�3�2�1�0�/�.
�; .aevtoappnull  �   � ****�: 0 badfirstarg badFirstArg�9 0 domenu doMenu�8 0 
dotmpstata 
doTmpStata�7 "0 createmenuitems createMenuItems�6 0 pastetmpstata pasteTmpStata�5 "0 stripblanklines stripBlankLines�4 0 	thestatas 	theStatas�3 0 thestataname theStataName�2  �1  �0  �/  �.  � �- �,�+	�*
�- .aevtoappnull  �   � ****�, 0 args  �+   �)�(�'�&�%�$�#�) 0 args  �( 0 numargs numArgs�' 0 pasteme pasteMe�& 0 dothis doThis�% 0 	tmpdofile 	tmpDoFile�$ 0 howmany howMany�# $0 defaulttmpdofile defaultTmpDoFile	 # 6�"�! ] `�  w���� � � �� �� ��
� ���� � � ����A��
�" 
leng
�! 
cobj�  0 badfirstarg badFirstArg�  �  
� .JonsgClp****    ��� null� "0 stripblanklines stripBlankLines
� 
btns
� .sysodlogaskr        TEXT
� 
prcs
  
� 
pnam� 0 	thestatas 	theStatas
� .corecnte****       ****
� .sysobeepnull��� ��� long� 0 thestataname theStataName
� 
capp
� .miscactvnull��� ��� null� 0 domenu doMenu� 0 pastetmpstata pasteTmpStata�*.�E�O��,E�O @��k/E�O��lv� 
)j+ Y hO�k ��l/E�O��  �E�Y hY �E�W X  )j+ O)*j 	k+ 
E�O��  � ���kvl UY hOa  *a -a [a ,\Za @1E` UO_ j E�O�j  � *j Oa �a kvl UY 6�k � a �a kvl UOPY hOa  _ �k/a ,E` UO*a _ / *j UO�a    )_ �l+ !Y *_ �l+ "OP  �S���� 0 badfirstarg badFirstArg�  �     _X�]�

� 
btns
�
 .sysodlogaskr        TEXT� � ���kvl U �	e����	 0 domenu doMenu� ��   ��� 0 	stataname 	stataName� 0 	tmpdofile 	tmpDoFile�   ��� ��� 0 	stataname 	stataName� 0 	tmpdofile 	tmpDoFile�  
0 tmpdir  �� "0 stupidapplefile stupidAppleFile u���������������������������������������������
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
�� .miscactvnull��� ��� null�� 0 
dotmpstata 
doTmpStata�� "0 createmenuitems createMenuItems
�� .sysodelanull��� ��� nmbr� ��j E�O��%E�O*�/E�O .��el O��jl O*j �l 	O��l 	O�j W X  �j O� �a a kvl UO*a �/ *j UO *�k+ W :X  *��l+ Okj O *�k+ W X  � a a a kvl U ����������� 0 
dotmpstata 
doTmpStata�� ����   ���� 0 	stataname 	stataName��   ���� 0 	stataname 	stataName ���������������
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
�� .prcsclicuiel    ��� uiel�� 0� ,*�,E $*�/ *�k/��/�k/��/�k/��/j 
UY hU ���������� "0 createmenuitems createMenuItems�� ����   ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile��   ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile A����*������2��<>
�� 
uien
�� 
pcap
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���    utxt
�� 
ret �� 4� 0*�,E (*�/ ���l O��%j O�%�%�%j UY hU ��G�������� 0 pastetmpstata pasteTmpStata�� ����   ������ 0 	stataname 	stataName�� 0 pasteme pasteMe��   �������� 0 	stataname 	stataName�� 0 pasteme pasteMe�� 0 oldclipboard oldClipBoard ���������i�������������}��x���������������
�� .JonsgClp****    ��� null
�� .JonspClpnull���     ****
�� 
uien
�� 
pcap
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���    utxt
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicuiel    ��� uiel
�� 
ret ��  ��  
�� 
btns
�� .sysodlogaskr        TEXT�� u*j  E�O D�j O� 6*�,E .*�/ #���l O*�k/��/��/��/j O_ j UY hUW #X  �j Oa  a a a kvl UO�j  ����������� "0 stripblanklines stripBlankLines�� ����   ���� 0 thetext theText��   �������������� 0 thetext theText�� 0 theparas theParas�� 0 thepara thePara�� 0 thecleanstuff theCleanStuff�� 0 eraseme  �� 0 achar aChar 
������������������
�� 
cpar
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
cha 
�� 
TEXT
�� 
ret 
�� 
txdl�� j��-E�OjvE�O R�[��l kh eE�O )��-[��l kh ��lv� 
fE�OY h[OY��O� ��&�6FY h[OY��O�*�,FO��& ����      ���
�� 
pcap �    S t a t a M P �!!  S t a t a M P�@  �?  �>  �=  �<   ascr  ��ޭ