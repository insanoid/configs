FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
"Quick Convert" for iTunes
written by Doug Adams
dougadams@mac.com

v2.9 oct 6 2008
- fixes minor problem converting POSIX files in "bookmarkable" routine

v2.8 aug 20 2008
- compatible with iTunes 7.7.1
- GUI updates
- accounts for DOS-formatted drives

v2.7 apr 3 2008
- saved as universal binary
- files converted to AAC with the bookmarkable option are re-added to "Audiobooks" Master Library correctly

v2.6.1 dec 31 2006
- fixed error thrown when conversion procedure is canceled

v2.6 march 24 2006
- fixed problem selecting CD playlist
- updated dialog and choose prompts to refer to import or convert depending on class of selected playlist tracks
- prevents selection of iPod or Radio playlist tracks; prevents attempt to convert URL tracks

v2.5 january 18 2006
- option to remove/delete original tracks/files
- option to convert to bookmarkable also renames AAC with "m4b" extension

v2.4 february 25 2005
- option to make tracks converted to AAC "bookmarkable"

v2.3 released may 22 '04
-- no longer works in OS 9
-- condensed code
-- more error checking

v2.2 released mar 4 '04
-- tidied up some routines
-- removed a superflous confirmation dialog


Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.malcolmadams.com/itunes/
     � 	 	
 
 " Q u i c k   C o n v e r t "   f o r   i T u n e s 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m 
 
 v 2 . 9   o c t   6   2 0 0 8 
 -   f i x e s   m i n o r   p r o b l e m   c o n v e r t i n g   P O S I X   f i l e s   i n   " b o o k m a r k a b l e "   r o u t i n e 
 
 v 2 . 8   a u g   2 0   2 0 0 8 
 -   c o m p a t i b l e   w i t h   i T u n e s   7 . 7 . 1 
 -   G U I   u p d a t e s 
 -   a c c o u n t s   f o r   D O S - f o r m a t t e d   d r i v e s 
 
 v 2 . 7   a p r   3   2 0 0 8 
 -   s a v e d   a s   u n i v e r s a l   b i n a r y 
 -   f i l e s   c o n v e r t e d   t o   A A C   w i t h   t h e   b o o k m a r k a b l e   o p t i o n   a r e   r e - a d d e d   t o   " A u d i o b o o k s "   M a s t e r   L i b r a r y   c o r r e c t l y 
 
 v 2 . 6 . 1   d e c   3 1   2 0 0 6 
 -   f i x e d   e r r o r   t h r o w n   w h e n   c o n v e r s i o n   p r o c e d u r e   i s   c a n c e l e d 
 
 v 2 . 6   m a r c h   2 4   2 0 0 6 
 -   f i x e d   p r o b l e m   s e l e c t i n g   C D   p l a y l i s t 
 -   u p d a t e d   d i a l o g   a n d   c h o o s e   p r o m p t s   t o   r e f e r   t o   i m p o r t   o r   c o n v e r t   d e p e n d i n g   o n   c l a s s   o f   s e l e c t e d   p l a y l i s t   t r a c k s 
 -   p r e v e n t s   s e l e c t i o n   o f   i P o d   o r   R a d i o   p l a y l i s t   t r a c k s ;   p r e v e n t s   a t t e m p t   t o   c o n v e r t   U R L   t r a c k s 
 
 v 2 . 5   j a n u a r y   1 8   2 0 0 6 
 -   o p t i o n   t o   r e m o v e / d e l e t e   o r i g i n a l   t r a c k s / f i l e s 
 -   o p t i o n   t o   c o n v e r t   t o   b o o k m a r k a b l e   a l s o   r e n a m e s   A A C   w i t h   " m 4 b "   e x t e n s i o n 
 
 v 2 . 4   f e b r u a r y   2 5   2 0 0 5 
 -   o p t i o n   t o   m a k e   t r a c k s   c o n v e r t e d   t o   A A C   " b o o k m a r k a b l e " 
 
 v 2 . 3   r e l e a s e d   m a y   2 2   ' 0 4 
 - -   n o   l o n g e r   w o r k s   i n   O S   9 
 - -   c o n d e n s e d   c o d e 
 - -   m o r e   e r r o r   c h e c k i n g 
 
 v 2 . 2   r e l e a s e d   m a r   4   ' 0 4 
 - -   t i d i e d   u p   s o m e   r o u t i n e s 
 - -   r e m o v e d   a   s u p e r f l o u s   c o n f i r m a t i o n   d i a l o g 
 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 h t t p : / / w w w . m a l c o l m a d a m s . c o m / i t u n e s / 
   
  
 j     �� �� 0 my_title    m        �    Q u i c k   C o n v e r t      l          p       ������ 0 encoderbackup encoderBackup��    r l stores name of the current Preferences-set encoder to be restored when procedure is completed (or canceled)     �   �   s t o r e s   n a m e   o f   t h e   c u r r e n t   P r e f e r e n c e s - s e t   e n c o d e r   t o   b e   r e s t o r e d   w h e n   p r o c e d u r e   i s   c o m p l e t e d   ( o r   c a n c e l e d )      l     ��������  ��  ��        l    ����  O        k          I   	������
�� .miscactvnull��� ��� null��  ��       !   l  
 
��������  ��  ��   !  " # " l  
 
�� $ %��   $   inits    % � & &    i n i t s #  ' ( ' r   
  ) * ) m   
  + + � , , . C o n v e r t   t r a c k s   u s i n g . . . * o      ���� 0 choose_encoder_prompt   (  - . - r     / 0 / m     1 1 � 2 2 ` P u t   c o n v e r t e d   t r a c k s   i n t o   n e w   P l a y l i s t   n a m e d . . . ? 0 o      ���� 0 make_new_prompt   .  3 4 3 r     5 6 5 m     7 7 � 8 8   N o ,   J u s t   C o n v e r t 6 o      ���� 0 my_no_button   4  9 : 9 r     ; < ; m     = = � > >  D o n ' t   D e l e t e ! < o      ���� 0 del_opt   :  ? @ ? l   ��������  ��  ��   @  A B A r     C D C m    ��
�� boovfals D o      ���� 	0 movem   B  E F E r    ! G H G m     I I � J J   H o      ���� 
0 bm_opt   F  K L K r   " ) M N M n   " ' O P O 1   % '��
�� 
pnam P 2   " %��
�� 
cEnc N o      ���� 0 
myencoders 
myEncoders L  Q R Q r   * 5 S T S n   * 1 U V U 1   / 1��
�� 
pnam V 1   * /��
�� 
pEnc T o      ���� 0 encoderbackup encoderBackup R  W X W l  6 6��������  ��  ��   X  Y Z Y l  6 6�� [ \��   [   exceptions    \ � ] ]    e x c e p t i o n s Z  ^ _ ^ Q   6 W ` a b ` r   9 G c d c n   9 C e f e 1   ? C��
�� 
pPly f 4  9 ?�� g
�� 
cwin g m   = >����  d o      ���� 0 thisplaylist thisPlaylist a R      ������
�� .ascrerr ****      � ****��  ��   b n  O W h i h I   P W�� j���� 0 alert_user_and_cancel   j  k�� k m   P S l l � m m ^ U n a b l e   t o   a c c e s s   t r a c k s   i n   s e l e c t e d   p l a y l i s t . . .��  ��   i  f   O P _  n o n l  X X��������  ��  ��   o  p q p r   X g r s r n   X c t u t 1   _ c��
�� 
pKnd u n   X _ v w v 1   [ _��
�� 
ctnr w o   X [���� 0 thisplaylist thisPlaylist s o      ���� 0 
the_source   q  x y x l  h h��������  ��  ��   y  z { z Z   h ~ | }���� | =  h o ~  ~ o   h k���� 0 
the_source    m   k n��
�� eSrckPod } n  r z � � � I   s z�� ����� 0 alert_user_and_cancel   �  ��� � m   s v � � � � � � i P o d   t r a c k s   c a n n o t   b e   c o n v e r t e d .   S e l e c t   s o m e   t r a c k s   i n   i T u n e s . . .��  ��   �  f   r s��  ��   {  � � � l   ��������  ��  ��   �  � � � Z    � � ����� � =   � � � � o    ����� 0 
the_source   � m   � ���
�� eSrckTun � n  � � � � � I   � ��� ����� 0 alert_user_and_cancel   �  ��� � m   � � � � � � � � R a d i o   t r a c k s   c a n n o t   b e   c o n v e r t e d .   S e l e c t   s o m e   t r a c k s   i n   i T u n e s . . .��  ��   �  f   � ���  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   which tracks    � � � �    w h i c h   t r a c k s �  � � � Z   � � � ��� � � >  � � � � � 1   � ���
�� 
sele � J   � �����   � l  � � � � � � r   � � � � � 1   � ���
�� 
sele � o      ����  0 selectedtracks selectedTracks �   it's selection    � � � �    i t ' s   s e l e c t i o n��   � l  � � � � � � Z   � � � ��� � � =  � � � � � o   � ����� 0 thisplaylist thisPlaylist � 4   � ��� �
�� 
cLiP � m   � �����  � l  � � � � � � k   � � � �  � � � l  � ��� � ���   �  activate    � � � �  a c t i v a t e �  ��� � n  � � � � � I   � ��� ����� 0 alert_user_and_cancel   �  ��� � m   � � � � � � � 2 S e l e c t   s o m e   t r a c k s   f i r s t .��  ��   �  f   � ���   �   but the WHOLE library???    � � � � 2   b u t   t h e   W H O L E   l i b r a r y ? ? ?��   � r   � � � � � l  � � ����� � 6  � � � � � n   � � � � � 2   � ���
�� 
cTrk � o   � ����� 0 thisplaylist thisPlaylist � =  � � � � � 1   � ���
�� 
enbl � m   � ���
�� boovtrue��  ��   � o      ����  0 selectedtracks selectedTracks �   it's the whole playlist    � � � � 0   i t ' s   t h e   w h o l e   p l a y l i s t �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   empty playlist    � � � �    e m p t y   p l a y l i s t �  � � � Z  � � � ����� � =  � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
leng � o   � �����  0 selectedtracks selectedTracks��  ��   � m   � �����   � n  � � � � � I   � ��� ����� 0 alert_user_and_cancel   �  ��� � m   � � � � � � � , N o   t r a c k s   i n   p l a y l i s t !��  ��   �  f   � ���  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � + % change prompts to refer to importing    � � � � J   c h a n g e   p r o m p t s   t o   r e f e r   t o   i m p o r t i n g �  � � � Z   � � ����� � =  � � � � � o   � ����� 0 
the_source   � m   � ���
�� eSrckACD � k   � �  � � � r   � � � m   � � � � � 2 I m p o r t   C D   t r a c k s   u s i n g . . . � o      ���� 0 choose_encoder_prompt   �  � � � r   � � � m  
 � � � � � ^ P u t   i m p o r t e d   t r a c k s   i n t o   n e w   P l a y l i s t   n a m e d . . . ? � o      ���� 0 make_new_prompt   �  ��� � r   � � � m   � � �    N o ,   J u s t   I m p o r t � o      ���� 0 my_no_button  ��  ��  ��   �  l ��������  ��  ��    l ��     choose encoder    �    c h o o s e   e n c o d e r 	 r  P

 c  L l H�~�} I H�|
�| .gtqpchltns    @   @ ns   o  �{�{ 0 
myencoders 
myEncoders �z
�z 
prmp l 	�y�x o  �w�w 0 choose_encoder_prompt  �y  �x   �v
�v 
inSL l 
&�u�t l &�s�r c  & o  "�q�q 0 encoderbackup encoderBackup m  "%�p
�p 
list�s  �r  �u  �t   �o
�o 
okbt m  ), �  O K �n
�n 
cnbt l 	/2 �m�l  m  /2!! �""  C a n c e l�m  �l   �k#$
�k 
appr# o  5:�j�j 0 my_title  $ �i%&
�i 
mlsl% m  AB�h
�h boovfals& �g%�f
�g 
empL�f  �~  �}   m  HK�e
�e 
TEXT o      �d�d 0 mynewencoder myNewEncoder	 '(' Z Qi)*�c�b) = QX+,+ o  QT�a�a 0 mynewencoder myNewEncoder, m  TW-- �.. 
 f a l s e* R  [e�`�_/
�` .ascrerr ****      � ****�_  / �^0�]
�^ 
errn0 m  _b�\�\���]  �c  �b  ( 121 l jj�[�Z�Y�[  �Z  �Y  2 343 Z j�56�X�W5 E  ju787 l jq9�V�U9 c  jq:;: o  jm�T�T 0 mynewencoder myNewEncoder; m  mp�S
�S 
TEXT�V  �U  8 m  qt<< �==  A A C6 r  x�>?> n  x�@A@ 1  ���R
�R 
bhitA l x�B�Q�PB I x��OCD
�O .sysodlogaskr        TEXTC m  x{EE �FF Y o u   h a v e   s e l e c t e d   t o   c o n v e r t   t r a c k s   t o   A A C .   W o u l d   y o u   a l s o   l i k e   t o   m a k e   t h e s e   t r a c k s   b o o k m a r k a b l e ?   T h e y   w i l l   b e   r e - a d d e d   t o   " A u d i o b o o k s " .D �NGH
�N 
btnsG J  ~�II JKJ m  ~�LL �MM  N oK N�MN m  ��OO �PP  Y e s�M  H �LQ�K
�L 
apprQ o  ���J�J 0 my_title  �K  �Q  �P  ? o      �I�I 
0 bm_opt  �X  �W  4 RSR l ���H�G�F�H  �G  �F  S TUT l ���EVW�E  V   make new playlist?   W �XX &   m a k e   n e w   p l a y l i s t ?U YZY T  �[[ k  �\\ ]^] r  ��_`_ l ��a�D�Ca I ���Bbc
�B .sysodlogaskr        TEXTb o  ���A�A 0 make_new_prompt  c �@de
�@ 
dtxtd l 	��f�?�>f m  ��gg �hh  �?  �>  e �=ij
�= 
btnsi l 
��k�<�;k J  ��ll mnm m  ��oo �pp  C a n c e ln qrq o  ���:�: 0 my_no_button  r s�9s m  ��tt �uu  O K�9  �<  �;  j �8vw
�8 
dfltv m  ���7�7 w �6x�5
�6 
apprx o  ���4�4 0 my_title  �5  �D  �C  ` o      �3�3 0 make_new  ^ yzy l ���2�1�0�2  �1  �0  z {|{ Z ��}~�/�.} = ��� n  ����� 1  ���-
�- 
bhit� o  ���,�, 0 make_new  � o  ���+�+ 0 my_no_button  ~  S  ���/  �.  | ��� l ���*�)�(�*  �)  �(  � ��'� Z  ����&�� > ����� n  ����� 1  ���%
�% 
ttxt� o  ���$�$ 0 make_new  � m  ���� ���  � k  ���� ��� r  ����� n  ����� 1  ���#
�# 
ttxt� o  ���"�" 0 make_new  � o      �!�! "0 newplaylistname newPlaylistName� ��� r  ����� m  ��� 
�  boovtrue� o      �� 	0 movem  � ���  S  ���  �&  � r  ��� m  �� ��� < E n t e r   n a m e   f o r   n e w   p l a y l i s t . . .� o      �� 0 make_new_prompt  �'  Z ��� l ����  �  �  � ��� l ����  � $  delete original tracks/files?   � ��� <   d e l e t e   o r i g i n a l   t r a c k s / f i l e s ?� ��� Z D����� > ��� o  �� 0 
the_source  � m  �
� eSrckACD� r  @��� n  >��� 1  :>�
� 
bhit� l :���� I :���
� .sysodlogaskr        TEXT� m  �� ��� V R e m o v e / D e l e t e   o r i g i n a l   t r a c k s   a n d / o r   f i l e s ?� ���
� 
btns� J  (�� ��� m   �� ��� 8 R e m o v e   T r a c k s   &   D e l e t e   F i l e s� ��� m   #�� ��� $ J u s t   R e m o v e   T r a c k s� ��� m  #&�� ���  D o n ' t   D e l e t e !�  � ���
� 
dflt� m  +,�� � ���
� 
appr� o  /4�
�
 0 my_title  �  �  �  � o      �	�	 0 del_opt  �  �  � ��� l EE����  �  �  � ��� l EE����  �   set new encoder   � ���     s e t   n e w   e n c o d e r� ��� r  EQ��� 4  EK��
� 
cEnc� o  GJ�� 0 mynewencoder myNewEncoder� 1  KP�
� 
pEnc� ��� l RR�� ���  �   ��  � ��� l RR������  � %  convert/import selected tracks   � ��� >   c o n v e r t / i m p o r t   s e l e c t e d   t r a c k s� ��� t  R���� X  V������ l l����� Z  l�������� > lu��� n  lq��� m  mq��
�� 
pcls� o  lm���� 0 	thistrack 	thisTrack� m  qt��
�� 
cURT� Q  x����� k  {��� ��� l {{������  �   convert the track   � ��� $   c o n v e r t   t h e   t r a c k� ��� r  {���� n  {���� 4  �����
�� 
cobj� m  ������ � l {������� I {������
�� .hookConvcTrk      @ obj � o  {|���� 0 	thistrack 	thisTrack��  ��  ��  � o      ���� 0 newt newT� ��� l ����������  ��  ��  � ��� l ��������  �   bookmarkable?   � �      b o o k m a r k a b l e ?�  Z  ������ = �� o  ������ 
0 bm_opt   m  �� �  Y e s l ��	
	 r  �� n �� I  �������� 0 make_bookmarkable   �� o  ������ 0 newt newT��  ��    f  �� o      ���� 0 newt newT
 = 7 returns ref to re-added m4b track in Audiobooks folder    � n   r e t u r n s   r e f   t o   r e - a d d e d   m 4 b   t r a c k   i n   A u d i o b o o k s   f o l d e r��  ��    l ����������  ��  ��    l ������     move to new playlist?    � ,   m o v e   t o   n e w   p l a y l i s t ?  Z  ������ o  ������ 	0 movem   k  ��   Z  ��!"����! H  ��## l ��$����$ I ����%��
�� .coredoexbool       obj % 4  ����&
�� 
cUsP& o  ������ "0 newplaylistname newPlaylistName��  ��  ��  " I ������'
�� .corecrel****      � null��  ' ��()
�� 
kocl( m  ����
�� 
cPly) ��*��
�� 
prdt* K  ��++ ��,��
�� 
pnam, o  ������ "0 newplaylistname newPlaylistName��  ��  ��  ��    -.- r  ��/0/ 4  ����1
�� 
cUsP1 o  ������ "0 newplaylistname newPlaylistName0 o      ���� 0 newplaylist newPlaylist. 232 l ����������  ��  ��  3 4��4 I ����56
�� .coreclon****      � ****5 o  ������ 0 newt newT6 ��7��
�� 
insh7 o  ������ 0 newplaylist newPlaylist��  ��  ��  ��   898 l ����������  ��  ��  9 :;: l ����<=��  <   delete anything?   = �>> "   d e l e t e   a n y t h i n g ?; ?@? r  �ABA l �C����C 6 �DED n  ��FGF 3  ����
�� 
cTrkG 4  ����H
�� 
cLiPH m  ������ E = �IJI 1  ���
�� 
pDIDJ l K����K e  LL n  MNM 1  
��
�� 
pDIDN o  ���� 0 	thistrack 	thisTrack��  ��  ��  ��  B o      ���� 0 t  @ OPO Z 1QR����Q = STS l U����U e  VV n  WXW m  ��
�� 
pclsX o  ���� 0 t  ��  ��  T m  ��
�� 
listR r  !-YZY n  !)[\[ 4  $)��]
�� 
cobj] m  '(���� \ o  !$���� 0 t  Z o      ���� 0 t  ��  ��  P ^_^ Z  2~`ab��` C  27cdc o  23���� 0 del_opt  d m  36ee �ff  r e m o v ea k  :hgg hih l ::��jk��  j !  delete file, remove track    k �ll 6   d e l e t e   f i l e ,   r e m o v e   t r a c k  i m��m Q  :hno��n k  =_pp qrq I =W��s��
�� .sysoexecTEXT���     TEXTs b  =Stut m  =@vv �ww  r m  u n  @Rxyx 1  NR��
�� 
strqy n  @Nz{z 1  JN��
�� 
psxp{ l @J|����| c  @J}~} l @F���� e  @F�� n  @F��� 1  AE��
�� 
pLoc� o  @A���� 0 	thistrack 	thisTrack��  ��  ~ m  FI��
�� 
TEXT��  ��  ��  r ���� I X_�����
�� .coredelonull���    obj � o  X[���� 0 t  ��  ��  o R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  b ��� C  kp��� o  kl���� 0 del_opt  � m  lo�� ���  j u s t� ���� k  sz�� ��� l ss������  � , & just remove track from iTunes library   � ��� L   j u s t   r e m o v e   t r a c k   f r o m   i T u n e s   l i b r a r y� ���� I sz�����
�� .coredelonull���    obj � o  sv���� 0 t  ��  ��  ��  ��  _ ���� l ��������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 m  � ����
�� 
errn� o      �~�~ 0 n  �  � k  ���� ��� Z  �����}�|� = ����� o  ���{�{ 0 n  � m  ���z�z�@� k  ���� ��� I ���y�x�w
�y .miscactvnull��� ��� null�x  �w  � ��v� n ����� I  ���u��t�u 0 alert_user_and_cancel  � ��s� m  ���� ���  U s e r   C a n c e l e d .�s  �t  �  f  ���v  �}  �|  � ��r� n ����� I  ���q��p�q 0 alert_user_and_cancel  � ��o� b  ����� b  ����� l ����n�m� c  ����� o  ���l�l 0 n  � m  ���k
�k 
TEXT�n  �m  � m  ���� ���   � o  ���j�j 0 m  �o  �p  �  f  ���r  ��  ��  �   no URL tracks   � ���    n o   U R L   t r a c k s�� 0 	thistrack 	thisTrack� o  Y\�i�i  0 selectedtracks selectedTracks� m  RU�h�h  ��� ��� l ���g�f�e�g  �f  �e  � ��� r  ����� 4  ���d�
�d 
cEnc� o  ���c�c 0 encoderbackup encoderBackup� 1  ���b
�b 
pEnc� ��� l ���a�`�_�a  �`  �_  � ��^� Z  ����]�\� = ����� 1  ���[
�[ 
pisf� m  ���Z
�Z boovtrue� Q  ����Y� Z ����X�W� = ���� n  ���� 1  ��V
�V 
gavu� l 
����U�T� l ����S�R� I ���Q��
�Q .sysodlogaskr        TEXT� m  ���� ��� 
 D o n e !� �P��
�P 
btns� l 
����O�N� J  ���� ��M� m  ���� ���  T h a n k s�M  �O  �N  � �L��
�L 
dflt� m  ���K�K � �J��
�J 
disp� m  ���I�I � �H��
�H 
givu� m  ���G�G,� �F��E
�F 
appr� o  ���D�D 0 my_title  �E  �S  �R  �U  �T  � m  �C
�C boovtrue� L  
�B�B  �X  �W  � R      �A�@�?
�A .ascrerr ****      � ****�@  �?  �Y  �]  �\  �^    m     ���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��  ��    ��� l     �>�=�<�>  �=  �<  � ��� i   ��� I      �;��:�; 0 make_bookmarkable  � ��9� o      �8�8 0 a_track  �9  �:  � O    M��� Q   L���� k   B�� ��� O   ��� r    ��� l   ��7�6� e    �� 1    �5
�5 
pLoc�7  �6  � o      �4�4 0 loc  � o    �3�3 0 a_track  � ��2� Z   B���1�� =   ��� n   � � I    �0�/�0 0 set_type   �. o    �-�- 0 loc  �.  �/     f    � m    �,
�, boovtrue� k   =  Z   :�+ @    %	
	 c    # 1    !�*
�* 
vers m   ! "�)
�) 
TEXT
 m   # $ �  7 . 0 k   ($  O  ( l r   , k J   , @  1   , /�(
�( 
pPlC  1   / 2�'
�' 
pPlD  1   2 5�&
�& 
pSkC  1   5 8�%
�% 
pSkD   1   8 ;�$
�$ 
pRte  !�#! 1   ; >�"
�" 
pPIS�#   J      "" #$# o      �!�! 0 pc  $ %&% o      � �  0 lp  & '(' o      �� 0 sc  ( )*) o      �� 0 ls  * +,+ o      �� 0 r  , -�- o      �� 0 pid  �   o   ( )�� 0 a_track   ./. Z   m �01��0 C   m t232 l  m p4��4 c   m p565 o   m n�� 0 loc  6 m   n o�
� 
TEXT�  �  3 m   p s77 �88  / V o l u m e s /1 r   w �9:9 4   w ��;
� 
psxf; l  { �<��< c   { �=>= l  { �?��? b   { �@A@ l  { �B��B n   { �CDC 7  ~ ��EF
� 
ctxtE m   � ��� F m   � ��
�
��D l  { ~G�	�G c   { ~HIH o   { |�� 0 loc  I m   | }�
� 
TEXT�	  �  �  �  A m   � �JJ �KK  . m 4 b�  �  > m   � ��
� 
ctxt�  �  : o      �� 0 loc  �  �  / LML r   � �NON l  � �P��P 6  � �QRQ n   � �STS 3   � ��
� 
cTrkT 4   � �� U
�  
cLiPU m   � ����� R =  � �VWV 1   � ���
�� 
pPISW o   � ����� 0 pid  �  �  O o      ���� 0 t  M XYX Z  � �Z[����Z =  � �\]\ l  � �^����^ e   � �__ n   � �`a` m   � ���
�� 
pclsa o   � ����� 0 t  ��  ��  ] m   � ���
�� 
list[ r   � �bcb n   � �ded 4   � ���f
�� 
cobjf m   � ����� e o   � ����� 0 t  c o      ���� 0 t  ��  ��  Y ghg I  � ���i��
�� .coredelonull���    obj i o   � ����� 0 t  ��  h jkj r   � �lml l  � �n����n I  � ���o��
�� .hookAdd cTrk      @ aliso o   � ����� 0 loc  ��  ��  ��  m o      ���� 
0 ntr nTrk p��p O   �$qrq k   �#ss tut r   � �vwv J   � �xx yzy o   � ����� 0 pc  z {|{ o   � ����� 0 sc  | }��} o   � ����� 0 r  ��  w J      ~~ � 1   � ���
�� 
pPlC� ��� 1   � ���
�� 
pSkC� ���� 1   � ���
�� 
pRte��  u ��� Z  ������� >  ��� o   ���� 0 ls  � m  ��
�� 
msng� r  ��� o  	���� 0 ls  � 1  	��
�� 
pSkD��  ��  � ���� Z #������� > ��� o  ���� 0 lp  � m  ��
�� 
msng� r  ��� o  ���� 0 lp  � 1  ��
�� 
pPlD��  ��  ��  r o   � ����� 
0 ntr nTr��  �+   Q  ':����� r  *1��� m  *+��
�� boovtrue� n      ��� 1  ,0��
�� 
pBkm� o  +,���� 
0 ntr nTr� R      ������
�� .ascrerr ****      � ****��  ��  ��   ���� L  ;=�� o  ;<���� 
0 ntr nTr��  �1  � L  @B�� o  @A���� 0 a_track  �2  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 m  � �����
�� 
errn� o      ���� 0 n  ��  � k  JL�� ��� l JJ������  �   log ("ERROR: " & m)   � ��� (   l o g   ( " E R R O R :   "   &   m )� ��� l JJ������  �   log n   � ���    l o g   n� ���� L  JL�� o  JK���� 0 a_track  ��  � m     ���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  � ��� l     ��������  ��  ��  � ��� i   
��� I      ������� 0 set_type  � ���� o      ���� 0 loc  ��  ��  � O     S��� Q    R���� k    B�� ��� r    ��� m    �� ���  M 4 B  � n      ��� 1   	 ��
�� 
asty� o    	���� 0 loc  � ��� r    ��� l   ������ e    �� n    ��� 1    ��
�� 
pnam� o    ���� 0 loc  ��  ��  � o      ���� 0 nom  � ���� Z    B������ H    �� D    ��� o    ���� 0 nom  � m    �� ���  . m 4 b� k    =�� ��� r    4��� c    2��� l   0������ b    0��� l   .������ n    .��� 7   .����
�� 
ctxt� m     "���� � d   # -�� l  $ ,������ [   $ ,��� l  $ *������ n   $ *��� 1   ( *��
�� 
leng� l  $ (������ e   $ (�� n   $ (��� 1   % '��
�� 
nmxt� o   $ %���� 0 loc  ��  ��  ��  ��  � m   * +���� ��  ��  � o    ���� 0 nom  ��  ��  � m   . /�� ���  m 4 b��  ��  � m   0 1��
�� 
TEXT� o      ���� 
0 newnom  � ��� r   5 :��� o   5 6���� 
0 newnom  � n      ��� 1   7 9��
�� 
pnam� o   6 7���� 0 loc  � ���� L   ; =�� m   ; <��
�� boovtrue��  ��  � l  @ B���� L   @ B�� m   @ A��
�� boovtrue�   is already an "m4b" file   � ��� 2   i s   a l r e a d y   a n   " m 4 b "   f i l e��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 m  � �����
�� 
errn� o      ���� 0 n  ��  � k   J R    l  J O I  J O����
�� .sysodlogaskr        TEXT o   J K���� 0 m  ��    
 debugging    �    d e b u g g i n g �� L   P R		 m   P Q��
�� boovfals��  � m     

�                                                                                  MACS   alis    `  Mac HD                     �L�eH+     �
Finder.app                                                       s��0[�        ����  	                CoreServices    �L�      �0�       �   Q   P  -Mac HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c   H D  &System/Library/CoreServices/Finder.app  / ��  �  l     ��������  ��  ��   �� i    I      ������ 0 alert_user_and_cancel   �� o      ���� 0 message  ��  ��   O     # k    "  l   ����   ' ! restore original encoder setting    � B   r e s t o r e   o r i g i n a l   e n c o d e r   s e t t i n g  r     4    ��
�� 
cEnc o    �� 0 encoderbackup encoderBackup 1    �~
�~ 
pEnc �} I   "�| !
�| .sysodlogaskr        TEXT  o    �{�{ 0 message  ! �z"#
�z 
btns" J    $$ %�y% m    && �''  Q u i t�y  # �x()
�x 
cbtn( m    ** �++  Q u i t) �w,-
�w 
dflt, m    �v�v - �u./
�u 
disp. m    �t�t  / �s0�r
�s 
appr0 o    �q�q 0 my_title  �r  �}   m     11�                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��       �p2 3456�p  2 �o�n�m�l�k�o 0 my_title  �n 0 make_bookmarkable  �m 0 set_type  �l 0 alert_user_and_cancel  
�k .aevtoappnull  �   � ****3 �j��i�h78�g�j 0 make_bookmarkable  �i �f9�f 9  �e�e 0 a_track  �h  7 �d�c�b�a�`�_�^�]�\�[�Z�Y�d 0 a_track  �c 0 loc  �b 0 pc  �a 0 lp  �` 0 sc  �_ 0 ls  �^ 0 r  �] 0 pid  �\ 0 t  �[ 
0 ntr nTr�Z 0 m  �Y 0 n  8 "��X�W�V�U�T�S�R�Q�P�O�N�M�L�K7�J�I�HJ�G�F:�E�D�C�B�A�@�?�>�=;
�X 
pLoc�W 0 set_type  
�V 
vers
�U 
TEXT
�T 
pPlC
�S 
pPlD
�R 
pSkC
�Q 
pSkD
�P 
pRte
�O 
pPIS�N 
�M 
cobj�L �K 
�J 
psxf
�I 
ctxt�H��
�G 
cLiP
�F 
cTrk:  
�E 
pcls
�D 
list
�C .coredelonull���    obj 
�B .hookAdd cTrk      @ alis
�A 
msng
�@ 
pBkm�?  �>  �= 0 m  ; �<�;�:
�< 
errn�; 0 n  �:  �gN�J@� *�,EE�UO)�k+ e $*�,�&�� A*�,*�,*�,*�,*�,*�,�vE[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�Z[��/E�ZUO��&a  %*a ��&[a \[Zk\Za 2a %a &/E�Y hO*a k/a .a [�,\Z�81E�O�a ,Ea   ��k/E�Y hO�j O�j E�O� G���mvE[�k/*�,FZ[�l/*�,FZ[�m/*�,FZO�a  
�*�,FY hO�a  
�*�,FY hUY  e�a ,FW X  hO�Y �W 	X   !�U4 �9��8�7<=�6�9 0 set_type  �8 �5>�5 >  �4�4 0 loc  �7  < �3�2�1�0�/�3 0 loc  �2 0 nom  �1 
0 newnom  �0 0 m  �/ 0 n  = 
��.�-��,�+�*��)�(?�'
�. 
asty
�- 
pnam
�, 
ctxt
�+ 
nmxt
�* 
leng
�) 
TEXT�( 0 m  ? �&�%�$
�& 
errn�% 0 n  �$  
�' .sysodlogaskr        TEXT�6 T� P @��,FO��,EE�O�� '�[�\[Zk\Z��,E�,k'2�%�&E�O���,FOeY eW X 
 �j OfU5 �#�"�!@A� �# 0 alert_user_and_cancel  �" �B� B  �� 0 message  �!  @ �� 0 message  A 1����&�*�����
� 
cEnc� 0 encoderbackup encoderBackup
� 
pEnc
� 
btns
� 
cbtn
� 
dflt
� 
disp
� 
appr� 

� .sysodlogaskr        TEXT�  $�  *��/*�,FO���kv���k�j�b   � U6 �C��DE�
� .aevtoappnull  �   � ****C k    FF  ��  �  �  D ���� 0 	thistrack 	thisTrack� 0 m  � 0 n  E ��
 +�	 1� 7� =�� I����� ������������ l���������� ��� ������� ���:���� ��� � � �����������!��������������-����<E��LO��������got��������������������������������������������������������ev�������������G������������������
�
 .miscactvnull��� ��� null�	 0 choose_encoder_prompt  � 0 make_new_prompt  � 0 my_no_button  � 0 del_opt  � 	0 movem  � 
0 bm_opt  
� 
cEnc
� 
pnam� 0 
myencoders 
myEncoders
�  
pEnc�� 0 encoderbackup encoderBackup
�� 
cwin
�� 
pPly�� 0 thisplaylist thisPlaylist��  ��  �� 0 alert_user_and_cancel  
�� 
ctnr
�� 
pKnd�� 0 
the_source  
�� eSrckPod
�� eSrckTun
�� 
sele��  0 selectedtracks selectedTracks
�� 
cLiP
�� 
cTrk
�� 
enbl
�� 
leng
�� eSrckACD
�� 
prmp
�� 
inSL
�� 
list
�� 
okbt
�� 
cnbt
�� 
appr
�� 
mlsl
�� 
empL�� 
�� .gtqpchltns    @   @ ns  
�� 
TEXT�� 0 mynewencoder myNewEncoder
�� 
errn����
�� 
btns�� 
�� .sysodlogaskr        TEXT
�� 
bhit
�� 
dtxt
�� 
dflt�� �� 0 make_new  
�� 
ttxt�� "0 newplaylistname newPlaylistName�� ��  ��
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcls
�� 
cURT
�� .hookConvcTrk      @ obj �� 0 newt newT�� 0 make_bookmarkable  
�� 
cUsP
�� .coredoexbool       obj 
�� 
cPly
�� 
prdt
�� .corecrel****      � null�� 0 newplaylist newPlaylist
�� 
insh
�� .coreclon****      � ****
�� 
pDID�� 0 t  
�� 
pLoc
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT
�� .coredelonull���    obj �� 0 m  G ������
�� 
errn�� 0 n  ��  ���@
�� 
pisf
�� 
disp
�� 
givu��,�� 

�� 
gavu��*j O�E�O�E�O�E�O�E�OfE�O�E�O*�-�,E�O*a ,�,E` O *a k/a ,E` W X  )a k+ O_ a ,a ,E` O_ a   )a k+ Y hO_ a   )a k+ Y hO*a  ,jv *a  ,E` !Y 2_ *a "k/  )a #k+ Y _ a $-a %[a &,\Ze81E` !O_ !a ',j  )a (k+ Y hO_ a )  a *E�Oa +E�Oa ,E�Y hO�a -�a ._ a /&a 0a 1a 2a 3a 4b   a 5fa 6fa 7 8a 9&E` :O_ :a ;  )a <a =lhY hO_ :a 9&a > 'a ?a @a Aa Blva 4b   a C Da E,E�Y hO lhZ�a Fa Ga @a H�a Imva Jma 4b   a K DE` LO_ La E,�  Y hO_ La M,a N _ La M,E` OOeE�OY a PE�[OY��O_ a ) .a Qa @a Ra Sa Tmva Jma 4b   a U Da E,E�Y hO*�_ :/*a ,FOa Vne_ ![a Wa Xl Ykh  �a Z,a [@
�j \a Xk/E` ]O�a ^  )_ ]k+ _E` ]Y hO� J*a `_ O/j a *a Wa ba c�_ Ola C dY hO*a `_ O/E` eO_ ]a f_ el gY hO*a "k/a $.a %[a h,\Z�a h,E81E` iO_ ia Z,Ea /  _ ia Xk/E` iY hO�a j 3 'a k�a l,Ea 9&a m,a n,%j oO_ ij pW X  hY �a q _ ij pY hOPW 2X r s�a t  *j O)a uk+ Y hO)�a 9&a v%�%k+ Y h[OY��oO*�_ /*a ,FO*a w,e  G ;a xa @a ykva Jka zka {a |a 4b   a } Da ~,e  hY hW X  hY hUascr  ��ޭ