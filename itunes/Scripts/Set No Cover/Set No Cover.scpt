FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
"Set No Cover" for iTunes
written by Doug Adams
dougadams@mac.com

v1.0 nov 29 05
-- initial release

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.dougscripts.com/itunes/

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html

       	  l     ������  ��   	  
  
 l     ������  ��        l    " ��  Q     "     r        b        l   
 ��  c    
    l    ��  I   �� ��
�� .earsffdralis        afdr  m    ��
�� afdrcusr��  ��    m    	��
�� 
TEXT��    m   
    7 1Library:iTunes:Scripts:Set No Cover:no_cover.pict     o      ���� 0 
no_cov_loc    R      �� ��
�� .ascrerr ****      � ****  o      ���� 0 m  ��    k    "       I   ��   !
�� .sysodlogaskr        TEXT   o    ���� 0 m   ! �� "��
�� 
btns " J     # #  $�� $ m     % %  Cancel   ��  ��     &�� & L     "����  ��  ��     ' ( ' l     ������  ��   (  ) * ) l  # � +�� + O   # � , - , k   ' � . .  / 0 / Z   ' O 1 2�� 3 1 >  ' - 4 5 4 1   ' *��
�� 
sele 5 J   * ,����   2 r   0 5 6 7 6 1   0 3��
�� 
sele 7 o      ���� 0 sel  ��   3 I  8 O�� 8 9
�� .sysodlogaskr        TEXT 8 m   8 9 : : ! Select some tracks first...    9 �� ; <
�� 
btns ; J   : = = =  >�� > m   : ; ? ?  Cancel   ��   < �� @ A
�� 
dflt @ m   > ?����  A �� B C
�� 
disp B m   B C����  C �� D��
�� 
givu D m   F I���� ��   0  E F E l  P P������  ��   F  G H G t   P � I J I X   T � K�� L K Q   h � M N O M k   k � P P  Q R Q r   k t S T S I  k p�� U��
�� .rdwropenshor       file U o   k l���� 0 
no_cov_loc  ��   T o      ���� 0 file_ref   R  V W V r   u � X Y X I  u ��� Z [
�� .rdwrread****        **** Z o   u x���� 0 file_ref   [ �� \ ]
�� 
rdfm \ m   { ~���� ] �� ^��
�� 
as   ^ m   � ���
�� 
PICT��   Y o      ���� 0 ott   W  _ ` _ I  � ��� a��
�� .rdwrclosnull���     **** a o   � ����� 0 file_ref  ��   `  b c b r   � � d e d o   � ����� 0 ott   e n       f g f 1   � ���
�� 
pPCT g n   � � h i h 4   � ��� j
�� 
cArt j m   � �����  i l  � � k�� k o   � ����� 0 a_track  ��   c  l�� l r   � � m n m m   � � o o       n o      ���� 0 ott  ��   N R      �� p��
�� .ascrerr ****      � **** p o      ���� 0 m  ��   O k   � � q q  r s r I  � �������
�� .sysobeepnull��� ��� long��  ��   s  t�� t Q   � � u v�� u k   � � w w  x y x I  � ��� z��
�� .rdwrclosnull���     **** z o   � ����� 0 file_ref  ��   y  {�� { r   � � | } | m   � � ~ ~       } o      ���� 0 ott  ��   v R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 a_track   L o   W X���� 0 sel   J m   P S����u0 H  ��  I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � �  Done!    � �� � �
�� 
appr � m   � � � �  Set No Cover    � �� � �
�� 
btns � J   � � � �  ��� � m   � � � �  Thanks   ��   � �� � �
�� 
dflt � m   � �����  � �� � �
�� 
disp � m   � �����  � �� ���
�� 
givu � m   � ����� ��  ��   - m   # $ � ��null     � ��  )
iTunes.app�ⰿ��@��   � "48   ��S��������S��H������hook   alis    L  Mac HD Tiger               �p��H+    )
iTunes.app                                                      9�i,�        ����  	                Applications    �p�:      �is>      )  $Mac HD Tiger:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D   T i g e r  Applications/iTunes.app   / ��  ��   *  � � � l     ������  ��   �  ��� � l     ������  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  )����  ��  ��   � ������ 0 m  �� 0 a_track   � -������ �������� %�� ����� : ?��������������~�}�|�{�z�y�x�w�v�u�t�s�r�q o�p ~�o ��n � ��m
�� afdrcusr
�� .earsffdralis        afdr
�� 
TEXT�� 0 
no_cov_loc  �� 0 m  ��  
�� 
btns
�� .sysodlogaskr        TEXT
�� 
sele�� 0 sel  
�� 
dflt
�� 
disp
�� 
givu�� �� ��u0
� 
kocl
�~ 
cobj
�} .corecnte****       ****
�| .rdwropenshor       file�{ 0 file_ref  
�z 
rdfm�y
�x 
as  
�w 
PICT�v 
�u .rdwrread****        ****�t 0 ott  
�s .rdwrclosnull���     ****
�r 
cArt
�q 
pPCT
�p .sysobeepnull��� ��� long�o  
�n 
appr�m 
��  �j �&�%E�W X  ���kvl 	OhO� �*�,jv 
*�,E�Y ���kv�ka la a a  	Oa n ��[a a l kh  G�j E` O_ a a a a a  E`  O_ j !O_  �a "k/a #,FOa $E`  W (X  *j %O _ j !Oa &E`  W X ' h[OY��oOa (a )a *�a +kv�ka ka a a , 	U ascr  ��ޭ