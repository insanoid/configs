FasdUAS 1.101.10   ��   ��    k             l      ��  ��   5/ "Remove tracks with lyrics out of playlist 'No Lyrics' " for iTunes
written by Herwin Lans. My fourth script, ymmv...

based on the Applescript
"Selected Tracks to New Playlist" for iTunes 2 
written by Doug Adams 
dougadams@mac.com 

This script was updated to v2.0 by Doug Adams on February 25, 2009
     � 	 	^   " R e m o v e   t r a c k s   w i t h   l y r i c s   o u t   o f   p l a y l i s t   ' N o   L y r i c s '   "   f o r   i T u n e s 
 w r i t t e n   b y   H e r w i n   L a n s .   M y   f o u r t h   s c r i p t ,   y m m v . . . 
 
 b a s e d   o n   t h e   A p p l e s c r i p t 
 " S e l e c t e d   T r a c k s   t o   N e w   P l a y l i s t "   f o r   i T u n e s   2   
 w r i t t e n   b y   D o u g   A d a m s   
 d o u g a d a m s @ m a c . c o m   
 
 T h i s   s c r i p t   w a s   u p d a t e d   t o   v 2 . 0   b y   D o u g   A d a m s   o n   F e b r u a r y   2 5 ,   2 0 0 9 
   
  
 l     ��������  ��  ��        l     ��  ��    @ : you can change the name of the "No Lyrics" playlist here:     �   t   y o u   c a n   c h a n g e   t h e   n a m e   o f   t h e   " N o   L y r i c s "   p l a y l i s t   h e r e :      j     �� �� 0 playlistname playlistName  m        �    N o   L y r i c s      l     ��  ��    C = but make sure you change it in "No Lyrics to PLaylist", too.     �   z   b u t   m a k e   s u r e   y o u   c h a n g e   i t   i n   " N o   L y r i c s   t o   P L a y l i s t " ,   t o o .      l     ��������  ��  ��        l    � ����  O     �   !   k    � " "  # $ # I   �� % &
�� .sysodlogaskr        TEXT % b     ' ( ' b     ) * ) m     + + � , , � T h i s   s c r i p t   w i l l   r e m o v e   t r a c k s   w i t h   l y r i c s   o u t   o f   t h e   p l a y l i s t   " * o    
���� 0 playlistname playlistName ( m     - - � . .  " . & �� / 0
�� 
btns / J     1 1  2 3 2 m     4 4 � 5 5  C a n c e l 3  6�� 6 m     7 7 � 8 8  O K��   0 �� 9��
�� 
dflt 9 m    ���� ��   $  :�� : Z    � ; <���� ; I   %�� =��
�� .coredoexbool        obj  = 4    !�� >
�� 
cPly > o     ���� 0 playlistname playlistName��   < k   ( � ? ?  @ A @ Y   ( t B�� C D E B Q   ? o F G�� F t   B f H I H k   D e J J  K L K r   D Q M N M l  D O O���� O n   D O P Q P 4   L O�� R
�� 
cTrk R o   M N���� 0 t   Q 4   D L�� S
�� 
cPly S o   F K���� 0 playlistname playlistName��  ��   N o      ���� 0 atrack aTrack L  T�� T Z  R e U V���� U >  R Y W X W n   R U Y Z Y 1   S U��
�� 
pLyr Z o   R S���� 0 atrack aTrack X m   U X [ [ � \ \   V I  \ a�� ]��
�� .coredelonull���    obj  ] o   \ ]���� 0 atrack aTrack��  ��  ��  ��   I m   B C����  G R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 t   C l  + 9 ^���� ^ n   + 9 _ ` _ 1   6 8��
�� 
pidx ` n   + 6 a b a 4  3 6�� c
�� 
cTrk c m   4 5������ b 4   + 3�� d
�� 
cPly d o   - 2���� 0 playlistname playlistName��  ��   D m   9 :����  E m   : ;������ A  e f e l  u u�� g h��   g  	beep    h � i i 
 	 b e e p f  j�� j I  u ��� k l
�� .sysodlogaskr        TEXT k b   u � m n m b   u ~ o p o m   u x q q � r r $ D o n e   c l e a n i n g   u p   " p o   x }���� 0 playlistname playlistName n m   ~ � s s � t t  "   p l a y l i s t l �� u v
�� 
btns u J   � � w w  x�� x m   � � y y � z z  O K��   v �� { |
�� 
dflt { m   � �����  | �� }��
�� 
givu } m   � ����� ��  ��  ��  ��  ��   ! m      ~ ~�                                                                                  hook   alis    :  Mac HD                     �L�eH+   �:
iTunes.app                                                      �b��0�        ����  	                Applications    �L�      �i1     �:  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��  ��     ��  l     ��������  ��  ��  ��       �� �  ���   � ������ 0 playlistname playlistName
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  ����  ��  ��   � ���� 0 t   �  ~ + -�� 4 7�������������������� [������ q s y����
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
cPly
�� .coredoexbool        obj 
�� 
cTrk
�� 
pidx�� �� 0 atrack aTrack
�� 
pLyr
�� .coredelonull���    obj ��  ��  
�� 
givu�� �� �� ��b   %�%���lv�k� O*�b   /j 
 q K*�b   /�i/�,Ekih   )�n*�b   /�/E�O��,a  
�j Y hoW X  h[OY��Oa b   %a %�a kv�ka �a  Y hU ascr  ��ޭ