Caml1999N025����            0src/position.mli����  *\  �  |  䠠���1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	, Extension of standard library's positions. @��:src/utilities/position.mliAaa�Aa R@@@@@��������������? {2 Extended lexing positions} @��C T T�C T x@@@@@����A�    �!t��F � ��F � �@@@@A@���)ocaml.doc��������	< Abstract type for pairs of positions in the lexing stream. @��*E z z�+E z �@@@@@�@��-F � �@@�@���A�    �(position��7G � ��8G � �@@@@A�����!t��@G � ��AG � �@@�@@@@��DG � �@@�@���A�    �'located��NJ�OJ@����!a��VJ	�WJ@@@B@@��Р%value��^L"�_L'@@��!a��dL-�eL/@@@�	�gL0@@�Р(position��mM17�nM1?@@����!t��uM1B�vM1C@@�@@@��yM1D@@@A@���]�������	( Decoration of a value with a position. @���I � ���I �@@@@@!���(deriving���NEN��NEV@��������$sexp���NEW��NE[@�@@@@@���NEK��NE\@@���J@@�@�����������-ocaml.warning��&_none_A@ �A�������#-32@@@@@�A���Р/sexp_of_locateds��@��@��rq@@������1Ppx_sexp_conv_lib$Sexp!t�zyA@@@@@��@�����������@@@�@@���������A@@@@@�@@@@AA���Р/located_of_sexp���@��@������1Ppx_sexp_conv_lib$Sexp!t���A@@@����@@@@��@���������A@@@�����������@@@�@@@@�@@@@gg@M@M���)ocaml.doc\�������'@inline@d@@@d@d���+merlin.hideh�@�@^���Р%value��R���R��@��@����'located��(R���)R��@���!a��/R���0R��@@@@�	@@@��!a��6R���7R��@@@�
@@@@���Ր������	O [value dv] returns the raw value that underlies the
    decorated value [dv]. @��EP^^�FQ��@@@@@�@��HR��@�@���Р(position��QV'+�RV'3@��@����'located��[V'8�\V'?@���!a��bV'5�cV'7@@@@�	@@@����!t��kV'C�lV'D@@�@@@�@@@@���R�������	Q [position dv] returns the position that decorates the
    decorated value [dv]. @��{T���|U
&@@@@@@��~V''@�@���Р(destruct���Z����Z��@��@����'located���Z����Z��@���!a���Z����Z��@@@@�	@@@�����!a���Z����Z��@@@�����!t���Z����Z��@@�@@@@�@@@�@@@@����L�������	W [destruct dv] returns the couple of position and value
    of a decorated value [dv]. @���XFF��Y��@@@@@W@���Z��@�@���Р'located���]���]�@��@��@��!a���]���]�@@@��!b���]���]�@@@�	@@@��@����'located���]���]�#@���!a���]���]�@@@@�	@@@��!b���]�'��]�)@@@�
@@@���]�@@@@������������	0 [located f x] applies [f] to the value of [x]. @��\���\��@@@@@�@��]��@�@���Р(with_pos��`dh�`dp@��@����!t��`ds�`dt@@�@@@��@��!a��!`dx�"`dz@@@����'located��)`d��*`d�@���!a��0`d~�1`d�@@@@�	@@@�
@@@�@@@@���ѐ������	3 [with_pos p v] decorates [v] with a position [p]. @��A_++�B_+c@@@@@�@��D`dd@�@���Р)with_cpos��Mc���Nc��@��@�����&Lexing&lexbuf��Yc���Zc��@@�@@@��@��!a��bc���cc��@@@����'located��jc���kc��@���!a��qc���rc��@@@@�	@@@�
@@@�@@@@���Y�������	< [with_cpos p v] decorates [v] with a lexical position [p]. @���b����b��@@@@@@���c��@�@���Р)with_poss���fMQ��fMZ@��@�����&Lexing(position���fM]��fMl@@�@@@��@�����&Lexing(position���fMp��fM@@�@@@��@��!a���fM���fM�@@@����'located���fM���fM�@���!a���fM���fM�@@@@�	@@@�
@@@�@@@�+@@@@����a�������	I [with_poss start stop v] decorates [v] with a position [(start, stop)]. @���e����e�L@@@@@l@���fMM@�@���Р+unknown_pos���i����i��@��@��!a���i����i��@@@����'located���i����i��@���!a���i����i��@@@@�	@@@�
@@@@������������	9 [unknown_pos x] decorates [v] with an unknown position. @��h���h��@@@@@�@��i��@�@���Р%dummy��mUY�mU^@����!t��mU`�mUa@@�@@@@������������	W This value is used when an object does not come from a particular
    input location. @��'k���(l>T@@@@@�@��*mUU@�@���Р#map��3p���4p��@��@��@��!a��=p���>p��@@@��!b��Cp���Dp��@@@�	@@@��@����'located��Np���Op��@���!a��Up���Vp��@@@@�	@@@����'located��^p���_p��@���!b��ep���fp��@@@@�	@@@�
@@@��jp��@@@@���N�������	5 [map f v] extends the decoration from [v] to [f v]. @��wocc�xoc�@@@@@@��zp��@�@���Р$iter���s��s@��@��@��!a���s��s@@@����$unit���s��s@@�@@@�@@@��@����'located���s%��s,@���!a���s"��s$@@@@�	@@@����$unit���s0��s4@@�@@@�@@@���s@@@@����S�������	3 [iter f dv] applies [f] to the value inside [dv]. @���r����r�@@@@@^@���s@�@���Р$mapd���w����w��@��@��@��!a���w����w��@@@�����"b1���w����w��@@@���"b2���w����w��@@@@�
@@@�@@@��@����'located���w����w��@���!a���w����w��@@@@�	@@@�������'located��w���	w��@���"b1��w���w��@@@@�	@@@�����'located��w���w��@���"b2�� w���!w��@@@@�	@@@@�
@@@�)@@@��&w��@@@@���
Ð������	S [mapd f v] extends the decoration from [v] to both members of the pair
    [f v]. @��3u66�4v��@@@@@�@��6w��@�@�����G֐������/ {2 Accessors} @��Fy���Gy��@@@@@����Р&column��O}_c�P}_i@��@�����&Lexing(position��[}_l�\}_{@@�@@@����#int��d}_�e}_�@@�@@@�@@@@���K�������	l [column p] returns the number of characters from the
    beginning of the line of the Lexing.position [p]. @��t{���u|&^@@@@@@��w}__@�@���Р$line��� @���� @��@��@�����&Lexing(position��� @���� @��@@�@@@����#int��� @���� @��@@�@@@�@@@@���|5�������	C [column p] returns the line number of to the Lexing.position [p]. @���������@@@@@@@��� @��@�@���Р*characters��� Esw�� Es�@��@�����&Lexing(position��� Es��� Es�@@�@@@��@�����&Lexing(position��� Es��� Es�@@�@@@�������#int��� Es��� Es�@@�@@@�����#int��� Es��� Es�@@�@@@@�@@@�@@@�)@@@@������������	} [characters p1 p2] returns the character interval
    between [p1] and [p2] assuming they are located in the same
    line. @��� B���� Dfr@@@@@�@��� Ess@�@���Р1start_of_position��� H���� H�	@��@����!t�� H�	�	 H�	@@�@@@�����&Lexing(position�� H�	� H�	&@@�@@@�@@@@������������	@ [start_of_position p] returns the beginning of a position [p]. @��# G���$ G��@@@@@�@��& H��@�@���Р/end_of_position��/ K	f	j�0 K	f	y@��@����!t��9 K	f	{�: K	f	|@@�@@@�����&Lexing(position��D K	f	��E K	f	�@@�@@@�@@@@���+䐠�����	8 [end_of_position p] returns the end of a position [p]. @��T J	(	(�U J	(	e@@@@@�@��W K	f	f@�@���Р4filename_of_position��` N	�	��a N	�	�@��@����!t��j N	�	��k N	�	�@@�@@@����&string��s N	�	��t N	�	�@@�@@@�@@@@���Z�������	B [filename_of_position p] returns the filename of a position [p]. @��� M	�	��� M	�	�@@@@@@��� N	�	�@�@������&�������7 {2 Position handling} @��� P
 
 �� P
 
@@@@@1���Р$join��� T
�
��� T
�
�@��@����!t��� T
�
��� T
�
�@@�@@@��@����!t��� T
�
��� T
�
�@@�@@@����!t��� T
�
��� T
�
�@@�@@@�@@@�@@@@����^�������	_ [join p1 p2] returns a position that starts where [p1]
    starts and stops where [p2] stops. @��� R

�� S
Y
�@@@@@i@��� T
�
�@�@���Р(lex_join��� X
�
��� X
�
�@��@�����&Lexing(position��� X
� �� X
�@@�@@@��@�����&Lexing(position��� X
��� X
�"@@�@@@����!t��� X
�&�� X
�'@@�@@@�@@@�@@@@������������	P [lex_join l1 l2] returns a position that starts at [l1] and stops
    at [l2]. @�� V
�
�� W
�
�@@@@@�@�� X
�
�@�@���Р1string_of_lex_pos�� \��� \��@��@�����&Lexing(position��% \���& \��@@�@@@����&string��. \���/ \��@@�@@@�@@@@���ΐ������	X [string_of_lex_pos p] returns a string representation for
    the lexing position [p]. @��> Z))�? [g�@@@@@�@��A \��@�@���Р-string_of_pos��J `!�K `.@��@����!t��T `1�U `2@@�@@@����&string��] `6�^ `<@@�@@@�@@@@���D��������	] [string_of_pos p] returns the standard (Emacs-like) representation
    of the position [p]. @��m ^���n _@@@@@@��p `@�@���Р,pos_or_undef��y d���z d��@��@����&option��� d���� d��@�����!t��� d���� d��@@�@@@@�@@@����!t��� d���� d��@@�@@@�@@@@���}6�������	t [pos_or_undef po] is the identity function except if po = None,
    in that case, it returns [undefined_position]. @��� b>>�� c��@@@@@A@��� d��@�@������I�������	( {2 Interaction with the lexer runtime} @��� f���� f�@@@@@T���Р$cpos��� iIM�� iIQ@��@�����&Lexing&lexbuf��� iIT�� iIa@@�@@@����!t��� iIe�� iIf@@�@@@�@@@@����w�������	: [cpos lexbuf] returns the current position of the lexer. @��� h		�� h	H@@@@@�@��� iII@�@���Р.string_of_cpos��� m���� m��@��@�����&Lexing&lexbuf��� m���  m��@@�@@@����&string�� m���	 m��@@�@@@�@@@@������������	Y [string_of_cpos p] returns a string representation of
    the lexer's current position. @�� khh� l��@@@@@�@�� m��@�@@