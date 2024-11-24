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
BZh91AY&SYݠ� $��t0�	�����������h@�)   `.�ۥ�rW7}�}�^����ooy��wf*����wn����z���n���ب��k[Zm�������[��,�Lf[+���ᔹ�V4�s�fkPSZIY
)��m�=b� )�46���C S�Ѡji���G���   4m ��U?h*~D���    4� 2  i��b'�hh����z�4 4d 4�z��z�@  M(��4�	�*���M�OiA��4�hS�42  �1��A�F�i��D�&�I�	��T�e����6H�@ 4	 �&�Bb�?&�d�?T���S��4��4h ��zXB@��!�pc"����M��Td֥��7�Jc0�ѽ�k`�ҶF��Dj(�Yk�w�9�����$!L���6� �D/[��/��cc�:F�]{B:I��)��n�QI���W:�o�擽t���;�4]JW�5����1 ,�V�ਚi��ꡁ�6�28��hR�'��!Vd�l]�;ǝ�k�]%����i�������ʦ���q^a�4�M�)���)Y#�Idb����û�K�L4S@���8B�FQ)��1q3jl����#or�Y�iC1�%�1�c"c}}=�N>��߲���u���e�¸1BR���BHb$O2��˞]��V6fWH o)����>� ]��B��*Y4r|D�FbZc��į��`��Kg��0��q�ӲX��~\���"�g,���ŧ�V^��oٰ���;'A�i�5�e6�)���z�<2B&��h�+�QxU�O��:t>��'��[hWS�Y��6�ۛh���򺞓��5�QfAV�>e��lk�N9���ra��YWpy�������F��ת��\U�-������~�)�e�-�ڜ�k%�����cQѳ&���I$��UbvŃMT_����Y����`�Eb:�HA�\s��:縠��r�����n-~��N�	7�D{��G�<���R�:q��#���Y��6;��DM cδ��i��r���D5M��c>��K"P��H�U(P�,����r�Y�'��I^��#r����)~��M<��u7t������"����.���`������#�� �s����� |� �b�1Ipi���f��9�1JDG��}?�p�����?�� .n�p���:6tYz}m�&��pH�<���m4ƚf9�D�l��Jú���:�߇ݠ����¦�G�8yT;�MN����g�
�����-���
p�mf�#�=N�7(�������f�;�.�l���[yt����oL���G �-:� �R�_)\�M�uR��4+ ͠pDDDe�����W�UP�L8��q�Aµ ��m�Bs���9�r��U��]5��G�6E��7m�]Em�7?9�=���^�#e�,��(vwk�i�%��(�;wi��MFa,�$�����0aO��tB�p}_��"��6I��?�\$�����fTaAV����u"@b��������D(�V�u
�G�;-?<��-�]�xH��������v�9Ύ^�!{����`���4�O�����)0g���SKj$+�t/h 4 �Ѹ�C�zȆ�[�}�z	�m?�qw��LXw*ϊ]�e�vvA��I�l(=}hVb9A���)o�k}fY=�
�Cc� ���t+�߅W�U�>l���D���e���6Nb8�=�vr�����8�#����~z7��;��k'�~QE|[GvnC�O�WYCJbJ8���g�*W]��*o�K��B��<_�ۋ��{���R�퓙�wV㑫.	"��<�1�ʘ��+��&��i��o�!�����&�������E'�SO>�^N,n�2��kݍ��k�Z����X7�#�{yar�vU�lc@1R"�\�R�B����x���a��U'���4�6�LY])G(���6��qs�R����3y��w� ����ø�#��"F�̪u�=i�L�s�\�������^E���yz5��9-���{�q�G��9m|��8\�~tJ@�D{�(A��h�f�3\p�Vw<��<^[Z@�|��$�2+D��Y����Se
��)T��, ��.0���ee�	MOi�� ��4�R�!\�����xG�,����~t����K�F���tK"��jM���Ag]Ͼ���>&x����Y���DU�P�n}i��1�N�s���	d/��2P�X;v��,�9MP�o�ϵ�]T�?D÷n1�[��\�ե�$:��2I�(a�L�N<�ǣ�������j�a�6����.�Ң��H��d�d�1��!�TMK�?��aF�}r�}��>���T+�[(eYi
�Y��%{Ƨ�r�CLW�P��g2f2e�B�ȅe3߰���}��z���~���'1�:�k�X���HR(ͪ ]��|�_ADw~j��=��,bI�Ěg<(�u�)����i��_�T`M%�H��w���Z5��Rk�� �oP ^���%\�$���%���$@��U���P'`|�=�~�l����v�w�i�9���3�9�tVՂ�BC;����(�r��{���9R�{)?���cn�Z�I���,�����W��Q�b}�.�ȁ�?Iz2���F��L�N�{�n���(�p]��^�J1Q�9`����I�l�h�?(�/�5(G����but�n��4jm�������˶W$$��A��3�
M4�u�3�hŢ����ܺmW�U&��3� ��\���wkp��. ��J��XS���B4>�O1��Cwٚ�� R���~O���b��r�����d��w�yBF������Ó�[t�:d�m�em��w�ѹYPD(��+�Qܕg��Yo�+�D�2A�4��el^b!�$*�	�I�]�
*���kkWC�c�An`�ҩ�̡w����>cG��]�\ؘ�ـǰ�
��?�!�"OCc!�]_�8�'3� ��Jjo@�õ1�6��ɉ+'?AR{���P��4���=���O��g�g
DT����f�j�������%��,]}rE�$�_�Kx��L�����3���}�OP~�)<,�&������QAE��,X�E��Pc��F���7���3
�٭Z�U8��y��j�2�cr�-DQN  ���*�>w[�m�����o%u�V�y#Y�⹼����r��h$��JZ������{�����]m%�͓�̙�Cښ���l���B��Io/ �)�Ϩ84�$�tUs'7)�֘�P.%�i0�m����W,s��q�`��3G��Xwȷ"�8!H�P'@�L� GR���&����@�Lc�����m-L=�����B�Ȉ��z���T_� �L'��0�<�I{f��r��ꍜOU|���	uv\�O[%@�#��RBU@���b+�!�Zg��)���Z@ױ.;~��Q�ӑ�����w;�dd$bzSs�2K�|�L�/�G�&s��G���i"!�pÿũ$l{.�g�f�o���f�- |�=��������V���>Ǜy�o�$R12im��˄�ȝ���]��a��y�=~m.k�]CW���QzO��C�F�O���?1�α5������Fw��|�b@ۿ'����b0J�b����ϫ �_����1�+�놢�l����$Bs�so�����u�����EN.�*_7� �u|}�q˫j�֞sYh�����M@�]�#��g@pp� �G��Q��R��S�O��ݾ�DG�|"j�+��1lF�&���'�Nx{� *(),<�bC�MX0c������o�������������G�z|u���܉����gPy�Y��ΐ!H-͇�P�[�����]=��� �X�(� ��b+R��E0�T��
�����	�ac����,t��d��Td��B�f	8�'(��]���^ӗ�(��L��a����=Jr��ۡ��sz	�b>IBF�ȉO��f�t�)�;n�����>`��/��X�ld) J�����W_curu�t50�x$�ތ <%��,��N�-{����u�_X:{�c ���ꦺ��4]YOL�ɯ��� �H˔��(P��2�E�����-��{�C�� ���F���#��^v�Y�T��a�D>��/� ��~&}P��l�
��p(!��[��l"6�	�CQI�&mNq#�XPK$L��?^�r�dX���4�$��"���c({y�ٙ�E�&���֘!��0z�1���@�7����ࡃ�%���l	|�e=rM�J��QMTx�]I��
�B='T|�tЪEL}��#�;��:ǴB��Hh��$l�6�Jl�=�6ʟ���Y��[�a�R�G5ھ�}i�>��_lC5|�RD֌��1:r�~�}��&^��b·G"<��@X�!���2�a.	鄴`p�����ۼ�n1����e���a�Q
����!����Qw�(��$�!���;�5�n����~zl�(���y.��B���E��O1��7�r��4�D�!#�Fg�����!t�Ϙ��iv�O^��:3A]�.w���ad�v[ԫqڐ��`��h��)�����Hm�٢H\wy
;� =%�ff<�#
@C��+s U��t��| Jm4n K�(��?�A_��d��7�>m��0��2���XA��{�����IC�~-ߪe~�~�Ls~��X,�}��Jx@��V���(R�ĥ)��ò��G�,NHC̓h��2de�}y�KY��aMQ�����"�oD��2x�0�:
�RQĄ|~�z��W��q��!{��4��ݳ�bP8.�mv�ǹ�{�=�;����m$fϝN�����	Ԋ3�R�j��!�f���^r��/�)�Bqj=��rx/��t�nnH���>n�:�Ȓh$AΩ+���f�(v��MA�u�tq�>��9�02���>� ��3�U<V�E�@ׂ��iqY�C�g3%�ZS����*]�<�^�S�͊H�ha���P�MxN'�� E���P���ɒ�J�{ZT@��(4���Kꮐ�
��'Z:7n��X�
.Yc�FB�[�o_	"(9�%�*��pn�c^���o�尋o�E��L�9x�LԳ=��Jt�]k0!q4��,D�Pc3o����!�;w\���12��7=�Y�IY��'�t���7���ϯ9l�B.@-Li$]�ꁎ��rB,9y*~�i�����)�HdߌN�p8���ډ`AKA�I�%�4؟V��DT�PFm�Fڍ�-kT���X�3��R��Y^$Z�"��NA�!�l�-�����X��@�"����# !�Hj�d&C��Ew�L#vظ���B��/̷Shʽ���5uP�X��9�I�����˲dF���m�g��AbkG$�ȳ�uIX!���s�+�\��>H�J��<}�,�(���4 ���P�"�(���8�"+lX��ߙ�&C��qSO0�#�����÷\��F�ڍB,`���;�SDH)z�S��q-�H�c�MFau0<<r&�y�Q�L��y� ��%���̑-�O�>��Z����
�8P�[7���8��Ƞ?<��̮��Ʉ��?M�7J�zB/C�R�:*�%�Ŏ7"���C���+<�l����"�Z)p]Xby[�ZI2�������WEd��H"x�tF3��Z��_����.ăEb�U
�MԺW�3Q�IN��܀�X�23�SI��\��hll���I�%��9�,	�[���I�����Ģ��A$�)�r{�@��*nY�jl����:��5�
�LH�/u��c����dƞz�;��=3)1"J��+������.`�V� Q%�II��@)֘=�Q���Xw��H���n&o����f�M�F0|j)��ͦ+�5$	�!��z��z:'(��\`Ÿ�I��� Z�2����{��@���~��O/�h�}͏D�#�IǴH��TbĈ^��]qhO���(Z��(&�_Αx�f��,U�e��>|�t�C�X�,���c��'�R"lᘌ��� ��#T��������,�r {��wS�����G� Xs���th%�6�jw$'��Y��;/O���\l]
��T�0�����650*���FGh�|�%�[�����+���f�����W�,�B�����;��X�Z�=��d�:�<��7؁��F�?���� ��F$����ҝ��2�b&���!r��nFB$B= }�3fI�L�D�2��sФaP�2G	��^m��l˫��H��R��J	��w,��0��R���C���Gr��U.�m�^�I8��%Z*Ḻ �B�9� F@a�Ys�%� m6�S0�ݨ���l�sG\�&-G��]Ϗ�詰�����	0)b'=T�P��V[|�6����.�A����i�l���A��A6����j<��|b�Й�5'����=B@M���F Ë�E��,��F�'G7�䞞�I��ɤH�p��(5TO�J��pĎ��N���UUUU�0���Z����-24I����2;�a��6	d ���S�43��3��=��k����^Z�AoB��H���"�x3��BzYx��3:��dN�r��[�Aw�p@�l �A4�00}+<��{Y��Թz�#����J�ܾ���e��A��j���h��`͆�p�����t5Hct/G���d9my�m<|�����5XD+$�ذ���u�l2�4M ˥�P��*
b�ԉ��b�QBeJ�Q��"�CH������:j)�����OW���ɥz�t=&�K�H���%R� �C�+"B�mgF�� ��Wf����
	Md��*17��M���׌�	���jHLHi��0hI��t@���$.�H 4(N9�;�������h�e���=&�G�D���0>�Ach��P��(�@�)I�ї��uY�������L�4�kZֵ��cL��M0D��0W�#<۳���q�|a�YDB7�6��v��ӑx�6��)-|#��qXJ��hF!$�@:���(�峈�a��M ��z0��w��
�a��OʂY�ޛZ���I������y;N���t5���C?Nk���VK���0���s)����ʺ�.J��eP���4B�Q��ʉB��ɂ�lh�lݬ�T�2�cM)��'U��%��n��#d4�c�D��Edb �b�^ �����~ؒxI��
8�G"JG �BeUɂS"�Pb�� 2j�W.��$��nb�b8K��`�,!ؠ�'��`�x�
N��'	?�����ۀB�B��r	�z����ջ@�%��	���KA������D�E������w`�9аA�JEHiH^6� �,)3i��V�t�S[�dlRB=��)B |ٹ:�R8p$�B�$z�9��8�N�eႸ����T+Vj'Q/(�m=��2}��9
Ü��Q���\E��2RE�J�M�⻭�$Hr$������GiNt떞�dCd�e	����[ɤ2@�!�z9����D�@9
���<cE�bo�v��9SH�*�&`	'��>�D��d�\+�#9Ѭ�%�嬅�A����������02��bB(R:�rH�3چtc4yvc�\��~z�����g��8i#�x�Z�or:����C��z��� & �@�2�$AUR,QB��
�zļ��H%Bi��<@q��Q^B`�&6	��ӝ����Q�<l	_�7�|\�z�~��1B⍢ ]�m���]h���ѣzҾ�����ϑp�q:Bo�o���d�����ai�X(�����g�v�x��8�vN� �"I08���{�¥ɸ������i�|[��a9ڊ��&b��L�n���R8mζ]E�0(���[YN����!HBd�`���EFTȨx�����TA�sz8��܈��}!"J�b�����O�+𴼋��iC�ܿA�p6��ۋ�#(C3_B�e���u�� F;�-��k3&�Z������QU� 8`М�'3\t�E�:θCn:�I����L�sxA�ÐL������3a�ķmkh~"P��$�͙m�`��&�@�J��2BD�I�Z��I��+;�ڽ�ξ9?�%���l�1�/cT�w?g}�0�$+*�Y�=Y[����;�Hu|�A��j��R�q��	� �c���az���jb�gu6� ��&`�X<��0��`os���D���Vs�&]!� 2f�Tt���,�!BC͖;� ]��W@B�6��U,W4�7�~'֒ы��Q�i��ʚ�5�;�����└����pa�QP�c~��Ŭ�\�	l����=�m3ƗQ<f��=��sʳ B[�ɍ̀����p�
$����ԓ�d�$#�iC��\�*�$P8�4��̖2)�&q�Q(i��w��:\Kd�#X�r뙛]I�q�a��m41��i-�Qwc1sۜ���Te�l&�&MӅ�K	�em���+8�I�
M�2P��P��B���,���e��5X�X-\J�E�.ф��������U6pw�Fs1qi������m�7�<�ɳ�kv�c(.��:Y��U������	J�):cT��Sb/%cY}�P����T�_:���`&0�:Z�s"���Xˌ�1�*�~���B/ pP!���&�li>�G�Č���pebvt�9M:�^��D�h�ު��F8�
`�� ������=�4ډTҐb�`�n�6�]��ca6��Ey^c�+�>B'^*D�ʒ�Yz� 8�=��lG�g��{Q}��
�y�-e!˦f��Ug]A�Ѩ H��ի
Kf,�0��&;����=��ʩSC3 ��.ʓ���63�UH_�����EΡ,6!1 ��������X�@�ѡ���-�\
C�J:
F�\�2�M. �����r������'n�c�����y	Dv�zdCΒ�����uo]E�|g���W%B���:q3c�9㉱���|�f%�:�z�m׼�0���ƷI�a�����%[���
��v��L/MBa	�sq��ͪ�Ƭ�	yN 	=�C���yI�'�{E<���O<����
,�T=�D�t.~h�-��Jc	E�C���ғn�F��	&sGTQ�S����1��J�g@��3����B��������d��<N�a~,C�O����"rx&��b�,�c��Ju/�[�*��b�4�.��9��'��H�4�c!u���i���1��T1[tp)bG��"c��C����������.B��W�$��a�H� ���x~+!% ��2<>O�����~o�?z�IC�*�!��l3�k�	&a�Nn�����<JFIH�')S�#�h���0 !���) ��		`O�HX* ���"(1�D`�#F�HAPP@PRI@@Y"�
+	$X$@�!#	�R�����b��E��9�I�S��~9o���,�Ed��$��	b��U��W%�����3��mJ�U\P[�&>r�v���!�c�k��!���.h�q�ZSQ���+K-S/�u0��,��Pb�2��F�Q+���B1$�m�qŀ�mD0�P�e`#��-�f�m%�mގ0�rgwLh�l�M�f�"����1r����5)�Xs&4Ҭ���C���Y	����``	ih�m����QDvQ2�䦫���s@0Ȍ�L4ee&$a%Q%dQJ�Ie�,z�?�.�p� 	�A6