FasdUAS 1.101.10   ��   ��    k             l     ��  ��    S M	Script to dial numbers from Contacts/AddressBook via VoIP-Provider fonial.de     � 	 	 � 	 S c r i p t   t o   d i a l   n u m b e r s   f r o m   C o n t a c t s / A d d r e s s B o o k   v i a   V o I P - P r o v i d e r   f o n i a l . d e   
  
 l     ��  ��    I C	To use copy to ~/Library/Application Scripts/com.apple.AddressBook     �   � 	 T o   u s e   c o p y   t o   ~ / L i b r a r y / A p p l i c a t i o n   S c r i p t s / c o m . a p p l e . A d d r e s s B o o k      l     ��������  ��  ��        l     ��  ��    2 ,	Modified/extended in 2018 by Alexander Harm     �   X 	 M o d i f i e d / e x t e n d e d   i n   2 0 1 8   b y   A l e x a n d e r   H a r m      l     ��  ��    9 3	https://github.com/alexanderharm/fonial-mac-dialer     �   f 	 h t t p s : / / g i t h u b . c o m / a l e x a n d e r h a r m / f o n i a l - m a c - d i a l e r      l     ��  ��     	     �    	     !   l     �� " #��   " + %	This script is based on Snom.scpt by    # � $ $ J 	 T h i s   s c r i p t   i s   b a s e d   o n   S n o m . s c p t   b y !  % & % l     �� ' (��   ' K E	David Kreitschmann, K3com Kommunikationstechnik, http://www.k3com.de    ( � ) ) � 	 D a v i d   K r e i t s c h m a n n ,   K 3 c o m   K o m m u n i k a t i o n s t e c h n i k ,   h t t p : / / w w w . k 3 c o m . d e &  * + * l     �� , -��   , * $	https://github.com/k3com/mac_dialer    - � . . H 	 h t t p s : / / g i t h u b . c o m / k 3 c o m / m a c _ d i a l e r +  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 K E	This program is free software: you can redistribute it and/or modify    4 � 5 5 � 	 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 2  6 7 6 l     �� 8 9��   8 K E	it under the terms of the GNU General Public License as published by    9 � : : � 	 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 7  ; < ; l     �� = >��   = H B	the Free Software Foundation, either version 3 of the License, or    > � ? ? � 	 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r <  @ A @ l     �� B C��   B * $	(at your option) any later version.    C � D D H 	 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . A  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I F @	This program is distributed in the hope that it will be useful,    J � K K � 	 T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , H  L M L l     �� N O��   N E ?	but WITHOUT ANY WARRANTY; without even the implied warranty of    O � P P ~ 	 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f M  Q R Q l     �� S T��   S D >	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the    T � U U | 	 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e R  V W V l     �� X Y��   X 3 -	GNU General Public License for more details.    Y � Z Z Z 	 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . W  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     �� _ `��   _ H B	You should have received a copy of the GNU General Public License    ` � a a � 	 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e ^  b c b l     �� d e��   d L F	along with this program.  If not, see <http://www.gnu.org/licenses/>.    e � f f � 	 a l o n g   w i t h   t h i s   p r o g r a m .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / > . c  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k 2 , https://www.fonial.de/hilfe/api/click2dial/    l � m m X   h t t p s : / / w w w . f o n i a l . d e / h i l f e / a p i / c l i c k 2 d i a l / j  n o n j     �� p�� 0 
customerid 
customerId p m      q q � r r  1 2 3 4 5 6 o  s t s j    �� u�� 0 guid   u m     v v � w w P a a 0 0 b b 1 1 c c 2 2 d d 3 3 e e 4 4 f f 5 5 g g 6 6 h h 7 7 i i 8 8 j j 9 9 t  x y x j    �� z�� 0 iptarget ipTarget z m     { { � | |  1 1 y  } ~ } j   	 �� �� 0 	titletext 	titleText  m   	 
 � � � � �  f o n i a l   ~  � � � l     ��������  ��  ��   �  � � � w       � � � k       � �  � � � i     � � � I     ������
�� .az00az57null��� ��� null��  ��   � L      � � m      � � � � � 
 p h o n e �  � � � l     ��������  ��  ��   �  � � � i     � � � I     ���� �
�� .az00az58null��� ��� null��   � �� � �
�� 
az61 � o      ���� 0 this_person   � �� ���
�� 
az62 � o      ���� 0 
this_entry  ��   � L      � � b      � � � o     ���� 0 	titletext 	titleText � I    �� ����� 
0 filter   �  ��� � n    	 � � � 1    	��
�� 
az17 � o    ���� 0 
this_entry  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I     ���� �
�� .az00az59null��� ��� null��   � �� � �
�� 
az61 � o      ���� 0 this_person   � �� ���
�� 
az62 � o      ���� 0 
this_entry  ��   � L      � � m     ��
�� boovtrue �  � � � l     ��������  ��  ��   �  ��� � i     � � � I     ���� �
�� .az00az60null��� ��� null��   � �� � �
�� 
az61 � o      ���� 0 this_person   � �� ���
�� 
az62 � o      ���� 0 
this_entry  ��   � k     . � �  � � � r     
 � � � I     �� ����� 
0 filter   �  ��� � n     � � � 1    ��
�� 
az17 � o    ���� 0 
this_entry  ��  ��   � o      ���� 0 	thenumber 	theNumber �  � � � l   �� � ���   �  display dialog theNumber    � � � � 0 d i s p l a y   d i a l o g   t h e N u m b e r �  � � � l   ��������  ��  ��   �  � � � I   ,�� ���
�� .sysoexecTEXT���     TEXT � b    ( � � � b    & � � � b    $ � � � b    " � � � b     � � � b     � � � b     � � � b     � � � m     � � � � � � c u r l   - s   ' h t t p s : / / k u n d e n k o n t o . f o n i a l . d e / a p i / 2 . 0 / c a l l / i n i t i a t e / d i r e c t ? i d = � o    ���� 0 
customerid 
customerId � m     � � � � �  & g u i d = � o    ���� 0 guid   � m     � � � � �  & i p - t a r g e t = � o    !���� 0 iptarget ipTarget � m   " # � � � � �  & n u m b e r = � o   $ %���� 0 	thenumber 	theNumber � m   & ' � � � � �  '��   �  ��� � l  - -��������  ��  ��  ��  ��   ��                                                                                  adrb  alis    D  System                     �S�BH+    �Contacts.app                                                     �Әϻ        ����  	                Applications    �S�2      Ә��      �  !System:Applications: Contacts.app     C o n t a c t s . a p p    S y s t e m  Applications/Contacts.app   / ��   �  � � � l     ��������  ��  ��   �  ��� � i     � � � I      �� ����� 
0 filter   �  ��� � o      ���� 0 	thenumber 	theNumber��  ��   � k     / � �  � � � r      � � � m      � � � � �   � o      ���� 0 	newnumber 	newNumber �  � � � X    , ��� � � Z    ' � ����� � E     � � � m     � � � � �  + 0 1 2 3 4 5 6 7 8 9 0 � o    ���� 0 c   � k    # � �  � � � r    ! � � � b       o    ���� 0 	newnumber 	newNumber o    ���� 0 c   � o      ���� 0 	newnumber 	newNumber � �� l  " "����    display dialog newNumber    � 0 d i s p l a y   d i a l o g   n e w N u m b e r��  ��  ��  �� 0 c   � n    
 2    
��
�� 
cha  o    ���� 0 	thenumber 	theNumber � �� L   - /		 o   - .���� 0 	newnumber 	newNumber��  ��       ��
 q v { ���  
 	������~�}�|�{�z�y�� 0 
customerid 
customerId�� 0 guid  � 0 iptarget ipTarget�~ 0 	titletext 	titleText
�} .az00az57null��� ��� null
�| .az00az58null��� ��� null
�{ .az00az59null��� ��� null
�z .az00az60null��� ��� null�y 
0 filter   �x ��w�v�u
�x .az00az57null��� ��� null�w  �v      ��u � �t ��s�r�q
�t .az00az58null��� ��� null�s  �r �p�o
�p 
az61�o 0 this_person   �n�m�l
�n 
az62�m 0 
this_entry  �l   �k�j�k 0 this_person  �j 0 
this_entry   �i�h
�i 
az17�h 
0 filter  �q b  *��,k+ % �g ��f�e�d
�g .az00az59null��� ��� null�f  �e �c�b
�c 
az61�b 0 this_person   �a�`�_
�a 
az62�` 0 
this_entry  �_   �^�]�^ 0 this_person  �] 0 
this_entry    �d e �\ ��[�Z�Y
�\ .az00az60null��� ��� null�[  �Z �X�W
�X 
az61�W 0 this_person   �V�U�T
�V 
az62�U 0 
this_entry  �T   �S�R�Q�S 0 this_person  �R 0 
this_entry  �Q 0 	thenumber 	theNumber �P�O � � � � ��N
�P 
az17�O 
0 filter  
�N .sysoexecTEXT���     TEXT�Y /*��,k+ E�O�b   %�%b  %�%b  %�%�%�%j OP �M ��L�K�J�M 
0 filter  �L �I�I   �H�H 0 	thenumber 	theNumber�K   �G�F�E�G 0 	thenumber 	theNumber�F 0 	newnumber 	newNumber�E 0 c    ��D�C�B�A �
�D 
cha 
�C 
kocl
�B 
cobj
�A .corecnte****       ****�J 0�E�O '��-[��l kh � ��%E�OPY h[OY��O�ascr  ��ޭ