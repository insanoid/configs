FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
"Super Remove Dead Tracks" for iTunes
written by Doug Adams
dougadams@mac.com

v2.0 april 19, 2007
-- creates a text file on desktop listing some available information from tracks that were removed

v1.5.1 march 20 2007
- tidied up code

v1.5 october 26 2005
-- prevents error when trying to delete empty Smart Playlists and/or playlist that can't be deleted (Party Shuffle, Podcasts, etc)
-- code tweaks

v1.0 sep 25 2003
-- initial release

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.dougscripts.com/itunes/

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html

     � 	 		� 
 " S u p e r   R e m o v e   D e a d   T r a c k s "   f o r   i T u n e s 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m 
 
 v 2 . 0   a p r i l   1 9 ,   2 0 0 7 
 - -   c r e a t e s   a   t e x t   f i l e   o n   d e s k t o p   l i s t i n g   s o m e   a v a i l a b l e   i n f o r m a t i o n   f r o m   t r a c k s   t h a t   w e r e   r e m o v e d 
 
 v 1 . 5 . 1   m a r c h   2 0   2 0 0 7 
 -   t i d i e d   u p   c o d e 
 
 v 1 . 5   o c t o b e r   2 6   2 0 0 5 
 - -   p r e v e n t s   e r r o r   w h e n   t r y i n g   t o   d e l e t e   e m p t y   S m a r t   P l a y l i s t s   a n d / o r   p l a y l i s t   t h a t   c a n ' t   b e   d e l e t e d   ( P a r t y   S h u f f l e ,   P o d c a s t s ,   e t c ) 
 - -   c o d e   t w e a k s 
 
 v 1 . 0   s e p   2 5   2 0 0 3 
 - -   i n i t i a l   r e l e a s e 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 h t t p : / / w w w . d o u g s c r i p t s . c o m / i t u n e s / 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e ;   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ;   e i t h e r   v e r s i o n   2   o f   t h e   L i c e n s e ,   o r   ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 G e t   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   b y   w r i t i n g   t o   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   I n c . ,   5 1   F r a n k l i n   S t r e e t ,   F i f t h   F l o o r ,   B o s t o n ,   M A     0 2 1 1 0 - 1 3 0 1 ,   U S A . 
 
 o r   v i s i t   h t t p : / / w w w . g n u . o r g / c o p y l e f t / g p l . h t m l 
 
   
  
 l     ��������  ��  ��        l     ��  ��    ) #-----------------------------------     �   F - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l      ��  ��    � � the number below is the number of tracks
to count before reporting progress -
you can change this number to a larger or smaller number. 

If you set it to zero, you will not see the progress message      �  �   t h e   n u m b e r   b e l o w   i s   t h e   n u m b e r   o f   t r a c k s 
 t o   c o u n t   b e f o r e   r e p o r t i n g   p r o g r e s s   - 
 y o u   c a n   c h a n g e   t h i s   n u m b e r   t o   a   l a r g e r   o r   s m a l l e r   n u m b e r .   
 
 I f   y o u   s e t   i t   t o   z e r o ,   y o u   w i l l   n o t   s e e   t h e   p r o g r e s s   m e s s a g e        l     ��������  ��  ��        j     �� �� 0 progress_factor    m     �����      j    �� �� 0 my_title    m       �   0 S u p e r   R e m o v e   D e a d   T r a c k s     !   j    �� "�� 
0 deftxt   " m     # # � $ $ ( D e a d   T r a c k s   R e m o v e d   !  % & % l     ��������  ��  ��   &  ' ( ' l      ) * + ) p   	 	 , , ������ 0 text_file_path  ��   *    name of text file created    + � - - 4   n a m e   o f   t e x t   f i l e   c r e a t e d (  . / . p   	 	 0 0 ������ 0 deleted_tracks  ��   /  1 2 1 p   	 	 3 3 ������ 0 all_checked_tracks  ��   2  4 5 4 p   	 	 6 6 ������ 0 countem  ��   5  7 8 7 l     ��������  ��  ��   8  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   =   inits    > � ? ?    i n i t s <  @ A @ l     B C D B r      E F E c      G H G l     I���� I b      J K J b      L M L l     N���� N I    �� O��
�� .earsffdralis        afdr O m     ��
�� afdrdesk��  ��  ��   M o    
���� 
0 deftxt   K n    P Q P I    �������� 0 get_ymd  ��  ��   Q  f    ��  ��   H m    ��
�� 
TEXT F o      ���� 0 text_file_path   C > 8 set name of text file log using today's date yyyy-mm-dd    D � R R p   s e t   n a m e   o f   t e x t   f i l e   l o g   u s i n g   t o d a y ' s   d a t e   y y y y - m m - d d A  S T S l    U���� U r     V W V m    ����   W o      ���� 0 deleted_tracks  ��  ��   T  X Y X l    Z���� Z r     [ \ [ m    ����   \ o      ���� 0 all_checked_tracks  ��  ��   Y  ] ^ ] l   ! _���� _ r    ! ` a ` m     b b � c c   a o      ���� 0 countem  ��  ��   ^  d e d l     ��������  ��  ��   e  f g f l     ��������  ��  ��   g  h i h l  "� j���� j O   "� k l k k   &� m m  n o n l  & &��������  ��  ��   o  p q p l  & &�� r s��   r  proceed    s � t t  p r o c e e d q  u v u I  & >�� w x
�� .sysodlogaskr        TEXT w m   & ' y y � z z � R e m o v e s   t r a c k s   w h o s e   f i l e s   a r e   m i s s i n g   o r   d e l e t e d ,   s o - c a l l e d   " d e a d "   t r a c k s   d e s i g n a t e d   w i t h   ( ! )   n e x t   t o   t h e   t r a c k   n a m e . x �� { |
�� 
btns { J   ( , } }  ~  ~ m   ( ) � � � � �  C a n c e l   ��� � m   ) * � � � � �  P r o c e e d . . .��   | �� � �
�� 
dflt � m   - .����  � �� � �
�� 
appr � o   / 4���� 0 my_title   � �� ���
�� 
disp � m   7 8���� ��   v  � � � l  ? ?��������  ��  ��   �  � � � r   ? I � � � 4   ? E�� �
�� 
cLiP � m   C D����  � o      ���� 0 mainlibrary mainLibrary �  � � � r   J Y � � � I  J U�� ���
�� .corecnte****       **** � n   J Q � � � 2  M Q��
�� 
cFlT � o   J M���� 0 mainlibrary mainLibrary��   � o      ���� 0 totaltracks totalTracks �  � � � l  Z p � � � � r   Z p � � � 6  Z l � � � 2  Z _��
�� 
cUsP � =  b k � � � 1   c g��
�� 
pSmt � m   h j��
�� boovfals � o      ���� 0 all_playlists   � ) # don't delete Smart Playlists later    � � � � F   d o n ' t   d e l e t e   S m a r t   P l a y l i s t s   l a t e r �  � � � l  q q��������  ��  ��   �  � � � r   q z � � � 1   q v��
�� 
pFix � o      ���� 	0 oldfi   �  � � � r   { � � � � m   { |��
�� boovtrue � 1   | ���
�� 
pFix �  � � � l  � ���������  ��  ��   �  � � � t   �U � � � k   �T � �  � � � Y   �R ��� � � � � k   �M � �  � � � l  � ���������  ��  ��   �  � � � Q   �K � ��� � k   �B � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cFlT � o   � ����� 0 t   � o   � ����� 0 mainlibrary mainLibrary � o      ���� 0 
this_track   �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � =  � � � � � n  � � � � � 1   � ���
�� 
pLoc � o   � ����� 0 
this_track   � m   � ���
�� 
msng � k   � � � �  � � � l  � ��� � ���   �   add to text file    � � � � "   a d d   t o   t e x t   f i l e �  � � � n  � � � � � I   � ��� ����� 0 add_to_text   �  ��� � o   � ����� 0 
this_track  ��  ��   �  f   � � �  � � � l  � ���������  ��  ��   �  � � � I  � �� ��~
� .coredelonull���    obj  � o   � ��}�} 0 
this_track  �~   �  ��| � r   � � � � � [   � � � � � o   � ��{�{ 0 deleted_tracks   � m   � ��z�z  � o      �y�y 0 deleted_tracks  �|  ��  ��   �  � � � l  � ��x�w�v�x  �w  �v   �  � � � r   � � � � � [   � � � � � o   � ��u�u 0 all_checked_tracks   � m   � ��t�t  � o      �s�s 0 all_checked_tracks   �  � � � l  � ��r�q�p�r  �q  �p   �  � � � Z   �@ � ��o�n � 1   � ��m
�m 
pisf � Z   �< � ��l�k � F   � � � � � l  � � ��j�i � >  � � � � � o   � ��h�h 0 progress_factor   � m   � ��g�g  �j  �i   � =  � � �  � l  � ��f�e `   � � o   � ��d�d 0 all_checked_tracks   o   � ��c�c 0 progress_factor  �f  �e    m   � ��b�b   � k   �8  Z  ��a�` ?  � �	
	 o   � ��_�_ 0 deleted_tracks  
 m   � ��^�^   r   � l  � �]�\ b   �  o   � ��[�[ 0 deleted_tracks   m   � � � <   d e a d   t r a c k s   r e m o v e d   s o   f a r . . .�]  �\   o      �Z�Z 0 countem  �a  �`   �Y Z 8�X�W =  1  �V
�V 
pisf m  �U
�U boovtrue I 4�T
�T .sysodlogaskr        TEXT b   b   b   l �S�R c   !  o  �Q�Q 0 all_checked_tracks  ! m  �P
�P 
TEXT�S  �R   m  "" �## $   t r a c k s   c h e c k e d . . . o  �O
�O 
ret  o  �N�N 0 countem   �M$%
�M 
btns$ J  $&& '�L' m  "(( utxt&k�L  % �K)*
�K 
appr) o  %*�J�J 0 my_title  * �I+�H
�I 
givu+ m  -.�G�G �H  �X  �W  �Y  �l  �k  �o  �n   � ,�F, l AA�E�D�C�E  �D  �C  �F   � R      �B�A�@
�B .ascrerr ****      � ****�A  �@  ��   � -�?- l LL�>�=�<�>  �=  �<  �?  �� 0 t   � o   � ��;�; 0 totaltracks totalTracks � m   � ��:�:  � m   � ��9�9�� � .�8. l SS�7�6�5�7  �6  �5  �8   � m   � ��4�4u0 � /0/ l VV�3�2�1�3  �2  �1  0 121 r  V_343 o  VY�0�0 	0 oldfi  4 1  Y^�/
�/ 
pFix2 565 l ``�.�-�,�.  �-  �,  6 787 l ``�+9:�+  9    check for empty playlists   : �;; 4   c h e c k   f o r   e m p t y   p l a y l i s t s8 <=< X  `�>�*?> Z  v�@A�)�(@ = v�BCB l vD�'�&D e  vEE I v�%F�$
�% .corecnte****       ****F n  v{GHG 2 w{�#
�# 
cTrkH o  vw�"�" 0 this_playlist  �$  �'  �&  C m  ��!�!  A Q  ��IJ� I I ���K�
� .coredelonull���    obj K 4  ���L
� 
cPlyL o  ���� 0 this_playlist  �  J R      ���
� .ascrerr ****      � ****�  �  �   �)  �(  �* 0 this_playlist  ? o  cf�� 0 all_playlists  = MNM l ������  �  �  N OPO l ���QR�  Q  
 finish up   R �SS    f i n i s h   u pP TUT Z  ��VW�XV ? ��YZY o  ���� 0 deleted_tracks  Z m  ����  W k  �T[[ \]\ r  ��^_^ m  ��`` �aa    w a s_ o      �� 0 ps  ] bcb Z ��de��d > ��fgf o  ���� 0 deleted_tracks  g m  ���� e r  ��hih m  ��jj �kk  s   w e r ei o      �� 0 ps  �  �  c lml l ���
�	��
  �	  �  m non I �����
� .miscactv****      � ****�  �  o pqp r  �rsr n  �tut 1  ��
� 
bhitu l ��v��v I ���wx
� .sysodlogaskr        TEXTw b  ��yzy b  ��{|{ b  ��}~} b  ��� b  ����� m  ���� ��� @ F i n i s h e d   r e m o v i n g   " d e a d "   t r a c k s .� o  ��� 
�  
ret � o  ������ 0 deleted_tracks  ~ m  ���� ���    t r a c k| o  ������ 0 ps  z m  ���� ���    r e m o v e d .x ����
�� 
btns� J  ���� ��� m  ���� ���  D e l e t e   D e a d   L o g� ��� m  ���� ���  O p e n   D e a d   L o g� ���� m  ���� ���  T h a n k s��  � ����
�� 
dflt� m  ������ � ����
�� 
appr� o  ������ 0 my_title  � �����
�� 
disp� m  ������ ��  �  �  s o      ���� 0 
final_opts  q ��� Z  R������ E  ��� o  	���� 0 
final_opts  � m  	�� ���  o p e n� O  "��� k  !�� ��� I �����
�� .aevtodocnull  �    alis� o  ���� 0 text_file_path  ��  � ���� I !������
�� .miscactv****      � ****��  ��  ��  � m  ���                                                                                  ttxt   alis    B  Mac HD                     �L�eH+     �TextEdit.app                                                     ����        ����  	                Applications    �L�      ��       �   Mac HD:Applications:TextEdit.app    T e x t E d i t . a p p    M a c   H D  Applications/TextEdit.app   / ��  � ��� E  %,��� o  %(���� 0 
final_opts  � m  (+�� ���  d e l e t e� ���� Q  /N����� I 2E�����
�� .sysoexecTEXT���     TEXT� b  2A��� m  25�� ���  r m  � n  5@��� 1  <@��
�� 
strq� n  5<��� 1  8<��
�� 
psxp� l 58������ c  58��� o  56���� 0 text_file_path  � m  67��
�� 
TEXT��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ���� l SS��������  ��  ��  ��  �  X k  W��� ��� I W\������
�� .miscactv****      � ****��  ��  � ���� Z ]�������� = ]���� n  ]���� 1  ~���
�� 
gavu� l ]~������ I ]~����
�� .sysodlogaskr        TEXT� m  ]`�� ��� T I t   w a s   n o t   n e c e s s a r y   t o   r e m o v e   a n y   t r a c k s .� ����
�� 
btns� J  af�� ���� m  ad�� ���  T h a n k s��  � ����
�� 
dflt� m  gh���� � ����
�� 
disp� m  kl���� � ����
�� 
appr� o  mr���� 0 my_title  � �����
�� 
givu� m  ux���� ��  ��  ��  � m  ����
�� boovtrue� L  ������  ��  ��  ��  U ���� l ����������  ��  ��  ��   l m   " #���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��  ��   i ��� l     ��������  ��  ��  � ��� i  	 ��� I      ������� 0 add_to_text  � ���� o      ���� 0 t  ��  ��  � k     ��� ��� O     +��� O   *��� r    )��� J    �� ��� 1    ��
�� 
pnam� ��� 1    ��
�� 
pArt� ���� 1    ��
�� 
pAlb��  � J      �� ��� o      ���� 0 nom  � ��� o      ���� 0 art  � ���� o      ���� 0 alb  ��  � o    ���� 0 t  � m     ���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  � � � Z  , 9���� =  , / o   , -���� 0 nom   m   - . �   r   2 5 m   2 3		 �

  [ S o n g   N a m e   n / a ] o      ���� 0 nom  ��  ��     Z  : G���� =  : = o   : ;���� 0 art   m   ; < �   r   @ C m   @ A �  [ A r t i s t   n / a ] o      ���� 0 art  ��  ��    Z  H U���� =  H K o   H I���� 0 alb   m   I J �   r   N Q  m   N O!! �""  [ A l b u m   n / a ]  o      ���� 0 alb  ��  ��   #$# r   V k%&% c   V i'(' l  V e)����) b   V e*+* b   V c,-, b   V a./. b   V _010 b   V ]232 b   V [454 b   V Y676 m   V W88 �99  "7 o   W X���� 0 nom  5 m   Y Z:: �;;  "   -  3 o   [ \���� 0 art  1 m   ] ^<< �==    -   "/ o   _ `���� 0 alb  - m   a b>> �??  "+ o   c d��
�� 
ret ��  ��  ( m   e h��
�� 
ctxt& o      ���� 0 mess  $ @A@ l  l l��������  ��  ��  A BCB r   l uDED c   l sFGF l  l oH����H o   l o���� 0 text_file_path  ��  ��  G m   o r��
�� 
TEXTE o      ���� 0 f  C IJI Q   v �KLMK k   y �NN OPO r   y �QRQ I  y ���ST
�� .rdwropenshor       fileS 4   y ��U
�� 
fileU o   } ~���� 0 f  T ��V��
�� 
permV m   � ���
�� boovtrue��  R o      ���� 0 fileref fileRefP WXW r   � �YZY l  � �[����[ I  � ���\��
�� .rdwrgeofcomp       ****\ o   � ����� 0 fileref fileRef��  ��  ��  Z o      ���� 0 z  X ]^] I  � ���_`
�� .rdwrwritnull���     ****_ o   � ����� 0 mess  ` ��ab
�� 
refna o   � ����� 0 fileref fileRefb ��c�
�� 
wratc l  � �d�~�}d [   � �efe o   � ��|�| 0 z  f m   � ��{�{ �~  �}  �  ^ g�zg I  � ��yh�x
�y .rdwrclosnull���     ****h o   � ��w�w 0 fileref fileRef�x  �z  L R      �vi�u
�v .ascrerr ****      � ****i o      �t�t 0 m  �u  M k   � �jj klk l  � �mnom I  � ��sp�r
�s .ascrcmnt****      � ****p o   � ��q�q 0 m  �r  n  
 debugging   o �qq    d e b u g g i n gl r�pr I  � ��os�n
�o .rdwrclosnull���     ****s o   � ��m�m 0 fileref fileRef�n  �p  J t�lt l  � ��k�j�i�k  �j  �i  �l  � uvu l     �h�g�f�h  �g  �f  v wxw i   yzy I      �e�d�c�e 0 get_ymd  �d  �c  z L     {{ l    |�b�a| I    �`}�_
�` .sysoexecTEXT���     TEXT} m     ~~ � $ d a t e   ' + % F   % I . % M % p '�_  �b  �a  x ��� l     �^�]�\�^  �]  �\  � ��� l     �[�Z�Y�[  �Z  �Y  � ��X� l     �W�V�U�W  �V  �U  �X       �T��S  #����T  � �R�Q�P�O�N�M�R 0 progress_factor  �Q 0 my_title  �P 
0 deftxt  �O 0 add_to_text  �N 0 get_ymd  
�M .aevtoappnull  �   � ****�S�� �L��K�J���I�L 0 add_to_text  �K �H��H �  �G�G 0 t  �J  � 	�F�E�D�C�B�A�@�?�>�F 0 t  �E 0 nom  �D 0 art  �C 0 alb  �B 0 mess  �A 0 f  �@ 0 fileref fileRef�? 0 z  �> 0 m  � ��=�<�;�:	!8:<>�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*
�= 
pnam
�< 
pArt
�; 
pAlb
�: 
cobj
�9 
ret 
�8 
ctxt�7 0 text_file_path  
�6 
TEXT
�5 
file
�4 
perm
�3 .rdwropenshor       file
�2 .rdwrgeofcomp       ****
�1 
refn
�0 
wrat�/ 
�. .rdwrwritnull���     ****
�- .rdwrclosnull���     ****�, 0 m  �+  
�* .ascrcmnt****      � ****�I �� (� #*�,*�,*�,mvE[�k/E�Z[�l/E�Z[�m/E�ZUUO��  �E�Y hO��  �E�Y hO��  �E�Y hO�%�%�%�%�%�%�%a &E�O_ a &E�O 5*a �/a el E�O�j E�O�a �a �ka  O�j W X  �j O�j OP� �)z�(�'���&�) 0 get_ymd  �(  �'  �  � ~�%
�% .sysoexecTEXT���     TEXT�& �j � �$��#�"���!
�$ .aevtoappnull  �   � ****� k    ���  @��  S��  X��  ]��  h� �   �#  �"  � ��� 0 t  � 0 this_playlist  � K������� b�� y� � ������������
��	��������� ����"��(����������������`��j��������������������������������
� afdrdesk
� .earsffdralis        afdr� 0 get_ymd  
� 
TEXT� 0 text_file_path  � 0 deleted_tracks  � 0 all_checked_tracks  � 0 countem  
� 
btns
� 
dflt
� 
appr
� 
disp� 
� .sysodlogaskr        TEXT
� 
cLiP� 0 mainlibrary mainLibrary
� 
cFlT
� .corecnte****       ****� 0 totaltracks totalTracks
�
 
cUsP�  
�	 
pSmt� 0 all_playlists  
� 
pFix� 	0 oldfi  �u0� 0 
this_track  
� 
pLoc
� 
msng� 0 add_to_text  
�  .coredelonull���    obj 
�� 
pisf
�� 
bool
�� 
ret 
�� 
givu�� ��  ��  
�� 
kocl
�� 
cobj
�� 
cTrk
�� 
cPly�� 0 ps  
�� .miscactv****      � ****
�� 
bhit�� 0 
final_opts  
�� .aevtodocnull  �    alis
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� �� 

�� 
gavu�!��j b  %)j+ %�&E�OjE�OjE�O�E�O�k����lv�l�b  a ka  O*a k/E` O_ a -j E` O*a -a [a ,\Zf81E` O*a ,E` Oe*a ,FOa n �_ kih   �_ a �/E` O_ a  ,a !  )_ k+ "O_ j #O�kE�Y hO�kE�O*a $,E fb   j	 �b   #j a %& H�j �a &%E�Y hO*a $,e  (��&a '%_ (%�%�a )kv�b  a *ka + Y hY hY hOPW X , -hOP[OY�@OPoO_ *a ,FO B_ [a .a /l kh �a 0-j j   *a 1�/j #W X , -hY h[OY��O�j �a 2E` 3O�k a 4E` 3Y hO*j 5Oa 6_ (%�%a 7%_ 3%a 8%�a 9a :a ;mv�l�b  a ka  a <,E` =O_ =a > a ? �j @O*j 5UY /_ =a A $ a B��&a C,a D,%j EW X , -hY hOPY 8*j 5Oa F�a Gkv�ka k�b  a *a Ha I a J,e  hY hOPUascr  ��ޭ