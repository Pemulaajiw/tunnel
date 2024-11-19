#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY���  ����� }���oޮ����(S����9\� @ PM���ųs��e�A���6��4O�6�OI�`�hhz��z��1�zɐ2�	%44h# Q�   44    � ��%4�j�B�Q�Q�=CG� � �F��  �       �        �)�d�=G�i�����=CF��   hb    �4�Z�/�e��zr����C��T
L_*��CP��I�P�?AR#�֮+5J�� �f?^��ˏk��E�0b�E�~\�X� q��X�F���4�\�L�fK}�=�O�y�HR�3X'9�����������o	���**�nAa[�th�|mכ#�\3��w͈P�~\�.&.Z�>�$�[>��;��0���'��h��$�����T�/bY:��[ar�5�g�!q31}3eH�zng����vՐ!nr#�`8fjJ�bGX�S? b�"T���/�(�`꾅XX�%�2L��Ef͔+��Ծ��C���-$�Z��>`�/`F\��	p���9��`v���[�Hp�;�WZ=���ƣ.[��]<<yr�f܋]Av�s6�j�M�VB����9�d����q����p)x6�,W]��:2�sDjm����ΌC��}%�y�ڣ����[��"�=U�@sSJef�Z$0e��&t�M��=�`"������$�����Uޤ��2%d	D�,LKM��i�ʝ�w@Hbb%68�x��^r���.�|��,h�@�L1#c�L\��&��83Z-O�z�41D�r��:n�s�b��
���"0��33G\|�*�j_�����͋������!�~s75g��(����쓸��a8�^!�5�-�vy�� �K����^k �Ѱ��yj�a[6
��b��`{th�DC�Q*f��L:�{*\rX�H��PE�'�1�$*T�����E��,N'�����5#����]��\jR��0�"�L9"�JJ��$T�X�I�4��yZ+ڴ��rLe�1���/'14*I`낽)	LzU�YEHOda���@��|����ANd��m,�!trQc�rh�Op���H?�Z���6�q�wt$�Hd@��2>�̙0��	f7�����'I��F�e��^���p�T�x~���ph���Xd����	�&�Q����F�!�a+��
HSNc.�ܑN$*�7�@