FasdUAS 1.101.10   ��   ��    k             l      ��  ��    ( " version 2.1.3 -  August 29, 2016      � 	 	 D   v e r s i o n   2 . 1 . 3   -     A u g u s t   2 9 ,   2 0 1 6     
  
 l      ��  ��    , & sends contents of clipboard to Stata      �   L   s e n d s   c o n t e n t s   o f   c l i p b o a r d   t o   S t a t a        l      ��  ��    U O allows running from command window, as a temporary do-file or via a menu item      �   �   a l l o w s   r u n n i n g   f r o m   c o m m a n d   w i n d o w ,   a s   a   t e m p o r a r y   d o - f i l e   o r   v i a   a   m e n u   i t e m        l      ��  ��    N H applescript bug: single bar in front of "include" causes compile error      �   �   a p p l e s c r i p t   b u g :   s i n g l e   b a r   i n   f r o n t   o f   " i n c l u d e "   c a u s e s   c o m p i l e   e r r o r        l      ��  ��    W Q args are: { "command" | "menu" | "dofile" || "include" } [ name-of-tmp-dofile ]      �   �   a r g s   a r e :   {   " c o m m a n d "   |   " m e n u "   |   " d o f i l e "   | |   " i n c l u d e "   }   [   n a m e - o f - t m p - d o f i l e   ]        i        !   I     �� "��
�� .aevtoappnull  �   � **** " o      ���� 0 args  ��   ! k    � # #  $ % $ l     �� & '��   &  - initializations    ' � ( ( " -   i n i t i a l i z a t i o n s %  ) * ) l     �� + ,��   + � �- NOTE: all vars using in the run handler MUST be local to keep this file from resaving itself ad-nauseum, messing up the git repo    , � - - -   N O T E :   a l l   v a r s   u s i n g   i n   t h e   r u n   h a n d l e r   M U S T   b e   l o c a l   t o   k e e p   t h i s   f i l e   f r o m   r e s a v i n g   i t s e l f   a d - n a u s e u m ,   m e s s i n g   u p   t h e   g i t   r e p o *  . / . q       0 0 �� 1�� 0 numargs numArgs 1 �� 2�� 0 pasteme pasteMe 2 �� 3�� 0 dothis doThis 3 ������ 0 	tmpdofile 	tmpDoFile��   /  4 5 4 q       6 6 �� 7�� 0 howmanystatas howManyStatas 7 �� 8�� 0 	thestatas 	theStatas 8 �� 9�� 0 thestataname theStataName 9 ������ "0 thestataversion theStataVersion��   5  : ; : q       < < �� =�� 0 theolddelims theOldDelims = ������ 0 theosxversion theOSXVersion��   ;  > ? > q       @ @ ������ $0 defaulttmpdofile defaultTmpDoFile��   ?  A B A r      C D C m      E E � F F  f e e d S t a t a . d o D o      ���� $0 defaulttmpdofile defaultTmpDoFile B  G H G q     I I ������ 0 uiok UIOK��   H  J K J l   �� L M��   L . ( first check that UI scripting will work    M � N N P   f i r s t   c h e c k   t h a t   U I   s c r i p t i n g   w i l l   w o r k K  O P O O     Q R Q Z     S T�� U S 1    ��
�� 
uien T r     V W V m    ��
�� boovtrue W o      ���� 0 uiok UIOK��   U r     X Y X m    ��
�� boovfals Y o      ���� 0 uiok UIOK R m     Z Z�                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��   P  [�� [ l  � \ ] ^ \ Z   � _ `�� a _ H     b b o    ���� 0 uiok UIOK ` O    k c d c k   # j e e  f g f r   # , h i h c   # * j k j l  # ( l���� l n  # ( m n m I   $ (�������� 0 getosxversion getOSXversion��  ��   n  f   # $��  ��   k m   ( )��
�� 
long i o      ���� 0 theosxversion theOSXVersion g  o�� o Z   - j p q�� r p B   - 0 s t s o   - .���� 0 theosxversion theOSXVersion t m   . /���� 	 q k   3 K u u  v w v I  3 8������
�� .miscactvnull��� ��� null��  ��   w  x y x r   9 A z { z 4   9 =�� |
�� 
xppb | m   ; < } } � ~ ~ H c o m . a p p l e . p r e f e r e n c e . u n i v e r s a l a c c e s s { 1   = @��
�� 
xpcp y  ��  I  B K�� � �
�� .sysodlogaskr        TEXT � m   B C � � � � � � W h e n   S y s t e m   P r e f e r e n c e s   o p e n s ,   b e   s u r e   t h a t   ' E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s '   i s   c h e c k e d ,   t h e n   t r y   a g a i n . � �� ���
�� 
btns � J   D G � �  ��� � m   D E � � � � �  O K��  ��  ��  ��   r k   N j � �  � � � I  N S������
�� .miscactvnull��� ��� null��  ��   �  � � � r   T \ � � � 4   T X�� �
�� 
xppb � m   V W � � � � � : c o m . a p p l e . p r e f e r e n c e . s e c u r i t y � 1   X [��
�� 
xpcp �  ��� � I  ] j�� � �
�� .sysodlogaskr        TEXT � m   ] ` � � � � �j W h e n   t h e   S e c u r i t y   &   P r i v a c y   p r e f e r e n c e   p a n e   o p e n s ,   s e l e c t   t h e   P r i v a c y   t a b ,   t h e n   s e l e c t   t h e   A c c e s s i b i l i t y   i t e m   a n d   b e   s u r e   y o u r   v e r s i o n   o f   E m a c s   i s   c h e c k e d .   W h e n   f i n i s h e d ,   t r y   a g a i n . � �� ���
�� 
btns � J   a f � �  ��� � m   a d � � � � �  O K��  ��  ��  ��   d m      � ��                                                                                  sprf  alis    t  	Tucholsky                  �Y�H+     �System Preferences.app                                           ������        ����  	                Applications    �Y?�      ���       �  .Tucholsky:Applications: System Preferences.app  .  S y s t e m   P r e f e r e n c e s . a p p   	 T u c h o l s k y  #Applications/System Preferences.app   / ��  ��   a k   n� � �  � � � l  n n�� � ���   � ' ! check proper number of arguments    � � � � B   c h e c k   p r o p e r   n u m b e r   o f   a r g u m e n t s �  � � � r   n u � � � l  n s ����� � n   n s � � � 1   o s��
�� 
leng � o   n o���� 0 args  ��  ��   � o      ���� 0 numargs numArgs �  � � � Q   v � � � � � k   y � � �  � � � r   y � � � � n   y  � � � 4   z �� �
�� 
cobj � m   } ~����  � o   y z���� 0 args   � o      ���� 0 dothis doThis �  � � � Z   � � � ����� � H   � � � � E   � � � � � J   � � � �  � � � m   � � � � � � �  c o m m a n d �  � � � m   � � � � � � �  m e n u �  � � � m   � � � � � � �  d o f i l e �  ��� � m   � � � � � � �  i n c l u d e��   � o   � ����� 0 dothis doThis � n  � � � � � I   � ��������� 0 badfirstarg badFirstArg��  ��   �  f   � ���  ��   �  ��� � Z   � � � ��� � � ?   � � � � � o   � ����� 0 numargs numArgs � m   � �����  � k   � � � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 args   � o      ���� 0 	tmpdofile 	tmpDoFile �  ��� � Z   � � � ����� � =   � � � � � o   � ����� 0 	tmpdofile 	tmpDoFile � m   � � � � � � �   � r   � � � � � o   � ����� $0 defaulttmpdofile defaultTmpDoFile � o      ���� 0 	tmpdofile 	tmpDoFile��  ��  ��  ��   � r   � � � � � o   � ����� $0 defaulttmpdofile defaultTmpDoFile � o      ���� 0 	tmpdofile 	tmpDoFile��   � R      ������
�� .ascrerr ****      � ****��  ��   � l  � � � � � � n  � � � � � I   � ��������� 0 badfirstarg badFirstArg��  ��   �  f   � � �   no arguments    � � � �    n o   a r g u m e n t s �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � U O grab clipboard, strip totally blank lines, to check if there is anything to do    � � � � �   g r a b   c l i p b o a r d ,   s t r i p   t o t a l l y   b l a n k   l i n e s ,   t o   c h e c k   i f   t h e r e   i s   a n y t h i n g   t o   d o �  � � � l  � ��� � ���   � 9 3   Aside: perhaps this should be on the emacs side?    � � � � f       A s i d e :   p e r h a p s   t h i s   s h o u l d   b e   o n   t h e   e m a c s   s i d e ? �  � � � l  � ��� � ���   � X R   for now it will stay here... could be wrong behavior, plus it is simpler to do     � �   �       f o r   n o w   i t   w i l l   s t a y   h e r e . . .   c o u l d   b e   w r o n g   b e h a v i o r ,   p l u s   i t   i s   s i m p l e r   t o   d o   �  l  � �����         in Applescript (!)    � .           i n   A p p l e s c r i p t   ( ! )  r   � �	 n  � �

 I   � ������� "0 stripblanklines stripBlankLines �� I  � �������
�� .JonsgClp****    ��� null��  ��  ��  ��    f   � �	 o      ���� 0 pasteme pasteMe  Z   ����� =   � � o   � ����� 0 pasteme pasteMe m   � � �   O   � � I  � ���
�� .sysodlogaskr        TEXT m   � � � , N o t h i n g   t o   s e n d   S t a t a ! ���
�� 
btns J   � � �~ m   � � �    C a n c e l�~  �   m   � �!!�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  ��   "#" l �}�|�{�}  �|  �{  # $%$ l �z&'�z  & \ V in the best of worlds, it would be possible to allow looping through the instances of   ' �(( �   i n   t h e   b e s t   o f   w o r l d s ,   i t   w o u l d   b e   p o s s i b l e   t o   a l l o w   l o o p i n g   t h r o u g h   t h e   i n s t a n c e s   o f% )*) l �y+,�y  + 5 /   Stata to send the same code to each instance   , �-- ^       S t a t a   t o   s e n d   t h e   s a m e   c o d e   t o   e a c h   i n s t a n c e* ./. O  010 r  232 l 4�x�w4 6 565 2  �v
�v 
prcs6 E  787 1  �u
�u 
pnam8 m  99 �:: 
 S t a t a�x  �w  3 o      �t�t 0 	thestatas 	theStatas1 m  ;;�                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  / <=< l �s�r�q�s  �r  �q  = >?> r  %@A@ l #B�p�oB I #�nC�m
�n .corecnte****       ****C o  �l�l 0 	thestatas 	theStatas�m  �p  �o  A o      �k�k 0 howmanystatas howManyStatas? DED Z  &{FG�jHF = &)IJI o  &'�i�i 0 howmanystatas howManyStatasJ m  '(�h�h  G O  ,FKLK k  2EMM NON I 27�g�f�e
�g .sysobeepnull��� ��� long�f  �e  O P�dP I 8E�cQR
�c .sysodlogaskr        TEXTQ m  8;SS �TT " N o   S t a t a   r u n n i n g !R �bU�a
�b 
btnsU J  <AVV W�`W m  <?XX �YY  C a n c e l�`  �a  �d  L m  ,/ZZ�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  �j  H k  I{[[ \]\ Z  Ii^_�_�^^ ?  IL`a` o  IJ�]�] 0 howmanystatas howManyStatasa m  JK�\�\ _ k  Oebb cdc O  Ocefe I Ub�[gh
�[ .sysodlogaskr        TEXTg m  UXii �jj @ n o t h i n g   f o r   m u l t i p l e   s t a t a ' s   y e th �Zk�Y
�Z 
btnsk J  Y^ll m�Xm m  Y\nn �oo  C a n c e l�X  �Y  f m  ORpp�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  d qrq l dd�Wst�W  s : 4 Stata can use the same name for different processes   t �uu h   S t a t a   c a n   u s e   t h e   s a m e   n a m e   f o r   d i f f e r e n t   p r o c e s s e sr vwv l dd�Vxy�V  x J D so... the it is impossible to cycle through Stata processes by name   y �zz �   s o . . .   t h e   i t   i s   i m p o s s i b l e   t o   c y c l e   t h r o u g h   S t a t a   p r o c e s s e s   b y   n a m ew {�U{ l  dd�T|}�T  | � � tell application "System Events"					set theStatas to (the file of every process whose name contains "Stata")				 end tell				repeat with aStata in theStatas				end repeat
				   } �~~j   t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 	 	 	 s e t   t h e S t a t a s   t o   ( t h e   f i l e   o f   e v e r y   p r o c e s s   w h o s e   n a m e   c o n t a i n s   " S t a t a " )  	 	 	 	   e n d   t e l l  	 	 	 	 r e p e a t   w i t h   a S t a t a   i n   t h e S t a t a s  	 	 	 	 e n d   r e p e a t 
 	 	 	 	�U  �_  �^  ] � l jj�S���S  � : 4 know there is exactly one instance of Stata running   � ��� h   k n o w   t h e r e   i s   e x a c t l y   o n e   i n s t a n c e   o f   S t a t a   r u n n i n g� ��� l jj�R���R  �   can finally get to work   � ��� 0   c a n   f i n a l l y   g e t   t o   w o r k� ��Q� O  j{��� r  nz��� l nx��P�O� l nx��N�M� n  nx��� 1  tx�L
�L 
pnam� l nt��K�J� n  nt��� 4 ot�I�
�I 
cobj� m  rs�H�H � o  no�G�G 0 	thestatas 	theStatas�K  �J  �N  �M  �P  �O  � o      �F�F 0 thestataname theStataName� m  jk���                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �Q  E ��� l ||�E�D�C�E  �D  �C  � ��� l ||�B���B  � $  Stata *must* be made active		   � ��� <   S t a t a   * m u s t *   b e   m a d e   a c t i v e 	 	� ��� O  |���� k  ���� ��� r  ����� l ����A�@� n  ����� 1  ���?
�? 
bnid� l ����>�=� 4  ���<�
�< 
prcs� o  ���;�; 0 thestataname theStataName�>  �=  �A  �@  � o      �:�: "0 thestataversion theStataVersion� ��� r  ����� n ����� 1  ���9
�9 
txdl� 1  ���8
�8 
ascr� o      �7�7 0 theolddelims theOldDelims� ��� r  ����� J  ���� ��6� m  ���� ���  c o m . s t a t a . s t a t a�6  � n     ��� 1  ���5
�5 
txdl� 1  ���4
�4 
ascr� ��� r  ����� l ����3�2� n  ����� 4 ���1�
�1 
citm� m  ���0�0��� o  ���/�/ "0 thestataversion theStataVersion�3  �2  � o      �.�. "0 thestataversion theStataVersion� ��� r  ����� o  ���-�- 0 theolddelims theOldDelims� n     ��� 1  ���,
�, 
txdl� 1  ���+
�+ 
ascr� ��*� r  ����� m  ���)
�) boovtrue� n      ��� 1  ���(
�( 
pisf� 4  ���'�
�' 
prcs� l ����&�%� o  ���$�$ 0 thestataname theStataName�&  �%  �*  � m  |}���                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  � ��� l ���#�"�!�#  �"  �!  � �� � Z  ������� = ����� o  ���� 0 dothis doThis� m  ���� ���  c o m m a n d� Z  ������� @  ����� o  ���� "0 thestataversion theStataVersion� m  ���� � n ����� I  ������  0 dostatacommand doStataCommand� ��� o  ���� 0 thestataname theStataName� ��� o  ���� 0 pasteme pasteMe�  �  �  f  ���  � n ����� I  ������ 0 pastetmpstata pasteTmpStata� ��� o  ���� 0 thestataname theStataName� ��� o  ���� 0 pasteme pasteMe�  �  �  f  ���  � n ����� I  ������ 0 dotmpdofile doTmpDofile� ��� o  ���� 0 thestataname theStataName� ��� o  ���� 0 	tmpdofile 	tmpDoFile� ��� o  ���� 0 dothis doThis�  �  �  f  ���    ] ' !- from test of UI being turned on    ^ ��� B -   f r o m   t e s t   o f   U I   b e i n g   t u r n e d   o n��    ��� l     �
�	��
  �	  �  � ��� i    ��� I      ���� 0 badfirstarg badFirstArg�  �  � O     ��� I   ���
� .sysodlogaskr        TEXT� m       � \ T h e   f i r s t   a r g u m e n t   m u s t   b e   " c o m m a n d "   o r   " m e n u "� ��
� 
btns J    	 � m     �  C a n c e l�  �  � m     �                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  � 	 l     � �����   ��  ��  	 

 i     I      ������ 0 dotmpdofile doTmpDofile  o      ���� 0 	stataname 	stataName  o      ���� 0 	tmpdofile 	tmpDoFile �� o      ���� 0 dowhat doWhat��  ��   k       l     ����   K E if multiple instances ever work, be sure this gets written just once    � �   i f   m u l t i p l e   i n s t a n c e s   e v e r   w o r k ,   b e   s u r e   t h i s   g e t s   w r i t t e n   j u s t   o n c e  q       ���� 
0 tmpdir   ������ "0 stupidapplefile stupidAppleFile��    l     �� !��    X R need to change this, because it changes the working directory in Stata on the Mac   ! �"" �   n e e d   t o   c h a n g e   t h i s ,   b e c a u s e   i t   c h a n g e s   t h e   w o r k i n g   d i r e c t o r y   i n   S t a t a   o n   t h e   M a c #$# r     %&% I    ��'��
�� .sysoexecTEXT���     TEXT' m     (( �)) 8 g e t c o n f   D A R W I N _ U S E R _ T E M P _ D I R��  & o      ���� 
0 tmpdir  $ *+* r    ,-, l   .����. b    /0/ o    	���� 
0 tmpdir  0 o   	 
���� 0 	tmpdofile 	tmpDoFile��  ��  - o      ���� 0 	tmpdofile 	tmpDoFile+ 121 l   ��34��  3 < 6 need applescript-style file name to write to the file   4 �55 l   n e e d   a p p l e s c r i p t - s t y l e   f i l e   n a m e   t o   w r i t e   t o   t h e   f i l e2 676 r    898 4    ��:
�� 
psxf: o    ���� 0 	tmpdofile 	tmpDoFile9 o      ���� "0 stupidapplefile stupidAppleFile7 ;<; Q    a=>?= k    A@@ ABA I   ��CD
�� .rdwropenshor       fileC o    ���� "0 stupidapplefile stupidAppleFileD ��E��
�� 
permE m    ��
�� boovtrue��  B FGF I    '��HI
�� .rdwrseofnull���     ****H o     !���� "0 stupidapplefile stupidAppleFileI ��J��
�� 
set2J m   " #����  ��  G KLK I  ( 3��MN
�� .rdwrwritnull���     ****M l  ( -O����O I  ( -������
�� .JonsgClp****    ��� null��  ��  ��  ��  N ��P��
�� 
refnP o   . /���� "0 stupidapplefile stupidAppleFile��  L QRQ I  4 ;��ST
�� .rdwrwritnull���     ****S o   4 5��
�� 
ret T ��U��
�� 
refnU o   6 7���� "0 stupidapplefile stupidAppleFile��  R V��V I  < A��W��
�� .rdwrclosnull���     ****W o   < =���� "0 stupidapplefile stupidAppleFile��  ��  > R      ������
�� .ascrerr ****      � ****��  ��  ? k   I aXX YZY I  I N��[��
�� .rdwrclosnull���     ****[ o   I J���� "0 stupidapplefile stupidAppleFile��  Z \��\ O   O a]^] I  S `��_`
�� .sysodlogaskr        TEXT_ m   S Taa �bb L H a d   t r o u b l e   w i t h   t h e   t e m p o r a r y   d o - f i l e` ��c��
�� 
btnsc J   W \dd e��e m   W Zff �gg  C a n c e l��  ��  ^ m   O Phh�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  < iji l  b b��kl��  k #  applescript really is a pita   l �mm :   a p p l e s c r i p t   r e a l l y   i s   a   p i t aj non O   b qpqp I  k p������
�� .miscactvnull��� ��� null��  ��  q 4   b h��r
�� 
cappr o   f g���� 0 	stataname 	stataNameo s��s Z   r tu��vt =   r wwxw o   r s���� 0 dowhat doWhatx m   s vyy �zz  m e n uu Q   z �{|}{ I   } ���~���� 0 	doviamenu 	doViaMenu~ �� o   ~ ���� 0 	stataname 	stataName��  ��  | R      ������
�� .ascrerr ****      � ****��  ��  } k   � ��� ��� I   � �������� "0 createmenuitems createMenuItems� ��� o   � ����� 0 	stataname 	stataName� ���� o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  � ��� l  � �������  � 8 2 need to be sure the menu item exists on first try   � ��� d   n e e d   t o   b e   s u r e   t h e   m e n u   i t e m   e x i s t s   o n   f i r s t   t r y� ��� I  � ������
�� .sysodelanull��� ��� nmbr� m   � ����� ��  � ���� Q   � ����� I   � �������� 0 	doviamenu 	doViaMenu� ���� o   � ����� 0 	stataname 	stataName��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � O   � ���� I  � �����
�� .sysodlogaskr        TEXT� m   � ��� ��� v S o m e t h i n g   w e n t   w r o n g . . .   i s   y o u r   s t a t a   v e r s i o n   s e t   p r o p e r l y ?� �����
�� 
btns� J   � ��� ���� m   � ��� ���  C a n c e l��  ��  � m   � ����                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  ��  v l  � ���� Z   � ������ =   � ���� o   � ����� 0 dowhat doWhat� m   � ��� ���  i n c l u d e� Q   � ����� n  � ���� I   � �������� 0 pastetmpstata pasteTmpStata� ��� o   � ����� 0 	stataname 	stataName� ���� b   � ���� m   � ��� ���  i n c l u d e  � o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  �  f   � �� R      ������
�� .ascrerr ****      � ****��  ��  � O   � ���� I  � �����
�� .sysodlogaskr        TEXT� m   � ��� ��� \ H a d   t r o u b l e   r u n n i n g   v i a   t e m p o r a r y   i n c l u d e   f i l e� �����
�� 
btns� J   � ��� ���� m   � ��� ���  C a n c e l��  ��  � m   � ����                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  � l  � ���� Q   � ���� k   ��� ��� l  � �������  � = 7 'open' changes directory as an unavoidable side-effect   � ��� n   ' o p e n '   c h a n g e s   d i r e c t o r y   a s   a n   u n a v o i d a b l e   s i d e - e f f e c t� ��� l  � �������  �   open stupidAppleFile   � ��� *   o p e n   s t u p i d A p p l e F i l e� ���� n  ���� I   �������� 0 pastetmpstata pasteTmpStata� ��� o   � ����� 0 	stataname 	stataName� ���� b   � ��� m   � ��� ���  d o  � o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  �  f   � ���  � R      ������
�� .ascrerr ****      � ****��  ��  � O   ��� I ����
�� .sysodlogaskr        TEXT� m  �� ��� R H a d   t r o u b l e   r u n n i n g   v i a   t e m p o r a r y   d o - f i l e� ����
�� 
btns� J  �� ��~� m  �� ���  C a n c e l�~  �  � m  ���                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  �   doing via dofile   � ��� "   d o i n g   v i a   d o f i l e� I C doing via dofile or include--- needs fixing for multiple instances   � ��� �   d o i n g   v i a   d o f i l e   o r   i n c l u d e - - -   n e e d s   f i x i n g   f o r   m u l t i p l e   i n s t a n c e s��   ��� l     �}�|�{�}  �|  �{  � ��� i    ��� I      �z��y�z 0 	doviamenu 	doViaMenu� ��x� o      �w�w 0 	stataname 	stataName�x  �y  � O     /��� Z    .���v�u� 1    �t
�t 
uien� O    *��� I   )�s��r
�s .prcsclicnull��� ��� uiel� n    %��� 4   " %�q�
�q 
menI� m   # $   �  r u n   t m p   f i l e� n    " 4    "�p
�p 
menE m     !�o�o  n     4    �n
�n 
menI m     �		 & A p p l e s c r i p t   h e l p e r s n    

 4    �m
�m 
menE m    �l�l  n     4    �k
�k 
mbri m     �  U s e r 4    �j
�j 
mbar m    �i�i �r  � 4    �h
�h 
pcap o    �g�g 0 	stataname 	stataName�v  �u  � m     �                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �  l     �f�e�d�f  �e  �d    i     I      �c�b�c "0 createmenuitems createMenuItems  o      �a�a 0 	stataname 	stataName �` o      �_�_ 0 	tmpdofile 	tmpDoFile�`  �b   O     G  Z    F!"�^�]! 1    �\
�\ 
uien" O    B#$# k    A%% &'& l   �[()�[  ( * $ get the command window to the front   ) �** H   g e t   t h e   c o m m a n d   w i n d o w   t o   t h e   f r o n t' +,+ I   #�Z-�Y
�Z .prcsclicnull��� ��� uiel- n   ./. 4    �X0
�X 
menI0 m    11 �22  C o m m a n d/ n    343 4    �W5
�W 
menE5 m    66 �77  W i n d o w4 n   898 4    �V:
�V 
mbri: m    ;; �<<  W i n d o w9 4    �U=
�U 
mbar= m    �T�T �Y  , >?> I  $ +�S@�R
�S .prcskprsnull���     ctxt@ b   $ 'ABA m   $ %CC �DD r w i n d o w   m e n u   a p p e n d   s u b m e n u   " s t U s e r "   " A p p l e s c r i p t   h e l p e r s "B o   % &�Q
�Q 
ret �R  ? EFE I  , 7�PG�O
�P .prcskprsnull���     ctxtG b   , 3HIH b   , 1JKJ b   , /LML m   , -NN �OO � w i n d o w   m e n u   a p p e n d   i t e m   " A p p l e s c r i p t   h e l p e r s "   " r u n   t m p   f i l e "   " d o  M o   - .�N�N 0 	tmpdofile 	tmpDoFileK m   / 0PP �QQ  "I o   1 2�M
�M 
ret �O  F R�LR I  8 A�KS�J
�K .prcskprsnull���     ctxtS b   8 =TUT m   8 ;VV �WW & w i n d o w   m e n u   r e f r e s hU o   ; <�I
�I 
ret �J  �L  $ 4    �HX
�H 
pcapX o    �G�G 0 	stataname 	stataName�^  �]    m     YY�                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��   Z[Z l     �F�E�D�F  �E  �D  [ \]\ i    ^_^ I      �C`�B�C  0 dostatacommand doStataCommand` aba o      �A�A 0 	stataname 	stataNameb c�@c o      �?�? 0 
thecommand 
theCommand�@  �B  _ Q     *defd w    ghg O    iji k    kk lml l   �>no�>  n  		activate   o �pp  	 a c t i v a t em q�=q I   �<rs
�< .STscDoCanull���     ctxtr o    �;�; 0 
thecommand 
theCommands �:t�9�: 0 addtoreview addToReviewt m    �8
�8 boovtrue�9  �=  j 4    	�7u
�7 
cappu o    �6�6 0 	stataname 	stataNameh�                                                                                  S5x8  alis    �  	Tucholsky                  �Y�H+   �aStataMP.app                                                    -�Ӷ�B        ����  	                Stata14     �Y?�      Ӷ��     �a �N �%   �  GTucholsky:Applications: AAApplications: MathTools: Stata14: StataMP.app     S t a t a M P . a p p   	 T u c h o l s k y  9Applications/AAApplications/MathTools/Stata14/StataMP.app   / ��  e R      �5�4�3
�5 .ascrerr ****      � ****�4  �3  f O    *vwv I    )�2xy
�2 .sysodlogaskr        TEXTx m     !zz �{{ l H a d   t r o u b l e   p a s s i n g   c o m m a n d ( s )   t o   S t a t a   c o m m a n d   w i n d o wy �1|�0
�1 
btns| J   " %}} ~�/~ m   " # ���  C a n c e l�/  �0  w m    ���                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ] ��� l     �.�-�,�.  �-  �,  � ��� l     �+�*�)�+  �*  �)  � ��� i    ��� I      �(��'�( 0 pastetmpstata pasteTmpStata� ��� o      �&�& 0 	stataname 	stataName� ��%� o      �$�$ 0 pasteme pasteMe�%  �'  � k     ��� ��� q      �� �#�"�# 0 oldclipboard oldClipBoard�"  � ��� r     ��� I    �!� �
�! .JonsgClp****    ��� null�   �  � o      �� 0 oldclipboard oldClipBoard� ��� Q    ����� k    h�� ��� I   ���
� .JonspClpnull���     ****� l   ���� c    ��� o    �� 0 pasteme pasteMe� m    �
� 
ctxt�  �  �  � ��� O    h��� Z    g����� 1    �
� 
uien� O    c��� k   % b�� ��� I  % 6���
� .prcsclicnull��� ��� uiel� n  % 2��� 4   / 2��
� 
menI� m   0 1�� ���  C o m m a n d� n   % /��� 4   , /��
� 
menE� m   - .�� ���  W i n d o w� n  % ,��� 4   ) ,��
� 
mbri� m   * +�� ���  W i n d o w� 4   % )��
� 
mbar� m   ' (�� �  � ��� I  7 <���
� .sysodelanull��� ��� nmbr� m   7 8�� ?ə������  � ��� I  = T�
��	
�
 .prcsclicnull��� ��� uiel� n  = P��� 4   K P��
� 
menI� l 	 L O���� m   L O�� ��� 
 P a s t e�  �  � n   = K��� 4   F K��
� 
menE� m   G J�� ���  E d i t� n  = F��� 4   A F��
� 
mbri� m   B E�� ���  E d i t� 4   = A��
� 
mbar� m   ? @�� �	  � ��� l  U U����  � > 8 added delay when seeing odd behavior on machine at work   � ��� p   a d d e d   d e l a y   w h e n   s e e i n g   o d d   b e h a v i o r   o n   m a c h i n e   a t   w o r k� ��� l  U U� ���   � U O it seems that a delay of under 0.2 seconds makes things weird on fast machines   � ��� �   i t   s e e m s   t h a t   a   d e l a y   o f   u n d e r   0 . 2   s e c o n d s   m a k e s   t h i n g s   w e i r d   o n   f a s t   m a c h i n e s� ��� I  U Z�����
�� .sysodelanull��� ��� nmbr� m   U V�� ?ə�������  � ���� I  [ b�����
�� .prcskprsnull���     ctxt� o   [ ^��
�� 
ret ��  ��  � 4    "���
�� 
pcap� o     !���� 0 	stataname 	stataName�  �  � m    ���                                                                                  sevs  alis    �  	Tucholsky                  �Y�H+     �System Events.app                                               �����        ����  	                CoreServices    �Y?�      ����       �   �   �  :Tucholsky:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �  � R      ������
�� .ascrerr ****      � ****��  ��  � k   p ��� ��� I  p u�����
�� .JonspClpnull���     ****� o   p q���� 0 oldclipboard oldClipBoard��  � ���� O   v ���� I  | �����
�� .sysodlogaskr        TEXT� m   | �� ��� V H a d   t r o u b l e   p a s t i n g   t o   S t a t a   c o m m a n d   w i n d o w� �����
�� 
btns� J   � ��� ���� m   � ��� ���  C a n c e l��  ��  � m   v y���                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  � ���� I  � ������
�� .JonspClpnull���     ****� o   � ����� 0 oldclipboard oldClipBoard��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i       I      ������ "0 stripblanklines stripBlankLines �� o      ���� 0 thetext theText��  ��   k     i  q       ���� 0 theparas theParas ��	�� 0 thepara thePara	 ��
�� 0 achar aChar
 ���� 0 thecleanstuff theCleanStuff ������ 0 eraseme  ��    r      l    ���� n      2   ��
�� 
cpar o     ���� 0 thetext theText��  ��   o      ���� 0 theparas theParas  r    
 J    ����   o      ���� 0 thecleanstuff theCleanStuff  X    ^�� k    Y  r     m    ��
�� boovtrue o      ���� 0 eraseme    !  X    I"��#" Z   1 D$%����$ H   1 8&& E  1 7'(' J   1 5)) *+* m   1 2,, �--   + .��. m   2 3// �00  	��  ( o   5 6���� 0 achar aChar% k   ; @11 232 r   ; >454 m   ; <��
�� boovfals5 o      ���� 0 eraseme  3 6��6  S   ? @��  ��  ��  �� 0 achar aChar# n   " %787 2   # %��
�� 
cha 8 o   " #���� 0 thepara thePara! 9��9 Z   J Y:;����: H   J L<< o   J K���� 0 eraseme  ; r   O U=>= l  O R?����? c   O R@A@ o   O P���� 0 thepara theParaA m   P Q��
�� 
TEXT��  ��  > l     B����B n      CDC  ;   S TD o   R S���� 0 thecleanstuff theCleanStuff��  ��  ��  ��  ��  �� 0 thepara thePara o    ���� 0 theparas theParas EFE r   _ dGHG o   _ `��
�� 
ret H l     I����I 1   ` c��
�� 
txdl��  ��  F J��J L   e iKK l  e hL����L c   e hMNM o   e f���� 0 thecleanstuff theCleanStuffN m   f g��
�� 
TEXT��  ��  ��  � OPO l     ��������  ��  ��  P Q��Q i     #RSR I      �������� 0 getosxversion getOSXversion��  ��  S k     TT UVU q      WW ������ $0 thefullosversion theFullOSVersion��  V XYX r     Z[Z m     \\ �]]  .[ l     ^����^ 1    ��
�� 
txdl��  ��  Y _`_ O    aba r   
 cdc l  
 e����e 1   
 ��
�� 
vers��  ��  d o      ���� $0 thefullosversion theFullOSVersionb m    ff�                                                                                  MACS  alis    l  	Tucholsky                  �Y�H+     �
Finder.app                                                      �d��2        ����  	                CoreServices    �Y?�      ��r       �   �   �  3Tucholsky:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ` g��g L    hh n    iji 4    ��k
�� 
citmk m    ���� j o    ���� $0 thefullosversion theFullOSVersion��  ��       ��lmnopqrstu��  l 	������������������
�� .aevtoappnull  �   � ****�� 0 badfirstarg badFirstArg�� 0 dotmpdofile doTmpDofile�� 0 	doviamenu 	doViaMenu�� "0 createmenuitems createMenuItems��  0 dostatacommand doStataCommand�� 0 pastetmpstata pasteTmpStata�� "0 stripblanklines stripBlankLines�� 0 getosxversion getOSXversionm �� !����vw��
�� .aevtoappnull  �   � ****�� 0 args  ��  v ���������������������������� 0 args  �� 0 numargs numArgs�� 0 pasteme pasteMe�� 0 dothis doThis�� 0 	tmpdofile 	tmpDoFile�� 0 howmanystatas howManyStatas�� 0 	thestatas 	theStatas�� 0 thestataname theStataName�� "0 thestataversion theStataVersion�� 0 theolddelims theOldDelims�� 0 theosxversion theOSXVersion�� $0 defaulttmpdofile defaultTmpDoFile�� 0 uiok UIOKw 8 E Z�� ���~�}�|�{ }�z ��y ��x � � ��w�v � � � ��u�t ��s�r�q�p!�ox�n9�m�lSXin�k�j�i��h�g��f�e�d�c
�� 
uien� 0 getosxversion getOSXversion
�~ 
long�} 	
�| .miscactvnull��� ��� null
�{ 
xppb
�z 
xpcp
�y 
btns
�x .sysodlogaskr        TEXT
�w 
leng
�v 
cobj�u �t 0 badfirstarg badFirstArg�s  �r  
�q .JonsgClp****    ��� null�p "0 stripblanklines stripBlankLines
�o 
prcsx  
�n 
pnam
�m .corecnte****       ****
�l .sysobeepnull��� ��� long
�k 
bnid
�j 
ascr
�i 
txdl
�h 
citm
�g 
pisf�f �e  0 dostatacommand doStataCommand�d 0 pastetmpstata pasteTmpStata�c 0 dotmpdofile doTmpDofile����E�O� *�,E eE�Y fE�UO� Q� I)j+ �&E�O�� *j O*��/*�,FO���kvl Y *j O*��/*�,FOa �a kvl UY��a ,E�O R�a k/E�Oa a a a a v� 
)j+ Y hO�k �a l/E�O�a   �E�Y hY �E�W X  )j+ O)*j k+ E�O�a   a   a !�a "kvl UY hO� *a #-a $[a %,\Za &@1E�UO�j 'E�O�j  a   *j (Oa )�a *kvl UY 4�k a   a +�a ,kvl UOPY hO� �a k/a %,E�UO� F*a #�/a -,E�O_ .a /,E�Oa 0kv_ .a /,FO�a 1i/E�O�_ .a /,FOe*a #�/a 2,FUO�a 3  �a 4 )��l+ 5Y 	)��l+ 6Y 
)���m+ 7n �b��a�`yz�_�b 0 badfirstarg badFirstArg�a  �`  y  z  �^�]
�^ 
btns
�] .sysodlogaskr        TEXT�_ � ���kvl Uo �\�[�Z{|�Y�\ 0 dotmpdofile doTmpDofile�[ �X}�X }  �W�V�U�W 0 	stataname 	stataName�V 0 	tmpdofile 	tmpDoFile�U 0 dowhat doWhat�Z  { �T�S�R�Q�P�T 0 	stataname 	stataName�S 0 	tmpdofile 	tmpDoFile�R 0 dowhat doWhat�Q 
0 tmpdir  �P "0 stupidapplefile stupidAppleFile| #(�O�N�M�L�K�J�I�H�G�F�E�D�Cha�Bf�A�@�?y�>�=�<�����;�����
�O .sysoexecTEXT���     TEXT
�N 
psxf
�M 
perm
�L .rdwropenshor       file
�K 
set2
�J .rdwrseofnull���     ****
�I .JonsgClp****    ��� null
�H 
refn
�G .rdwrwritnull���     ****
�F 
ret 
�E .rdwrclosnull���     ****�D  �C  
�B 
btns
�A .sysodlogaskr        TEXT
�@ 
capp
�? .miscactvnull��� ��� null�> 0 	doviamenu 	doViaMenu�= "0 createmenuitems createMenuItems
�< .sysodelanull��� ��� nmbr�; 0 pastetmpstata pasteTmpStata�Y!�j E�O��%E�O*�/E�O .��el O��jl O*j �l 	O��l 	O�j W X  �j O� �a a kvl UO*a �/ *j UO�a   I *�k+ W :X  *��l+ Okj O *�k+ W X  � a a a kvl UY a�a   / )�a �%l+ W X  � a a a kvl UY , )�a  �%l+ W X  � a !a a "kvl Up �:��9�8~�7�: 0 	doviamenu 	doViaMenu�9 �6��6 �  �5�5 0 	stataname 	stataName�8  ~ �4�4 0 	stataname 	stataName �3�2�1�0�/�. �-
�3 
uien
�2 
pcap
�1 
mbar
�0 
mbri
�/ 
menE
�. 
menI
�- .prcsclicnull��� ��� uiel�7 0� ,*�,E $*�/ *�k/��/�k/��/�k/��/j 
UY hUq �,�+�*���)�, "0 createmenuitems createMenuItems�+ �(��( �  �'�&�' 0 	stataname 	stataName�& 0 	tmpdofile 	tmpDoFile�*  � �%�$�% 0 	stataname 	stataName�$ 0 	tmpdofile 	tmpDoFile� Y�#�"�!� ;�6�1�C��NPV
�# 
uien
�" 
pcap
�! 
mbar
�  
mbri
� 
menE
� 
menI
� .prcsclicnull��� ��� uiel
� 
ret 
� .prcskprsnull���     ctxt�) H� D*�,E <*�/ 1*�k/��/��/��/j 
O��%j O�%�%�%j Oa �%j UY hUr �_������  0 dostatacommand doStataCommand� ��� �  ��� 0 	stataname 	stataName� 0 
thecommand 
theCommand�  � ��� 0 	stataname 	stataName� 0 
thecommand 
theCommand� h������z��
� 
capp� 0 addtoreview addToReview
� .STscDoCanull���     ctxt�  �  
� 
btns
� .sysodlogaskr        TEXT� + �Z*�/ 	��el UW X  � ���kvl 
Us �
��	�����
 0 pastetmpstata pasteTmpStata�	 ��� �  ��� 0 	stataname 	stataName� 0 pasteme pasteMe�  � ���� 0 	stataname 	stataName� 0 pasteme pasteMe� 0 oldclipboard oldClipBoard� � �������������������������������������������
�  .JonsgClp****    ��� null
�� 
ctxt
�� .JonspClpnull���     ****
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
�� .prcsclicnull��� ��� uiel
�� .sysodelanull��� ��� nmbr
�� 
ret 
�� .prcskprsnull���     ctxt��  ��  
�� 
btns
�� .sysodlogaskr        TEXT� �*j  E�O b��&j O� R*�,E J*�/ ?*�k/��/��/��/j O�j O*�k/�a /�a /�a /j O�j O_ j UY hUW #X  �j Oa  a a a kvl UO�j t ������������ "0 stripblanklines stripBlankLines�� ����� �  ���� 0 thetext theText��  � �������������� 0 thetext theText�� 0 theparas theParas�� 0 thepara thePara�� 0 achar aChar�� 0 thecleanstuff theCleanStuff�� 0 eraseme  � 
����������,/������
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
txdl�� j��-E�OjvE�O R�[��l kh eE�O )��-[��l kh ��lv� 
fE�OY h[OY��O� ��&�6FY h[OY��O�*�,FO��&u ��S���������� 0 getosxversion getOSXversion��  ��  � ���� $0 thefullosversion theFullOSVersion� \��f����
�� 
txdl
�� 
vers
�� 
citm�� �*�,FO� *�,E�UO��l/Eascr  ��ޭ