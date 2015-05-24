FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ?9
"Import iPod Audio Files" for iTunes
written by Doug Adams
dougadams@mac.com

--***
"ProgBar" is an AppleScript Studio application
that provides a progress bar. It is available from
Spork Software <http://www.tjmahaffey.com/spork/?cont_incl=ProgBar.php>
Many thanks to TJ Mahaffey
--***

v2.0 June 1, 2008
- runs as universal binary
- removed extension routines, rely on size and date modified only
- fixes issue with unusually large video files
- transfers rating, played count, and video kind
- streamlined obsolete and old-and-in-the-way code
- minor code syntax changes

v1.12 November 17, 2007
- updated for compatibility with Leopard
- minor code syntax changes

v1.11 July 10, 2006
- fixes problem with previously ignored "bad" characters in album and artist names that iTunes would normally convert to "_" (underscore)
- will operate correctly if iTunes Music folder is on FileVault'd home folder (removed Finder commands where applicable)

v1.10 October 10, 2005
- ProgBar reports name of track being imported, rather than filename
- accommodates "Audible file" kind with ".aa" extension
- removed "movem" flag, uses new_playlist_name instead to determine whether to make a new playlist
- independently copies original iPod track name to imported track

v1.9
- improved accuracy of locating Music folder
- code maintenance

v1.8 December 22, 2004
-- segregated text in display dialogs so localization can occur
-- tweaked routine to find XML file (thanks, Sal!)
-- fixed problem with locating correct iPod directories on single-partition systems
-- fixes error identifying Compilation albums

v1.7.1 November 26 2004
- accounts for "." (rather than ":") as time separator

v1.7 November 24 2004
- transfers rating from iPod track to newly added iTunes track
- account for 12 or 24 hour time formats
- better able to work with international localizations
- added filter_forward_slash() routine to check strings for '/' character and switch to
  an underscore to avoid encountering errors in the file copy process
 (thanks to z4obx0@yahoo.com)

v1.6.1 November 5 2004 (not released)
- added caution in dialog about selecting iPod tracks in main iTunes window (rather than a separate window)

v1.6 November 5 2004
- adds ability to use _optional_ "ProgBar" application to display import progress
- updates UNIX "find" command to add modification date as a parameter
- accounts for Unknown Artist, Unknown Album (blank artist and/or album tags), and Compilation tracks
- fixed potential problem creating new folders in Music folder ("Can't get folder" error)

v1.5 October 28 2004
- fixes problem with iTunes 4.7 not recognizing selection properly

v1.3 - may 29 04
- fixed problem with locating Music folder on startup drive

v1.2 - may 28 04
-- account for 'old-style' Documents/iTunes folder
-- more apt to ask for Music folder location if unfound
-- use path to special folders in handler

v1.0 may 26 04
-- initial release

originally inspired by "Import Selected iPod Tracks" by
John Paul Davis

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://dougscripts.com/itunes/
     � 	 	r 
 " I m p o r t   i P o d   A u d i o   F i l e s "   f o r   i T u n e s 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m 
 
 - - * * * 
 " P r o g B a r "   i s   a n   A p p l e S c r i p t   S t u d i o   a p p l i c a t i o n 
 t h a t   p r o v i d e s   a   p r o g r e s s   b a r .   I t   i s   a v a i l a b l e   f r o m 
 S p o r k   S o f t w a r e   < h t t p : / / w w w . t j m a h a f f e y . c o m / s p o r k / ? c o n t _ i n c l = P r o g B a r . p h p > 
 M a n y   t h a n k s   t o   T J   M a h a f f e y 
 - - * * * 
 
 v 2 . 0   J u n e   1 ,   2 0 0 8 
 -   r u n s   a s   u n i v e r s a l   b i n a r y 
 -   r e m o v e d   e x t e n s i o n   r o u t i n e s ,   r e l y   o n   s i z e   a n d   d a t e   m o d i f i e d   o n l y 
 -   f i x e s   i s s u e   w i t h   u n u s u a l l y   l a r g e   v i d e o   f i l e s 
 -   t r a n s f e r s   r a t i n g ,   p l a y e d   c o u n t ,   a n d   v i d e o   k i n d 
 -   s t r e a m l i n e d   o b s o l e t e   a n d   o l d - a n d - i n - t h e - w a y   c o d e 
 -   m i n o r   c o d e   s y n t a x   c h a n g e s 
 
 v 1 . 1 2   N o v e m b e r   1 7 ,   2 0 0 7 
 -   u p d a t e d   f o r   c o m p a t i b i l i t y   w i t h   L e o p a r d 
 -   m i n o r   c o d e   s y n t a x   c h a n g e s 
 
 v 1 . 1 1   J u l y   1 0 ,   2 0 0 6 
 -   f i x e s   p r o b l e m   w i t h   p r e v i o u s l y   i g n o r e d   " b a d "   c h a r a c t e r s   i n   a l b u m   a n d   a r t i s t   n a m e s   t h a t   i T u n e s   w o u l d   n o r m a l l y   c o n v e r t   t o   " _ "   ( u n d e r s c o r e ) 
 -   w i l l   o p e r a t e   c o r r e c t l y   i f   i T u n e s   M u s i c   f o l d e r   i s   o n   F i l e V a u l t ' d   h o m e   f o l d e r   ( r e m o v e d   F i n d e r   c o m m a n d s   w h e r e   a p p l i c a b l e ) 
 
 v 1 . 1 0   O c t o b e r   1 0 ,   2 0 0 5 
 -   P r o g B a r   r e p o r t s   n a m e   o f   t r a c k   b e i n g   i m p o r t e d ,   r a t h e r   t h a n   f i l e n a m e 
 -   a c c o m m o d a t e s   " A u d i b l e   f i l e "   k i n d   w i t h   " . a a "   e x t e n s i o n 
 -   r e m o v e d   " m o v e m "   f l a g ,   u s e s   n e w _ p l a y l i s t _ n a m e   i n s t e a d   t o   d e t e r m i n e   w h e t h e r   t o   m a k e   a   n e w   p l a y l i s t 
 -   i n d e p e n d e n t l y   c o p i e s   o r i g i n a l   i P o d   t r a c k   n a m e   t o   i m p o r t e d   t r a c k 
 
 v 1 . 9 
 -   i m p r o v e d   a c c u r a c y   o f   l o c a t i n g   M u s i c   f o l d e r 
 -   c o d e   m a i n t e n a n c e 
 
 v 1 . 8   D e c e m b e r   2 2 ,   2 0 0 4 
 - -   s e g r e g a t e d   t e x t   i n   d i s p l a y   d i a l o g s   s o   l o c a l i z a t i o n   c a n   o c c u r 
 - -   t w e a k e d   r o u t i n e   t o   f i n d   X M L   f i l e   ( t h a n k s ,   S a l ! ) 
 - -   f i x e d   p r o b l e m   w i t h   l o c a t i n g   c o r r e c t   i P o d   d i r e c t o r i e s   o n   s i n g l e - p a r t i t i o n   s y s t e m s 
 - -   f i x e s   e r r o r   i d e n t i f y i n g   C o m p i l a t i o n   a l b u m s 
 
 v 1 . 7 . 1   N o v e m b e r   2 6   2 0 0 4 
 -   a c c o u n t s   f o r   " . "   ( r a t h e r   t h a n   " : " )   a s   t i m e   s e p a r a t o r 
 
 v 1 . 7   N o v e m b e r   2 4   2 0 0 4 
 -   t r a n s f e r s   r a t i n g   f r o m   i P o d   t r a c k   t o   n e w l y   a d d e d   i T u n e s   t r a c k 
 -   a c c o u n t   f o r   1 2   o r   2 4   h o u r   t i m e   f o r m a t s 
 -   b e t t e r   a b l e   t o   w o r k   w i t h   i n t e r n a t i o n a l   l o c a l i z a t i o n s 
 -   a d d e d   f i l t e r _ f o r w a r d _ s l a s h ( )   r o u t i n e   t o   c h e c k   s t r i n g s   f o r   ' / '   c h a r a c t e r   a n d   s w i t c h   t o 
     a n   u n d e r s c o r e   t o   a v o i d   e n c o u n t e r i n g   e r r o r s   i n   t h e   f i l e   c o p y   p r o c e s s 
   ( t h a n k s   t o   z 4 o b x 0 @ y a h o o . c o m ) 
 
 v 1 . 6 . 1   N o v e m b e r   5   2 0 0 4   ( n o t   r e l e a s e d ) 
 -   a d d e d   c a u t i o n   i n   d i a l o g   a b o u t   s e l e c t i n g   i P o d   t r a c k s   i n   m a i n   i T u n e s   w i n d o w   ( r a t h e r   t h a n   a   s e p a r a t e   w i n d o w ) 
 
 v 1 . 6   N o v e m b e r   5   2 0 0 4 
 -   a d d s   a b i l i t y   t o   u s e   _ o p t i o n a l _   " P r o g B a r "   a p p l i c a t i o n   t o   d i s p l a y   i m p o r t   p r o g r e s s 
 -   u p d a t e s   U N I X   " f i n d "   c o m m a n d   t o   a d d   m o d i f i c a t i o n   d a t e   a s   a   p a r a m e t e r 
 -   a c c o u n t s   f o r   U n k n o w n   A r t i s t ,   U n k n o w n   A l b u m   ( b l a n k   a r t i s t   a n d / o r   a l b u m   t a g s ) ,   a n d   C o m p i l a t i o n   t r a c k s 
 -   f i x e d   p o t e n t i a l   p r o b l e m   c r e a t i n g   n e w   f o l d e r s   i n   M u s i c   f o l d e r   ( " C a n ' t   g e t   f o l d e r "   e r r o r ) 
 
 v 1 . 5   O c t o b e r   2 8   2 0 0 4 
 -   f i x e s   p r o b l e m   w i t h   i T u n e s   4 . 7   n o t   r e c o g n i z i n g   s e l e c t i o n   p r o p e r l y 
 
 v 1 . 3   -   m a y   2 9   0 4 
 -   f i x e d   p r o b l e m   w i t h   l o c a t i n g   M u s i c   f o l d e r   o n   s t a r t u p   d r i v e 
 
 v 1 . 2   -   m a y   2 8   0 4 
 - -   a c c o u n t   f o r   ' o l d - s t y l e '   D o c u m e n t s / i T u n e s   f o l d e r 
 - -   m o r e   a p t   t o   a s k   f o r   M u s i c   f o l d e r   l o c a t i o n   i f   u n f o u n d 
 - -   u s e   p a t h   t o   s p e c i a l   f o l d e r s   i n   h a n d l e r 
 
 v 1 . 0   m a y   2 6   0 4 
 - -   i n i t i a l   r e l e a s e 
 
 o r i g i n a l l y   i n s p i r e d   b y   " I m p o r t   S e l e c t e d   i P o d   T r a c k s "   b y 
 J o h n   P a u l   D a v i s 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 h t t p : / / d o u g s c r i p t s . c o m / i t u n e s / 
   
  
 l     ��������  ��  ��        l     ��  ��    N H messages & text (localize if you wish) == == == == === == === === === =     �   �   m e s s a g e s   &   t e x t   ( l o c a l i z e   i f   y o u   w i s h )   = =   = =   = =   = =   = = =   = =   = = =   = = =   = = =   =      j     �� �� 0 dd_new_playlistprompt    b         b         b         m        �   ^ P u t   i m p o r t e d   t r a c k s   i n t o   n e w   p l a y l i s t   n a m e d . . . ?  o    ��
�� 
ret   o    ��
�� 
ret   m       �   * ( L e a v e   b l a n k   t o   s k i p )      j   	 ��  �� 	0 nosel     m   	 
 ! ! � " " 4 S e l e c t   s o m e   i P o d   t r a c k s . . .   # $ # j    �� %�� 	0 done1   % m     & & � ' '  D o n e $  ( ) ( j    �� *�� 0 thanks1   * m     + + � , ,  T h a n k s )  - . - j    �� /�� 
0 which1   / m     0 0 � 1 1 0 W h i c h   o f   t h e s e   f i l e s   i s   .  2 3 2 j    �� 4�� 0 moment1   4 m     5 5 � 6 6  O n e   m o m e n t . . . 3  7 8 7 j    �� 9�� 0 
importing1   9 m     : : � ; ;  I m p o r t i n g . . . 8  < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @ T N names of folders in the Music Folder -- change if necessary for localizations    A � B B �   n a m e s   o f   f o l d e r s   i n   t h e   M u s i c   F o l d e r   - -   c h a n g e   i f   n e c e s s a r y   f o r   l o c a l i z a t i o n s ?  C D C j    �� E�� 0 ualb   E m     F F � G G  U n k n o w n   A l b u m D  H I H j     $�� J�� 0 uart   J m     # K K � L L  U n k n o w n   A r t i s t I  M N M j   % )�� O�� 0 comp_artist   O m   % ( P P � Q Q  C o m p i l a t i o n s N  R S R l     ��������  ��  ��   S  T U T j   * .�� V�� 0 my_title   V m   * - W W � X X . I m p o r t   i P o d   A u d i o   F i l e s U  Y Z Y j   / 3�� [��  0 progbarwinname progBarWinName [ m   / 2 \ \ � ] ]   a l u m _ p r o g _ w i n d o w Z  ^ _ ^ l      �� ` a��   ` � � can use
aqua_prog_window, alum_prog_window, alum_prog_window2, mini_prog_window
see: http://www.tjmahaffey.com/spork/?cont_incl=ProgBar.php
    a � b b   c a n   u s e 
 a q u a _ p r o g _ w i n d o w ,   a l u m _ p r o g _ w i n d o w ,   a l u m _ p r o g _ w i n d o w 2 ,   m i n i _ p r o g _ w i n d o w 
 s e e :   h t t p : / / w w w . t j m a h a f f e y . c o m / s p o r k / ? c o n t _ i n c l = P r o g B a r . p h p 
 _  c d c l     ��������  ��  ��   d  e f e l     �� g h��   g 	  ==    h � i i    = = f  j k j l     �� l m��   l   ***     m � n n 
   * * *   k  o p o p   4 4 q q ������ 0 	pb_exists  ��   p  r s r l     �� t u��   t 
  ***    u � v v    * * * s  w x w l     ��������  ��  ��   x  y z y l      { | } { p   4 4 ~ ~ ������ 0 new_playlist_name  ��   | $  name (or "") for new playlist    } �   <   n a m e   ( o r   " " )   f o r   n e w   p l a y l i s t z  � � � l      � � � � p   4 4 � � ������ 0 the_ipod_folder  ��   �   base iPod source    � � � � "   b a s e   i P o d   s o u r c e �  � � � l      � � � � p   4 4 � � ������ 0 musicfolder musicFolder��   � * $ location of designated Music folder    � � � � H   l o c a t i o n   o f   d e s i g n a t e d   M u s i c   f o l d e r �  � � � l     �� � ���   � V P ===============================================================================    � � � � �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = �  � � � l     ��������  ��  ��   �  � � � l     ����� � I     �������� &0 check_for_progbar check_for_ProgBar��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � ����� � O   � � � � k   
� � �  � � � O   
 a � � � k    ` � �  � � � r     � � � 1    ��
�� 
sele � o      ���� 0 sel   �  ��� � Z    ` � ��� � � F    ) � � � =     � � � l    ����� � n     � � � 1    ��
�� 
pKnd � n     � � � 1    ��
�� 
ctnr � 1    ��
�� 
pPly��  ��   � m    ��
�� eSrckPod � >  # ' � � � o   # $���� 0 sel   � J   $ &����   � r   , 5 � � � l  , 3 ����� � n   , 3 � � � 1   1 3��
�� 
pnam � n   , 1 � � � 1   / 1��
�� 
ctnr � 1   , /��
�� 
pPly��  ��   � o      ���� 0 ipod_src_name iPod_src_name��   � k   8 ` � �  � � � I  8 ]�� � �
�� .sysodlogaskr        TEXT � b   8 ? � � � o   8 9��
�� 
ret  � o   9 >���� 	0 nosel   � �� � �
�� 
btns � J   @ C � �  ��� � m   @ A � � � � �  C a n c e l��   � �� � �
�� 
dflt � m   D E����  � �� � �
�� 
disp � m   H I����   � �� � �
�� 
appr � o   L Q���� 0 my_title   � �� ���
�� 
givu � m   T W���� ��   �  ��� � L   ^ `����  ��  ��   � 4  
 �� �
�� 
cBrW � m    ����  �  � � � l  b b��������  ��  ��   �  � � � l  b b�� � ���   �   path to iPod for find    � � � � ,   p a t h   t o   i P o d   f o r   f i n d �  � � � r   b l � � � n  b h � � � I   c h�� ����� 0 verify_ipod   �  ��� � o   c d���� 0 ipod_src_name iPod_src_name��  ��   �  f   b c � o      ���� 0 the_ipod_folder   �  � � � l  m m��������  ��  ��   �  � � � l  m m�� � ���   �   locate Music folder    � � � � (   l o c a t e   M u s i c   f o l d e r �  � � � r   m v � � � n  m r � � � I   n r�������� 0 get_music_folder  ��  ��   �  f   m n � o      ���� 0 musicfolder musicFolder �  � � � l  w w��������  ��  ��   �  � � � l  w w�� � ���   � 0 * want new tracks in a playlist afterwards?    � � � � T   w a n t   n e w   t r a c k s   i n   a   p l a y l i s t   a f t e r w a r d s ? �  � � � r   w ~ � � � m   w z��
�� 
msng � o      ���� 0 new_playlist   �  � � � l   � � �  � r    � m    � �   o      ���� 0 new_playlist_name   �   init     � 
   i n i t �  r   � �	 n   � �

 1   � ���
�� 
ttxt l  � ����� I  � ���
�� .sysodlogaskr        TEXT o   � ����� 0 dd_new_playlistprompt   ��
�� 
dtxt m   � � �   ��
�� 
dflt m   � �����  ��
�� 
appr o   � ��� 0 my_title   �~�}
�~ 
disp m   � ��|�| �}  ��  ��  	 o      �{�{ 0 new_playlist_name    l  � ��z�y�x�z  �y  �x    l  � ��w�w    
 and so on    �    a n d   s o   o n   r   � �!"! N   � �## o      �v�v 0 sel  " o      �u�u 0 filelistref fileListRef  $%$ r   � �&'& l  � �(�t�s( n   � �)*) 1   � ��r
�r 
leng* o   � ��q�q 0 sel  �t  �s  ' o      �p�p 0 	filecount 	fileCount% +,+ r   � �-.- m   � ��o�o  . o      �n�n 0 	donecount 	doneCount, /0/ l  � ��m�l�k�m  �l  �k  0 121 l  � ��j34�j  3 
  ***   4 �55    * * *2 676 Z   �89�i�h8 o   � ��g�g 0 	pb_exists  9 k   �:: ;<; O   � �=>= k   � �?? @A@ I  � ��f�e�d
�f .miscactvnull��� ��� null�e  �d  A BCB r   � �DED o   � ��c�c 0 my_title  E n      FGF 1   � ��b
�b 
titlG 4   � ��aH
�a 
cwinH o   � ��`�`  0 progbarwinname progBarWinNameC I�_I I  � ��^J�]
�^ .appSshoHnull��� ��� obj J 4   � ��\K
�\ 
cwinK o   � ��[�[  0 progbarwinname progBarWinName�]  �_  > m   � �LL
                                                                                  PGBR   alis    �  Mac HD                     �L�eH+   �qProgBar.app                                                     �t���K        ����  	                Export Artwork    �L�      ���     �q �H ؈ � �  y�  HMac HD:Users:dougadams:Library:iTunes:Scripts:Export Artwork:ProgBar.app    P r o g B a r . a p p    M a c   H D  AUsers/dougadams/Library/iTunes/Scripts/Export Artwork/ProgBar.app   /    ��  < M�ZM n  �NON I   �YP�X�Y 0 prep_progress prep_ProgressP Q�WQ o   �V�V 0 	filecount 	fileCount�W  �X  O  f   � �Z  �i  �h  7 RSR l �UTU�U  T 
  ***   U �VV    * * *S WXW l �T�S�R�T  �S  �R  X YZY l �Q[\�Q  [   proceed   \ �]]    p r o c e e dZ ^_^ t  �`a` k  �bb cdc Y  ye�Pfg�Oe l thijh k  tkk lml r  "non J  �N�N  o o      �M�M 0 
foundfiles 
foundFilesm pqp l ##�Lrs�L  r   get info from iPod track   s �tt 2   g e t   i n f o   f r o m   i P o d   t r a c kq uvu O  #%wxw k  2$yy z{z r  2�|}| J  2n~~ � n 2=��� I  3=�K��J�K 0 number_to_string  � ��I� e  39�� 1  39�H
�H 
pSiz�I  �J  �  f  23� ��� 1  =B�G
�G 
pArt� ��� 1  BG�F
�F 
pAlb� ��� 1  GJ�E
�E 
pnam� ��� n JU��� I  KU�D��C�D 0 get_moddate get_modDate� ��B� e  KQ�� 1  KQ�A
�A 
asmo�B  �C  �  f  JK� ��� 1  UZ�@
�@ 
pAnt� ��� 1  Z_�?
�? 
pRte� ��� 1  _d�>
�> 
pPlC� ��=� l dj��<�;� e  dj�� 1  dj�:
�: 
pVdK�<  �;  �=  } J      �� ��� o      �9�9 0 siz  � ��� o      �8�8 0 art  � ��� o      �7�7 0 alb  � ��� o      �6�6 0 nom  � ��� o      �5�5 0 moddate modDate� ��� o      �4�4 0 comp  � ��� o      �3�3 0 rat  � ��� o      �2�2 0 pc  � ��1� o      �0�0 0 vk  �1  { ��� l ���/���/  � p j account for blank Album and/or Artist tag, and Compilation tracks; used later for folders in Music folder   � ��� �   a c c o u n t   f o r   b l a n k   A l b u m   a n d / o r   A r t i s t   t a g ,   a n d   C o m p i l a t i o n   t r a c k s ;   u s e d   l a t e r   f o r   f o l d e r s   i n   M u s i c   f o l d e r� ��� Z �����.�-� = ����� o  ���,�, 0 alb  � m  ���� ���  � r  ����� o  ���+�+ 0 ualb  � o      �*�* 0 alb  �.  �-  � ��� Z ����)�(� = ����� o  ���'�' 0 art  � m  ���� ���  � r  
��� o  �&�& 0 uart  � o      �%�% 0 art  �)  �(  � ��$� Z $���#�"� = ��� o  �!�! 0 comp  � m  � 
�  boovtrue� r   ��� o  �� 0 comp_artist  � o      �� 0 art  �#  �"  �$  x n  #/��� 1  +/�
� 
pcnt� n #+��� 4  &+��
� 
cobj� o  )*�� 0 t  � o  #&�� 0 filelistref fileListRefv ��� l &&����  �  �  � ��� r  &-��� m  &)�
� 
msng� o      �� 0 rez  � ��� Q  .]���� k  1T�� ��� l 11����  � ( " find by size & date last modified   � ��� D   f i n d   b y   s i z e   &   d a t e   l a s t   m o d i f i e d� ��� r  1T��� l 1P���� I 1P���
� .sysoexecTEXT���     TEXT� b  1L��� b  1H��� b  1D��� b  1@��� b  1<��� b  18��� m  14�� ��� 
 f i n d  � o  47�� 0 the_ipod_folder  � m  8;�� ���    - t y p e   f   - s i z e  � o  <?�� 0 siz  � m  @C�� ���  c   - n e w e r m t   '� o  DG�� 0 moddate modDate� m  HK�� ���  '�  �  �  � o      �
�
 0 rez  �  � R      �	��
�	 .ascrerr ****      � ****�  �  �  � ��� l ^^����  �  �  � ��� l ^^� �       process the file(s) found    � 4   p r o c e s s   t h e   f i l e ( s )   f o u n d� � Z  ^t� F  ^q > ^e	
	 o  ^a� �  0 rez  
 m  ad��
�� 
msng > ho o  hk���� 0 rez   m  kn �   l tp k  tp  l tt����   8 2 parse rez if there are more than 1 match for find    � d   p a r s e   r e z   i f   t h e r e   a r e   m o r e   t h a n   1   m a t c h   f o r   f i n d  r  t� n t} I  u}������ 0 text_to_list     o  ux���� 0 rez    !��! o  xy��
�� 
ret ��  ��    f  tu o      ���� 0 
foundfiles 
foundFiles "#" l ����������  ��  ��  # $%$ l ����&'��  & 6 0 determine correct file from dupes, if necessary   ' �(( `   d e t e r m i n e   c o r r e c t   f i l e   f r o m   d u p e s ,   i f   n e c e s s a r y% )*) Z  ��+,��-+ ?  ��./. n  ��010 1  ����
�� 
leng1 o  ������ 0 
foundfiles 
foundFiles/ m  ������ , k  ��22 343 r  ��565 c  ��787 l ��9����9 I ����:;
�� .gtqpchltns    @   @ ns  : o  ������ 0 
foundfiles 
foundFiles; ��<=
�� 
prmp< b  ��>?> b  ��@A@ b  ��BCB o  ������ 
0 which1  C m  ��DD �EE  "A o  ������ 0 nom  ? m  ��FF �GG  " ?= ��H��
�� 
apprH o  ������ 0 my_title  ��  ��  ��  8 m  ����
�� 
TEXT6 o      ����  0 this_ipod_file this_iPod_file4 I��I Z ��JK����J = ��LML o  ������  0 this_ipod_file this_iPod_fileM m  ��NN �OO 
 f a l s eK R  ������P
�� .ascrerr ****      � ****��  P ��Q��
�� 
errnQ m  ����������  ��  ��  ��  ��  - r  ��RSR n  ��TUT 4  ����V
�� 
cobjV m  ������ U o  ������ 0 
foundfiles 
foundFilesS o      ����  0 this_ipod_file this_iPod_file* WXW l ����������  ��  ��  X YZY l ����[\��  [   name of the file   \ �]] "   n a m e   o f   t h e   f i l eZ ^_^ r  ��`a` n  ��bcb 4 ����d
�� 
cobjd m  ��������c n ��efe I  ����g���� 0 text_to_list  g hih o  ������  0 this_ipod_file this_iPod_filei j��j m  ��kk �ll  /��  ��  f  f  ��a o      ���� 0 filename  _ mnm l ����������  ��  ��  n opo l ����qr��  q 
  ***   r �ss    * * *p tut Z �vw����v o  ������ 0 	pb_exists  w n �xyx I   ��z���� 0 increment_progbar  z {|{ o   ���� 0 t  | }��} o  ���� 0 nom  ��  ��  y  f  � ��  ��  u ~~ l ������  � 
  ***   � ���    * * * ��� l ��������  ��  ��  � ��� l ������  � * $ fix "bad" chars for file path v1.11   � ��� H   f i x   " b a d "   c h a r s   f o r   f i l e   p a t h   v 1 . 1 1� ��� r  $��� n  ��� I   ������� 0 escape_punc  � ���� n ��� I  ������� 0 replace_chars  � ��� o  ���� 0 art  � ��� m  �� ���  '� ���� m  �� ���  ' \ ' '��  ��  �  f  ��  ��  �  f  � o      ���� 0 	artfolder 	artFolder� ��� r  %<��� n %8��� I  &8������� 0 escape_punc  � ���� n &4��� I  '4������� 0 replace_chars  � ��� o  '*���� 0 alb  � ��� m  *-�� ���  '� ���� m  -0�� ���  ' \ ' '��  ��  �  f  &'��  ��  �  f  %&� o      ���� 0 	albfolder 	albFolder� ��� r  =X��� c  =T��� l =P������ c  =P��� l =L������ b  =L��� b  =H��� b  =D��� o  =@���� 0 musicfolder musicFolder� o  @C���� 0 	artfolder 	artFolder� m  DG�� ���  :� o  HK���� 0 	albfolder 	albFolder��  ��  � m  LO��
�� 
TEXT��  ��  � m  PS��
�� 
ctxt� o      ���� 0 file_destination  � ��� r  Yh��� n  Yd��� 1  `d��
�� 
strq� n  Y`��� 1  \`��
�� 
psxp� o  Y\���� 0 file_destination  � o      ���� 0 qp_file_destination  � ��� l ii��������  ��  ��  � ��� l ii������  �   try to make the folders   � ��� 0   t r y   t o   m a k e   t h e   f o l d e r s� ��� Q  i������ I lw�����
�� .sysoexecTEXT���     TEXT� b  ls��� m  lo�� ���  m k d i r   - p  � o  or���� 0 qp_file_destination  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � %  copy from iPod to Music folder   � ��� >   c o p y   f r o m   i P o d   t o   M u s i c   f o l d e r� ���� Q  �p����� l �g���� k  �g�� ��� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ���  c p  � n  ����� 1  ����
�� 
strq� o  ������  0 this_ipod_file this_iPod_file� m  ���� ���   � o  ������ 0 qp_file_destination  ��  � ��� l ����������  ��  ��  � ��� l ��������  �   add the file to iTunes   � ��� .   a d d   t h e   f i l e   t o   i T u n e s�    r  �� l ������ I ����~
� .hookAdd cTrk      @ alis c  �� l ���}�| b  ��	
	 b  �� o  ���{�{ 0 file_destination   m  �� �  :
 o  ���z�z 0 filename  �}  �|   m  ���y
�y 
alis�~  ��  ��   o      �x�x 0 	new_track    l ���w�w   + % transfer rating, play count and name    � J   t r a n s f e r   r a t i n g ,   p l a y   c o u n t   a n d   n a m e  O  � k  �  r  �� J  ��  o  ���v�v 0 rat    !  o  ���u�u 0 pc  ! "�t" o  ���s�s 0 nom  �t   J      ## $%$ 1  ���r
�r 
pRte% &'& 1  ���q
�q 
pPlC' (�p( 1  ���o
�o 
pnam�p   )*) Q  �+,�n+ l ��-./- r  ��010 o  ���m�m 0 vk  1 1  ���l
�l 
pVdK.   if possible...   / �22    i f   p o s s i b l e . . ., R      �k�j�i
�k .ascrerr ****      � ****�j  �i  �n  * 3�h3 Q  45�g4 l 6786 r  9:9 o  �f�f 0 comp  : 1  �e
�e 
pAnt7   if possible...   8 �;;    i f   p o s s i b l e . . .5 R      �d�c�b
�d .ascrerr ****      � ****�c  �b  �g  �h   o  ���a�a 0 	new_track   <=< l �`�_�^�`  �_  �^  = >?> l �]@A�]  @   put in new playlist?   A �BB *   p u t   i n   n e w   p l a y l i s t ?? CDC Z  ]EF�\�[E >  GHG o  �Z�Z 0 new_playlist_name  H m  II �JJ  F k  #YKK LML Z  #KNO�Y�XN = #*PQP o  #&�W�W 0 new_playlist  Q m  &)�V
�V 
msngO l -GRSTR r  -GUVU l -CW�U�TW I -C�S�RX
�S .corecrel****      � null�R  X �QYZ
�Q 
koclY m  14�P
�P 
cPlyZ �O[�N
�O 
prdt[ K  7=\\ �M]�L
�M 
pnam] o  8;�K�K 0 new_playlist_name  �L  �N  �U  �T  V o      �J�J 0 new_playlist  S   create the playlist   T �^^ (   c r e a t e   t h e   p l a y l i s t�Y  �X  M _�I_ I LY�H`a
�H .coreclon****      � ****` o  LO�G�G 0 	new_track  a �Fb�E
�F 
inshb o  RU�D�D 0 new_playlist  �E  �I  �\  �[  D c�Cc r  ^gded [  ^cfgf o  ^a�B�B 0 	donecount 	doneCountg m  ab�A�A e o      �@�@ 0 	donecount 	doneCount�C  �   any errors then skip   � �hh *   a n y   e r r o r s   t h e n   s k i p� R      �?�>�=
�? .ascrerr ****      � ****�>  �=  ��  ��     a result from the find    �ii .   a   r e s u l t   f r o m   t h e   f i n d�   l ss�<jk�<  j f ` no file found, skip it (don't really need an "else" here, but something in future may be added)   k �ll �   n o   f i l e   f o u n d ,   s k i p   i t   ( d o n ' t   r e a l l y   n e e d   a n   " e l s e "   h e r e ,   b u t   s o m e t h i n g   i n   f u t u r e   m a y   b e   a d d e d )�  i   for each track...   j �mm $   f o r   e a c h   t r a c k . . .�P 0 t  f m  �;�; g o  �:�: 0 	filecount 	fileCount�O  d non l zz�9�8�7�9  �8  �7  o pqp l zz�6rs�6  r 
  ***   s �tt    * * *q uvu Z  z�wx�5�4w o  z}�3�3 0 	pb_exists  x k  ��yy z{z n ��|}| I  ���2�1�0�2 0 end_progress end_Progress�1  �0  }  f  ��{ ~�/~ O ��� I ���.�-�,
�. .aevtquitnull���    obj �-  �,  � m  ����
                                                                                  PGBR   alis    �  Mac HD                     �L�eH+   �qProgBar.app                                                     �t���K        ����  	                Export Artwork    �L�      ���     �q �H ؈ � �  y�  HMac HD:Users:dougadams:Library:iTunes:Scripts:Export Artwork:ProgBar.app    P r o g B a r . a p p    M a c   H D  AUsers/dougadams/Library/iTunes/Scripts/Export Artwork/ProgBar.app   /    ��  �/  �5  �4  v ��+� l ���*���*  � 
  ***   � ���    * * *�+  a m  �)�)  ��_ ��� I ���(�'�&
�( .miscactvnull��� ��� null�'  �&  � ��%� Z �����$�#� n  ����� 1  ���"
�" 
gavu� l ����!� � I �����
� .sysodlogaskr        TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���
� 
ret � o  ���� 	0 done1  � o  ���
� 
ret � o  ���
� 
ret � o  ���� 0 	donecount 	doneCount� m  ���� ���    o f  � o  ���� 0 	filecount 	fileCount� m  ���� ���    c o p i e d .� ���
� 
btns� J  ���� ��� o  ���� 0 thanks1  �  � ���
� 
dflt� m  ���� � ���
� 
disp� m  ���� � ���
� 
appr� o  ���� 0 my_title  � ���
� 
givu� m  ���� �  �!  �   � L  ����  �$  �#  �%   � m    ���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��  ��   � ��� l     ��
�	�  �
  �	  � ��� i   4 7��� I      ���� 0 verify_ipod  � ��� o      �� 0 p  �  �  � k     i�� ��� r     	��� c     ��� l    ���� b     ��� b     ��� m     �� ���  / V o l u m e s /� o    �� 0 p  � m    �� ���  /�  �  � m    �
� 
ctxt� o      � �  0 b  � ���� Q   
 i���� k    /�� ��� r    ��� c    ��� c    ��� o    ���� 0 b  � m    ��
�� 
psxf� m    ��
�� 
alis� o      ���� 0 d  � ���� Z    /������ E   ��� l   ������ I   �����
�� .earslfdrutxt  @    file� o    ���� 0 d  ��  ��  ��  � m    �� ���  i P o d _ C o n t r o l� L    (�� n    '��� 1   $ &��
�� 
strq� l   $������ c    $��� l   "������ b    "��� o     ���� 0 b  � m     !�� ��� $ i P o d _ C o n t r o l / M u s i c��  ��  � m   " #��
�� 
ctxt��  ��  ��  � R   + /������
�� .ascrerr ****      � ****��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � l  7 i���� k   7 i�� ��� I  7 ^����
�� .sysodlogaskr        TEXT� b   7 >��� b   7 <��� b   7 :��� o   7 8��
�� 
ret � m   8 9�� ���  S o r r y .   "� o   : ;���� 0 p  � m   < =�� ��� H "   c a n n o t   b e   a c c e s s e d   b y   t h i s   s c r i p t .� ����
�� 
btns� J   ? B�� ���� m   ? @�� ���  C a n c e l��  � �� 
�� 
dflt  m   E F����  ��
�� 
disp m   I J����   ��
�� 
appr o   M R���� 0 my_title   ����
�� 
givu m   U X���� ��  � �� R   _ i����
�� .ascrerr ****      � ****��   ��	��
�� 
errn	 m   c f��������  ��  � * $ the selected iPod is not accessible   � �

 H   t h e   s e l e c t e d   i P o d   i s   n o t   a c c e s s i b l e��  �  l     ��������  ��  ��    i  8 ; I      ������ 0 escape_punc   �� o      ���� 0 str  ��  ��   L     
 I    	����
�� .sysoexecTEXT���     TEXT b      b      m      � $ p e r l   - e   ' 
 	 $ s   =   q ` o    ���� 0 str   m     � P ` ; $ s   = ~ s / ( [ \ \ < > \ * \ / : ? " ] ) / _ / s g ; p r i n t   $ s ; '��    l     ��������  ��  ��     i   < ?!"! I      ��#���� 0 replace_chars  # $%$ o      ���� 0 txt  % &'& o      ���� 0 srch  ' (��( o      ���� 0 repl  ��  ��  " k     &)) *+* r     ,-, n    ./. 1    ��
�� 
txdl/ 1     ��
�� 
ascr- o      ���� 0 saved saveD+ 010 r    232 l   4����4 o    ���� 0 srch  ��  ��  3 n     565 1    
��
�� 
txdl6 1    ��
�� 
ascr1 787 r    9:9 n    ;<; 2    ��
�� 
citm< o    ���� 0 txt  : l     =����= o      ���� 0 	item_list  ��  ��  8 >?> r    @A@ l   B����B o    ���� 0 repl  ��  ��  A n     CDC 1    ��
�� 
txdlD 1    ��
�� 
ascr? EFE r    GHG c    IJI l   K����K o    ���� 0 	item_list  ��  ��  J m    ��
�� 
TEXTH o      ���� 0 txt  F LML r    #NON o    ���� 0 saved saveDO n     PQP 1     "��
�� 
txdlQ 1     ��
�� 
ascrM R��R L   $ &SS o   $ %���� 0 txt  ��    TUT l     ��������  ��  ��  U VWV i   @ CXYX I      ��Z���� 0 text_to_list  Z [\[ o      ���� 0 txt  \ ]��] o      ���� 	0 delim  ��  ��  Y k     3^^ _`_ r     aba n    cdc 1    ��
�� 
txdld 1     ��
�� 
ascrb o      ���� 0 saved saveD` efe Q    *ghig k   	 jj klk r   	 mnm J   	 oo p��p o   	 
���� 	0 delim  ��  n n     qrq 1    ��
�� 
txdlr 1    ��
�� 
ascrl s��s r    tut n    vwv 2    ��
�� 
citmw o    ���� 0 txt  u o      ���� 0 thelist theList��  h R      ��xy
�� .ascrerr ****      � ****x o      ���� 0 errstr errStry ��z��
�� 
errnz o      ���� 0 errnum errNum��  i k    *{{ |}| r    #~~ o    ���� 0 saved saveD n     ��� 1     "��
�� 
txdl� 1     ��
�� 
ascr} ���� R   $ *����
�� .ascrerr ****      � ****� o   ( )���� 0 errstr errStr� �����
�� 
errn� o   & '���� 0 errnum errNum��  ��  f ��� r   + 0��� o   + ,���� 0 saved saveD� n     ��� 1   - /��
�� 
txdl� 1   , -��
�� 
ascr� ��� L   1 3�� l  1 2��~�}� o   1 2�|�| 0 thelist theList�~  �}  �  W ��� l     �{�z�y�{  �z  �y  � ��� i  D G��� I      �x�w�v�x 0 get_music_folder  �w  �v  � k     �� ��� r     	��� l    ��u�t� b     ��� m     �� ���n p e r l   - e   ' l o c a l   $ /   =   u n d e f ; m y   $ s   =   < > ; 
 	 w h i l e   ( $ s = ~ m | < k e y > M u s i c   F o l d e r < / k e y > < s t r i n g > ( . * ? ) < / s t r i n g > | s g )   { 
 	 	 $ v   =   $ 1 ;   $ v   = ~   s / \ % ( [ a - f A - F 0 - 9 ] { 2 , 2 } ) / c h r ( h e x ( $ 1 ) ) / s e g ;   $ v   = ~   s | f i l e : / / l o c a l h o s t | | ; 
   	 	 i f   ( $ v   = ~   / ^ \ / V o l u m e s \ / / )   {   $ v   = ~   s | ^ / V o l u m e s / | | ;   }   e l s e   {   $ v   = ~   $ s t a r t u p   . " / " .   $ v ;     } 
 	 	 $ v = ~ s : / : \ : : g ;   p r i n t   $ v ; 
 	 } 
 '  � n   ��� I    �s�r�q�s 0 get_path_to_current_xml  �r  �q  �  f    �u  �t  � o      �p�p 0 
thecommand 
theCommand� ��o� L   
 �� I  
 �n��m
�n .sysoexecTEXT���     TEXT� o   
 �l�l 0 
thecommand 
theCommand�m  �o  � ��� l     �k�j�i�k  �j  �i  � ��� i  H K��� I      �h�g�f�h 0 get_path_to_current_xml  �g  �f  � k     7�� ��� r     	��� c     ��� l    ��e�d� I    �c��b
�c .sysoexecTEXT���     TEXT� m     �� ��� n d e f a u l t s   r e a d   c o m . a p p l e . i A p p s   i T u n e s R e c e n t D a t a b a s e P a t h s�b  �e  �d  � m    �a
�a 
TEXT� o      �`�` 0 o  � ��� r   
 +��� n   
 )��� 7  )�_��
�_ 
ctxt� l   ��^�]� [    ��� l   ��\�[� I   �Z�Y�
�Z .sysooffslong    ��� null�Y  � �X��
�X 
psof� m    �� ���  "� �W��V
�W 
psin� o    �U�U 0 o  �V  �\  �[  � m    �T�T �^  �]  � l   (��S�R� [    (��� l   &��Q�P� I   &�O�N�
�O .sysooffslong    ��� null�N  � �M��
�M 
psof� m     �� ���  . x m l� �L��K
�L 
psin� o   ! "�J�J 0 o  �K  �Q  �P  � m   & '�I�I �S  �R  � o   
 �H�H 0 o  � o      �G�G 0 xm  � ��F� L   , 7�� c   , 6��� l  , 4��E�D� n  , 4��� I   - 4�C��B�C 0 replace_chars  � ��� o   - .�A�A 0 xm  � ��� m   . /�� ���   � ��@� m   / 0�� ���  \  �@  �B  �  f   , -�E  �D  � m   4 5�?
�? 
TEXT�F  � ��� l     �>�=�<�>  �=  �<  � ��� i  L O��� I      �;��:�; 0 get_moddate get_modDate� ��9� o      �8�8 0 t  �9  �:  � k     u�� ��� l     �7���7  � < 6 make cvs-formatted time for 12 or 24 hour time format   � ��� l   m a k e   c v s - f o r m a t t e d   t i m e   f o r   1 2   o r   2 4   h o u r   t i m e   f o r m a t� ��� l     �6���6  � . ( thanks to z4obx0@yahoo.com for the idea   � ��� P   t h a n k s   t o   z 4 o b x 0 @ y a h o o . c o m   f o r   t h e   i d e a� ��� r     ��� l    ��5�4� n     ��� 1    �3
�3 
tstr� o     �2�2 0 t  �5  �4  � o      �1�1 0 ts  � ��� r    ��� n       7   �0
�0 
ctxt m    �/�/�� m    �.�.�� o    �-�- 0 ts  � o      �,�, 0 apm  �  Z    Q	 =   

 o    �+�+ 0 apm   m     �  p m r    ) b    ' l   %�*�) n    % 7   %�(
�( 
ctxt m    !�'�'  m   " $�&�&�� o    �%�% 0 ts  �*  �)   m   % & �    p m o      �$�$ 0 apm    =  , / o   , -�#�# 0 apm   m   - . �  a m �" r   2 A !  b   2 ?"#" l  2 =$�!� $ n   2 =%&% 7  3 =�'(
� 
ctxt' m   7 9�� ( m   : <����& o   2 3�� 0 ts  �!  �   # m   = >)) �**    a m! o      �� 0 apm  �"  	 r   D Q+,+ l  D O-��- n   D O./. 7  E O�01
� 
ctxt0 m   I K�� 1 m   L N����/ o   D E�� 0 ts  �  �  , o      �� 0 apm   232 r   R \454 n  R Z676 I   S Z�8�� 0 replace_chars  8 9:9 o   S T�� 0 apm  : ;<; m   T U== �>>  .< ?�? m   U V@@ �AA  :�  �  7  f   R S5 o      �� 0 apm  3 B�B L   ] uCC c   ] tDED l  ] rF��F b   ] rGHG b   ] pIJI b   ] nKLK b   ] hMNM b   ] fOPO b   ] bQRQ l  ] `S��
S n   ] `TUT m   ^ `�	
�	 
mnthU o   ] ^�� 0 t  �  �
  R 1   ` a�
� 
spacP l  b eV��V n   b eWXW 1   c e�
� 
day X o   b c�� 0 t  �  �  N m   f gYY �ZZ  ,  L l  h m[��[ n   h m\]\ 1   i m� 
�  
year] o   h i���� 0 t  �  �  J 1   n o��
�� 
spacH o   p q���� 0 apm  �  �  E m   r s��
�� 
ctxt�  � ^_^ l     ��������  ��  ��  _ `a` l     ��bc��  b #  this is an Apple sub-routine   c �dd :   t h i s   i s   a n   A p p l e   s u b - r o u t i n ea efe i   P Sghg I      ��i���� 0 number_to_string  i j��j o      ���� 0 this_number  ��  ��  h k     �kk lml r     non c     pqp o     ���� 0 this_number  q m    ��
�� 
TEXTo o      ���� 0 this_number  m r��r Z    �st��us E    	vwv o    ���� 0 this_number  w m    xx �yy  E +t k    �zz {|{ r    }~} l   ���� I   �����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m    �� ���  .� �����
�� 
psin� o    ���� 0 this_number  ��  ��  ��  ~ o      ���� 0 x  | ��� r    #��� l   !������ I   !�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m    �� ���  +� �����
�� 
psin� o    ���� 0 this_number  ��  ��  ��  � o      ���� 0 y  � ��� r   $ /��� l  $ -������ I  $ -�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   & '�� ���  E� �����
�� 
psin� o   ( )���� 0 this_number  ��  ��  ��  � o      ���� 0 z  � ��� r   0 E��� c   0 C��� c   0 A��� n   0 ?��� 7  1 ?����
�� 
cha � l  5 ;������ \   5 ;��� o   6 7���� 0 y  � l  7 :������ n   7 :��� 1   8 :��
�� 
leng� o   7 8���� 0 this_number  ��  ��  ��  ��  � l 	 < >������ m   < >��������  ��  � o   0 1���� 0 this_number  � m   ? @��
�� 
TEXT� m   A B��
�� 
nmbr� l     ������ o      ���� 0 decimal_adjust  ��  ��  � ��� Z   F c������ >  F I��� o   F G���� 0 x  � m   G H����  � r   L ]��� c   L [��� n   L Y��� 7  M Y����
�� 
cha � m   Q S���� � l  T X������ \   T X��� o   U V���� 0 x  � m   V W���� ��  ��  � o   L M���� 0 this_number  � m   Y Z��
�� 
TEXT� l     ������ o      ���� 0 
first_part  ��  ��  ��  � r   ` c��� m   ` a�� ���  � l     ������ o      ���� 0 
first_part  ��  ��  � ��� r   d w��� c   d u��� n   d s��� 7  e s����
�� 
cha � l  i m������ [   i m��� o   j k���� 0 x  � m   k l���� ��  ��  � l  n r������ \   n r��� o   o p���� 0 z  � m   p q���� ��  ��  � o   d e���� 0 this_number  � m   s t��
�� 
TEXT� l     ������ o      ���� 0 second_part  ��  ��  � ��� r   x {��� l  x y������ o   x y���� 0 
first_part  ��  ��  � l     ������ o      ���� 0 converted_number  ��  ��  � ��� Y   | ��������� Q   � ����� r   � ���� b   � ���� l 	 � ������� l  � ������� o   � ����� 0 converted_number  ��  ��  ��  ��  � n   � ���� 4   � ����
�� 
cha � o   � ����� 0 i  � l  � ������� o   � ����� 0 second_part  ��  ��  � l     ������ o      ���� 0 converted_number  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � r   � ���� b   � ���� l  � ������� o   � ����� 0 converted_number  ��  ��  � m   � ��� ���  0� l     ������ o      ���� 0 converted_number  ��  ��  �� 0 i  � m    ����� � l  � ������� o   � ����� 0 decimal_adjust  ��  ��  ��  � ���� L   � ��� l  � ����~� o   � ��}�} 0 converted_number  �  �~  ��  ��  u L   � ��� o   � ��|�| 0 this_number  ��  f � � l     �{�z�y�{  �z  �y     l     �x�x     ProgBar stuff    �    P r o g B a r   s t u f f  i  T W	 I      �w�v�u�w &0 check_for_progbar check_for_ProgBar�v  �u  	 l    +

 k     +  r      m     �t
�t boovfals o      �s�s 0 	pb_exists   �r Q    +�q r    " =      l   �p�o I   �n�m
�n .sysoexecTEXT���     TEXT b     b     m     �    l s   n    !"! 1    �l
�l 
strq" n    #$# 1    �k
�k 
psxp$ l   %�j�i% b    &'& l   (�h�g( c    )*) l   +�f�e+ I   �d,-
�d .earsffdralis        afdr, m    	.. �//  d l i b- �c0�b
�c 
from0 m   
 �a
�a fldmfldu�b  �f  �e  * m    �`
�` 
TEXT�h  �g  ' m    11 �22  i T u n e s : S c r i p t s :�j  �i   m    33 �44 *   |   g r e p   ' P r o g B a r . a p p '�m  �p  �o   m    55 �66  P r o g B a r . a p p o      �_�_ 0 	pb_exists   R      �^�]�\
�^ .ascrerr ****      � ****�]  �\  �q  �r    	 mod v2.0    �77    m o d   v 2 . 0 898 l     �[�Z�Y�[  �Z  �Y  9 :;: l     �X<=�X  < ' ! Prepare progress bar subroutine.   = �>> B   P r e p a r e   p r o g r e s s   b a r   s u b r o u t i n e .; ?@? i   X [ABA I      �WC�V�W 0 prep_progress prep_ProgressC D�UD o      �T�T 0 maxval maxVal�U  �V  B O     NEFE k    MGG HIH I   	�S�R�Q
�S .miscactvnull��� ��� null�R  �Q  I J�PJ O   
 MKLK k    LMM NON O   &PQP r    %RSR o    !�O�O 0 moment1  S 1   ! $�N
�N 
pcntQ 4    �MT
�M 
texFT m    UU �VV  f i e l d _ o n eO W�LW O   ' LXYX k   . KZZ [\[ r   . 3]^] m   . /�K�K  ^ 1   / 2�J
�J 
conT\ _`_ r   4 9aba m   4 5�I
�I boovtrueb 1   5 8�H
�H 
usTA` cdc I  : ?�G�F�E
�G .coVSstaAnull��� ��� obj �F  �E  d efe r   @ Eghg m   @ A�D�D  h 1   A D�C
�C 
minWf i�Bi r   F Kjkj o   F G�A�A 0 maxval maxValk 1   G J�@
�@ 
maxV�B  Y 4   ' +�?l
�? 
proIl m   ) *mm �nn  p r o g _ o n e�L  L 4   
 �>o
�> 
cwino o    �=�=  0 progbarwinname progBarWinName�P  F m     pp
                                                                                  PGBR   alis    �  Mac HD                     �L�eH+   �qProgBar.app                                                     �t���K        ����  	                Export Artwork    �L�      ���     �q �H ؈ � �  y�  HMac HD:Users:dougadams:Library:iTunes:Scripts:Export Artwork:ProgBar.app    P r o g B a r . a p p    M a c   H D  AUsers/dougadams/Library/iTunes/Scripts/Export Artwork/ProgBar.app   /    ��  @ qrq l     �<�;�:�<  �;  �:  r sts l     �9uv�9  u k e Increment progress bar subroutine. DA added n parameter, the name of the current track being checked   v �ww �   I n c r e m e n t   p r o g r e s s   b a r   s u b r o u t i n e .   D A   a d d e d   n   p a r a m e t e r ,   t h e   n a m e   o f   t h e   c u r r e n t   t r a c k   b e i n g   c h e c k e dt xyx i   \ _z{z I      �8|�7�8 0 increment_progbar  | }~} o      �6�6 0 i  ~ �5 o      �4�4 0 n  �5  �7  { O     >��� O    =��� k    <�� ��� O    ��� r    ��� o    �3�3 0 
importing1  � 1    �2
�2 
pcnt� 4    �1�
�1 
texF� m    �� ���  f i e l d _ o n e� ��� O  ! .��� r   ( -��� o   ( )�0�0 0 i  � 1   ) ,�/
�/ 
conT� 4   ! %�.�
�. 
proI� m   # $�� ���  p r o g _ o n e� ��-� O  / <��� r   6 ;��� o   6 7�,�, 0 n  � 1   7 :�+
�+ 
pcnt� 4   / 3�*�
�* 
texF� m   1 2�� ���  f i e l d _ t w o�-  � 4    �)�
�) 
cwin� o    �(�(  0 progbarwinname progBarWinName� m     ��
                                                                                  PGBR   alis    �  Mac HD                     �L�eH+   �qProgBar.app                                                     �t���K        ����  	                Export Artwork    �L�      ���     �q �H ؈ � �  y�  HMac HD:Users:dougadams:Library:iTunes:Scripts:Export Artwork:ProgBar.app    P r o g B a r . a p p    M a c   H D  AUsers/dougadams/Library/iTunes/Scripts/Export Artwork/ProgBar.app   /    ��  y ��� l     �'�&�%�'  �&  �%  � ��� l     �$���$  � #  End progress bar subroutine.   � ��� :   E n d   p r o g r e s s   b a r   s u b r o u t i n e .� ��� i   ` c��� I      �#�"�!�# 0 end_progress end_Progress�"  �!  � O     ,��� O    +��� k    *�� ��� O   ��� I   � ��
�  .coVSstoTnull��� ��� obj �  �  � 4    ��
� 
proI� m    �� ���  p r o g _ o n e� ��� O   *��� r   $ )��� m   $ %��  � 1   % (�
� 
conT� 4    !��
� 
proI� m     �� ���  p r o g _ o n e�  � 4    ��
� 
cwin� o    ��  0 progbarwinname progBarWinName� m     ��
                                                                                  PGBR   alis    �  Mac HD                     �L�eH+   �qProgBar.app                                                     �t���K        ����  	                Export Artwork    �L�      ���     �q �H ؈ � �  y�  HMac HD:Users:dougadams:Library:iTunes:Scripts:Export Artwork:ProgBar.app    P r o g B a r . a p p    M a c   H D  AUsers/dougadams/Library/iTunes/Scripts/Export Artwork/ProgBar.app   /    ��  � ��� l     ����  �  �  �       ��� ! & + 0 5 : F K P W \��������������  � ��������
�	��������� ��������������� 0 dd_new_playlistprompt  � 	0 nosel  � 	0 done1  � 0 thanks1  � 
0 which1  � 0 moment1  � 0 
importing1  �
 0 ualb  �	 0 uart  � 0 comp_artist  � 0 my_title  �  0 progbarwinname progBarWinName� 0 verify_ipod  � 0 escape_punc  � 0 replace_chars  � 0 text_to_list  � 0 get_music_folder  �  0 get_path_to_current_xml  �� 0 get_moddate get_modDate�� 0 number_to_string  �� &0 check_for_progbar check_for_ProgBar�� 0 prep_progress prep_Progress�� 0 increment_progbar  �� 0 end_progress end_Progress
�� .aevtoappnull  �   � ****� ��� � P u t   i m p o r t e d   t r a c k s   i n t o   n e w   p l a y l i s t   n a m e d . . . ?   ( L e a v e   b l a n k   t o   s k i p )� ������������� 0 verify_ipod  �� ����� �  ���� 0 p  ��  � �������� 0 p  �� 0 b  �� 0 d  � �������������������������������������������
�� 
ctxt
�� 
psxf
�� 
alis
�� .earslfdrutxt  @    file
�� 
strq��  ��  
�� 
ret 
�� 
btns
�� 
dflt
�� 
disp
�� 
appr
�� 
givu�� �� 

�� .sysodlogaskr        TEXT
�� 
errn������ j�%�%�&E�O '��&�&E�O�j � ��%�&�,EY )jhW 9X 	 
��%�%�%��kva ka ja b  
a a a  O)a a lh� ������������ 0 escape_punc  �� ����� �  ���� 0 str  ��  � ���� 0 str  � ��
�� .sysoexecTEXT���     TEXT�� �%�%j � ��"���������� 0 replace_chars  �� ����� �  �������� 0 txt  �� 0 srch  �� 0 repl  ��  � ������������ 0 txt  �� 0 srch  �� 0 repl  �� 0 saved saveD�� 0 	item_list  � ��������
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� '��,E�O���,FO��-E�O���,FO��&E�O���,FO�� ��Y���������� 0 text_to_list  �� ����� �  ������ 0 txt  �� 	0 delim  ��  � �������������� 0 txt  �� 	0 delim  �� 0 saved saveD�� 0 thelist theList�� 0 errstr errStr�� 0 errnum errNum� �����������
�� 
ascr
�� 
txdl
�� 
citm�� 0 errstr errStr� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� 4��,E�O �kv��,FO��-E�W X  ���,FO)�l�O���,FO�� ������������� 0 get_music_folder  ��  ��  � ���� 0 
thecommand 
theCommand� ������� 0 get_path_to_current_xml  
�� .sysoexecTEXT���     TEXT�� �)j+ %E�O�j � ������������� 0 get_path_to_current_xml  ��  ��  � ������ 0 o  �� 0 xm  � ���������������������
�� .sysoexecTEXT���     TEXT
�� 
TEXT
�� 
ctxt
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null�� 0 replace_chars  �� 8�j �&E�O�[�\[Z*���� k\Z*���� m2E�O)���m+ �&� ������������� 0 get_moddate get_modDate�� ����� �  ���� 0 t  ��  � �������� 0 t  �� 0 ts  �� 0 apm  � ��������)��=@��������Y��
�� 
tstr
�� 
ctxt�������������� 0 replace_chars  
�� 
mnth
�� 
spac
�� 
day 
�� 
year�� v��,E�O�[�\[Z�\Zi2E�O��  �[�\[Zk\Z�2�%E�Y '��  �[�\[Zk\Z�2�%E�Y �[�\[Zk\Z�2E�O)���m+ E�O��,�%��,%�%�a ,%�%�%�&� ��h���������� 0 number_to_string  �� ����� �  ���� 0 this_number  ��  � 	������~�}�|�{�z�y�� 0 this_number  �� 0 x  � 0 y  �~ 0 z  �} 0 decimal_adjust  �| 0 
first_part  �{ 0 second_part  �z 0 converted_number  �y 0 i  � �xx�w��v�u�t���s�r�q��p�o�
�x 
TEXT
�w 
psof
�v 
psin�u 
�t .sysooffslong    ��� null
�s 
cha 
�r 
leng
�q 
nmbr�p  �o  �� ���&E�O�� �*���� E�O*���� E�O*���� E�O�[�\[Z���,\Zi2�&�&E�O�j �[�\[Zk\Z�k2�&E�Y �E�O�[�\[Z�k\Z�k2�&E�O�E�O &k�kh  ���/%E�W X  ��%E�[OY��O�Y �� �n	�m�l���k�n &0 check_for_progbar check_for_ProgBar�m  �l  �  � �j.�i�h�g�f1�e�d3�c5�b�a�j 0 	pb_exists  
�i 
from
�h fldmfldu
�g .earsffdralis        afdr
�f 
TEXT
�e 
psxp
�d 
strq
�c .sysoexecTEXT���     TEXT�b  �a  �k ,fE�O  ����l �&�%�,�,%�%j � E�W X  h� �`B�_�^���]�` 0 prep_progress prep_Progress�_ �\��\ �  �[�[ 0 maxval maxVal�^  � �Z�Z 0 maxval maxVal� p�Y�X�WU�V�Um�T�S�R�Q�P
�Y .miscactvnull��� ��� null
�X 
cwin
�W 
texF
�V 
pcnt
�U 
proI
�T 
conT
�S 
usTA
�R .coVSstaAnull��� ��� obj 
�Q 
minW
�P 
maxV�] O� K*j O*�b  / 9*��/ b  *�,FUO*��/ j*�,FOe*�,FO*j 
Oj*�,FO�*�,FUUU� �O{�N�M���L�O 0 increment_progbar  �N �K��K �  �J�I�J 0 i  �I 0 n  �M  � �H�G�H 0 i  �G 0 n  � 	��F�E��D�C��B�
�F 
cwin
�E 
texF
�D 
pcnt
�C 
proI
�B 
conT�L ?� ;*�b  / /*��/ b  *�,FUO*��/ �*�,FUO*��/ �*�,FUUU� �A��@�?���>�A 0 end_progress end_Progress�@  �?  �  � ��=�<��;��:
�= 
cwin
�< 
proI
�; .coVSstoTnull��� ��� obj 
�: 
conT�> -� )*�b  / *��/ *j UO*��/ j*�,FUUU� �9��8�7���6
�9 .aevtoappnull  �   � ****� k    ���  ���  ��5�5  �8  �7  � �4�4 0 t  � ��3��2�1�0�/�.�-�,�+�*�)�(�' ��&�%�$�#�"�!� ���������������L�������
�	��������� ��������������������������������������������������DF������N����k������������������������������������I���������������������3 &0 check_for_progbar check_for_ProgBar
�2 
cBrW
�1 
sele�0 0 sel  
�/ 
pPly
�. 
ctnr
�- 
pKnd
�, eSrckPod
�+ 
bool
�* 
pnam�) 0 ipod_src_name iPod_src_name
�( 
ret 
�' 
btns
�& 
dflt
�% 
disp
�$ 
appr
�# 
givu�" �! 

�  .sysodlogaskr        TEXT� 0 verify_ipod  � 0 the_ipod_folder  � 0 get_music_folder  � 0 musicfolder musicFolder
� 
msng� 0 new_playlist  � 0 new_playlist_name  
� 
dtxt� 
� 
ttxt� 0 filelistref fileListRef
� 
leng� 0 	filecount 	fileCount� 0 	donecount 	doneCount� 0 	pb_exists  
� .miscactvnull��� ��� null
� 
cwin
� 
titl
� .appSshoHnull��� ��� obj � 0 prep_progress prep_Progress�  ���
 0 
foundfiles 
foundFiles
�	 
cobj
� 
pcnt
� 
pSiz� 0 number_to_string  
� 
pArt
� 
pAlb
� 
asmo� 0 get_moddate get_modDate
� 
pAnt
�  
pRte
�� 
pPlC
�� 
pVdK�� 	�� 0 siz  �� 0 art  �� 0 alb  �� �� 0 nom  �� �� 0 moddate modDate�� �� 0 comp  �� �� 0 rat  �� 0 pc  �� 0 vk  �� 0 rez  
�� .sysoexecTEXT���     TEXT��  ��  �� 0 text_to_list  
�� 
prmp
�� .gtqpchltns    @   @ ns  
�� 
TEXT��  0 this_ipod_file this_iPod_file
�� 
errn������ 0 filename  �� 0 increment_progbar  �� 0 replace_chars  �� 0 escape_punc  �� 0 	artfolder 	artFolder�� 0 	albfolder 	albFolder
�� 
ctxt�� 0 file_destination  
�� 
psxp
�� 
strq�� 0 qp_file_destination  
�� 
alis
�� .hookAdd cTrk      @ alis�� 0 	new_track  
�� 
kocl
�� 
cPly
�� 
prdt
�� .corecrel****      � null
�� 
insh
�� .coreclon****      � ****�� 0 end_progress end_Progress
�� .aevtquitnull���    obj 
�� 
gavu�6�*j+  O��*�k/ Q*�,E�O*�,�,�,� 	 �jv�& *�,�,�,E�Y *�b  %��kv�ka ja b  
a a a  OhUO)�k+ E` O)j+ E` Oa E` Oa E` Ob   a a �la b  
a ka   a !,E` O)�,E` "O�a #,E` $OjE` %O_ & >a ' +*j (Ob  
*a )b  /a *,FO*a )b  /j +UO)_ $k+ ,Y hOa -nhk_ $kh  jvE` .O_ "a /�/a 0, �)*a 1,Ek+ 2*a 3,*a 4,*�,)*a 5,Ek+ 6*a 7,*a 8,*a 9,*a :,Ea ;vE[a /k/E` <Z[a /l/E` =Z[a /m/E` >Z[a /a ?/E` @Z[a /a A/E` BZ[a /a C/E` DZ[a /a E/E` FZ[a /a  /E` GZ[a /a ;/E` HZO_ >a I  b  E` >Y hO_ =a J  b  E` =Y hO_ De  b  	E` =Y hUOa E` KO (a L_ %a M%_ <%a N%_ B%a O%j PE` KW X Q RhO_ Ka 	 _ Ka S�&)_ K�l+ TE` .O_ .a #,k K_ .a Ub  a V%_ @%a W%a b  
a ? Xa Y&E` ZO_ Za [  )a \a ]lhY hY _ .a /k/E` ZO)_ Za ^l+ Ta /i/E` _O_ & )�_ @l+ `Y hO))_ =a aa bm+ ck+ dE` eO))_ >a fa gm+ ck+ dE` hO_ _ e%a i%_ h%a Y&a j&E` kO_ ka l,a m,E` nO a o_ n%j PW X Q RhO �a p_ Za m,%a q%_ n%j PO_ ka r%_ _%a s&j tE` uO_ u __ F_ G_ @mvE[a /k/*a 8,FZ[a /l/*a 9,FZ[a /m/*�,FZO _ H*a :,FW X Q RhO _ D*a 7,FW X Q RhUO_ a v ;_ a   *a wa xa y�_ la ? zE` Y hO_ ua {_ l |Y hO_ %kE` %W X Q RhY h[OY��O_ & )j+ }Oa ' *j ~UY hOPoO*j (O�b  %�%�%_ %%a %_ $%a �%�b  kv�ka ka b  
a a a  a �,E hY hU ascr  ��ޭ