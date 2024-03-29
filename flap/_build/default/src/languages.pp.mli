Caml1999N025����            1src/languages.mli����  ?    �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������(Language��8src/common/languages.mliA_k�A_s@������Р$name��D \ b�D \ f@����&string��D \ i�D \ o@@�@@@@���)ocaml.doc��������9 A language as a [name]. @��%C{}�&C{ [@@@@@�@��(D \ ^@�@�����*ocaml.text��������, {1 Syntax} @��9F q s�:F q �@@@@@����A�    �#ast��CI � ��DI � �@@@@A@���-ِ������	; A syntax is defined by the type of abstract syntax trees. @��QH � ��RH � �@@@@@�@��TI � �@@�@���Р.parse_filename��]Nhn�^Nh|@��@����&string��gNh�hNh�@@�@@@����#ast��pNh��qNh�@@�@@@�@@@@���\�������	� [parse_filename f] turns the content of file [f] into an
      abstract syntax tree if that content is a syntactically valid
      input. @���K � ���MXg@@@@@@���Nhj@�@���Р)extension���Q����Q��@����&string���Q����Q��@@�@@@@���+�������	@ Each language has its own extension for source code filenames. @���P����P��@@@@@6@���Q��@�@���Р1executable_format���Utz��Ut�@����$bool���Ut���Ut�@@�@@@@����N�������	| [executable_format] should true when programs of the language are directly
      executable when dumped on disk as files.  @���S����TAs@@@@@Y@���Utv@�@���Р,parse_string���Y��Y!@��@����&string���Y$��Y*@@�@@@����#ast���Y.��Y1@@�@@@�@@@@����}�������	s [parse_string c] is the same as [parse_filename] except that the
      source code is directly given as a string. @���W����X�@@@@@�@���Y@�@���Р)print_ast��]���]��@��@����#ast��]���]��@@�@@@����&string��]���]��@@�@@@�@@@@��� ��������	M [print ast] turns an abstract syntax tree into a human-readable
      form. @��$[35�%\y�@@@@@�@��']��@�@��������������6 {2 Dynamic semantic} @��7_���8_��@@@@@����A�    �'runtime��Ac+2�Bc+9@@@@A@���+א������	[ A runtime environment contains all the information necessary
      to evaluate a program. @��Oa���Pb*@@@@@�@��Rc+-@@�@���A�    �*observable��\g���]g��@@@@A@���F򐠠����	_ In the interactive loop, we will display some observable
      feedback about the evaluation. @��je;=�kfz�@@@@@�@��mg��@@�@���Р/initial_runtime��vj���wj�@��@����$unit���j���j�	@@�@@@����'runtime���j���j�@@�@@@�@@@@���u!�������	0 The evaluation starts with an initial runtime. @���i����i��@@@@@,@���j��@�@���Р(evaluate���o����o��@��@����'runtime���o����o��@@�@@@��@����#ast���o����o��@@�@@@�������'runtime���o����o��@@�@@@�����*observable���o����o��@@�@@@@�@@@�@@@�'@@@@����j�������	� [evaluate runtime p] executes the program [p] and
      produces a new runtime as well as an observation
      of this runtime. @���l��n��@@@@@u@���o��@�@���Р0print_observable���s6<��s6L@��@����'runtime���s6O��s6V@@�@@@��@����*observable��s6Z�s6d@@�@@@����&string��s6h�s6n@@�@@@�@@@�@@@@������������	V [print_observable o] returns a human-readable
      representation of an observable. @��q���r5@@@@@�@�� s68@�@��������������5 {3 Static semantic} @��0upr�1up�@@@@@����A�    �2typing_environment��:x���;x��@@@@A@���$А������	C A typing environment stores static information about the program. @��Hw���Iw��@@@@@�@��Kx��@@�@���Р:initial_typing_environment��T|gm�U|g�@��@����$unit��^|g��_|g�@@�@@@����2typing_environment��g|g��h|g�@@�@@@�@@@@���S��������	k The initial typing environment contains predefined static information,
      like the type for constants. @��wz���x{Af@@@@@
@��z|gi@�@���Р)typecheck��� AX^�� AXg@��@����2typing_environment��� AXj�� AX|@@�@@@��@����#ast��� AX��� AX�@@�@@@����2typing_environment��� AX��� AX�@@�@@@�@@@�@@@@����:�������	� [typecheck env p] checks if the program [p] is well-formed
      and enriches the typing environment accordingly. If [p] is
      not well-formed an {!Error} is issued. @���~���� @(W@@@@@E@��� AXZ@�@���Р8print_typing_environment��� E		�� E		$@��@����2typing_environment��� E		'�� E		9@@�@@@����&string��� E		=�� E		C@@�@@@�@@@@����i�������	c [print_typing_environment] returns a human-readable
      representation of a typing environment. @��� C���� D�	@@@@@t@��� E		@�@@���A_v�� G	E	H@@@���A__@�@���Р#get��� J	�	��� J	�	�@��@����&string��� J	�	��� J	�	�@@�@@@�����(Language�� J	�	�� J	�	�@@��
 J	�	�� J	�	�@��@@@�@@@@������������	C [get name] returns a language of flap called [name] if it exists. @�� I	J	J� I	J	�@@@@@�@�� J	�	�@�@���Р2get_from_extension��' N
 
$�( N
 
6@��@����&string��1 N
 
9�2 N
 
?@@�@@@�����(Language��; N
 
K�< N
 
S@@��> N
 
C�? N
 
T@��@@@�@@@@���+א������	` [get_from_extension ext] returns a language of flap whose extension
    is [ext] if it exists. @��O L	�	��P M

@@@@@�@��R N
 
 @�@���Р(register��[ R
�
��\ R
�
�@��@�����(Language��f R
�
��g R
�
�@@��i R
�
��j R
�
�@��@@@����$unit��s R
�
��t R
�
�@@�@@@�@@@@���_�������	: [register l] inserts [l] in the set of flap's languages. @��� Q
W
W�� Q
W
�@@@@@@��� R
�
�@�@@