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
BZh91AY&SY�;�+  �_�M����o~ޮ����    @��E�SM*{L���y!�h � �ښ3F�A'�L�i2#G��=LA�   ���LC!���C@� d1 DF��L	�bh'�A�i�G��h�G�Є!�/>��&����; �l&�V{��iQ�G/�3��cgh�c�f�@*��
Is����D�-�`��%�_8@��QYh���9lC4sѿ|a7-�1��e�E`4`	�#��l�`�v�KSm�-��:����5�+��`���~(�E��pni�8�>��$���y��L������ٳIսZ��1�~[���@[aYd;/N��{�TWrY�)�:5�TQc1¥W�b���%�;Zh�;F�d�{�>�����LHHa(T�����9��6�_&�^Z&I�Y��L$���h4h�:*t��bGMz	��t3�r4}�^�`��-�{bwn�9�+�-6Hg�Ҝ�.?4�j�S�g�KR͔�3����R�u�L�(0/1�DB�4����K_�����6*�pRԮ���F��J(���fA�j�����c!�r`�iuZ�RJF�h60.�é���8�/�;
�F�-\$u�lc��椦q(��RlWg}���U�B�$�-AR:t�*�P��f)p�E$fZ���a��1�ф&a�
5vp�`����W����rn�I�=U.���+�mt�x(֬0�aT�[!X��(2BL�]5�A�hg���zXQI	��o��b�(E,pa�	��#=��`TQ�� ;��d���� �� v$�}��@k8���l�⬮\k�m��+ƙc9N��K�$��HIZ_�ܑN$*����