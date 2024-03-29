Caml1999M025����            0src/languages.ml����  !�    �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������(Language��7src/common/languages.mlA^j�A^r@������Р$name��D [ a�D [ e@����&string��D [ h�D [ n@@�@@@@���)ocaml.doc��������9 A language as a [name]. @��%Cz|�&Cz Z@@@@@�@��(D [ ]@�@�����*ocaml.text��������, {1 Syntax} @��9F p r�:F p �@@@@@����A�    �#ast��CI � ��DI � �@@@@A@���-ِ������	; A syntax is defined by the type of abstract syntax trees. @��QH � ��RH � �@@@@@�@��TI � �@@�@���Р.parse_filename��]Ngm�^Ng{@��@����&string��gNg~�hNg�@@�@@@����#ast��pNg��qNg�@@�@@@�@@@@���\�������	� [parse_filename f] turns the content of file [f] into an
      abstract syntax tree if that content is a syntactically valid
      input. @���K � ���MWf@@@@@@���Ngi@�@���Р)extension���Q����Q��@����&string���Q����Q��@@�@@@@���+�������	@ Each language has its own extension for source code filenames. @���P����P��@@@@@6@���Q��@�@���Р1executable_format���Usy��Us�@����$bool���Us���Us�@@�@@@@����N�������	| [executable_format] should true when programs of the language are directly
      executable when dumped on disk as files.  @���S����T@r@@@@@Y@���Usu@�@���Р,parse_string���Y��Y @��@����&string���Y#��Y)@@�@@@����#ast���Y-��Y0@@�@@@�@@@@����}�������	s [parse_string c] is the same as [parse_filename] except that the
      source code is directly given as a string. @���W����X�@@@@@�@���Y@�@���Р)print_ast��]���]��@��@����#ast��]���]��@@�@@@����&string��]���]��@@�@@@�@@@@��� ��������	M [print ast] turns an abstract syntax tree into a human-readable
      form. @��$[24�%\x�@@@@@�@��']��@�@��������������. {2 Semantic} @��7_���8_��@@@@@����A�    �'runtime��Ac")�Bc"0@@@@A@���+א������	[ A runtime environment contains all the information necessary
      to evaluate a program. @��Oa���Pb!@@@@@�@��Rc"$@@�@���A�    �*observable��\g���]g��@@@@A@���F򐠠����	_ In the interactive loop, we will display some observable
      feedback about the evaluation. @��je24�kfq�@@@@@�@��mg��@@�@���Р/initial_runtime��vj���wj��@��@����$unit���j����j� @@�@@@����'runtime���j���j�@@�@@@�@@@@���u!�������	0 The evaluation starts with an initial runtime. @���i����i��@@@@@,@���j��@�@���Р(evaluate���o����o��@��@����'runtime���o����o��@@�@@@��@����#ast���o����o��@@�@@@�������'runtime���o����o��@@�@@@�����*observable���o����o��@@�@@@@�@@@�@@@�'@@@@����j�������	� [evaluate runtime p] executes the program [p] and
      produces a new runtime as well as an observation
      of this runtime. @���l��n|�@@@@@u@���o��@�@���Р0print_observable���s-3��s-C@��@����'runtime���s-F��s-M@@�@@@��@����*observable��s-Q�s-[@@�@@@����&string��s-_�s-e@@�@@@�@@@�@@@@������������	V [print_observable o] returns a human-readable
      representation of an observable. @��q���r,@@@@@�@�� s-/@�@��������������5 {3 Static semantic} @��0ugi�1ug�@@@@@����A�    �2typing_environment��:y���;y�@@@@A@���$А������	b During type checking, static information (aka types)
      are stored in the typing environment. @��Hw���Ix��@@@@@�@��Ky��@@�@���Р:initial_typing_environment��T|7=�U|7W@��@����$unit��^|7Z�_|7^@@�@@@����2typing_environment��g|7b�h|7t@@�@@@�@@@@���S��������	% A typing environment to start with. @��w{
�x{
6@@@@@
@��z|79@�@���Р)typecheck��� A&,�� A&5@��@����2typing_environment��� A&8�� A&J@@�@@@��@����#ast��� A&N�� A&Q@@�@@@����2typing_environment��� A&U�� A&g@@�@@@�@@@�@@@@����:�������	� [typecheck tenv p] checks if [p] is a well-typed program
      and returns an extension of the typing environment [tenv]
      with the values defined in the program. @���~vx�� @�%@@@@@E@��� A&(@�@���Р8print_typing_environment��� E���� E��@��@����2typing_environment��� E���� E��@@�@@@����&string��� E�	�� E�	@@�@@@�@@@@����i�������	Z [print_typing_environment tenv] returns a human-readable
      representation of [tenv]. @��� Cik�� D��@@@@@t@��� E��@�@@���A^u�� G	
	@@@���A^^@�@���@�������)languages��� K	d	h�� K	d	q@�@@@��@�����'Hashtbl!t�� K	d	�� K	d	�@�����&string�� K	d	u� K	d	{@@�@@@������(Language�� K	d	�� K	d	�@@�� K	d	}� K	d	�@��@@@@��! K	d	t@@@�A@@�,A@@�  �������'Hashtbl&create��0 L	�	��1 L	�	�@�@@@��@���"13@��: L	�	��; L	�	�@@@@�@@@�����@?>�����;:@7@@������65@2�/@@@.@@�WA@@���7㐠�����	O We store all the language implementations in the following
    hashing table. @��[ I		�\ J	N	c@@@@@�@��^ K	d	d$@@�%@���@�������*extensions��l N	�	��m N	�	�@�@@@��@�����'Hashtbl!t��y N	�	��z N	�	�@�����&string��� N	�	��� N	�	�@@�@@@������(Language��� N	�	��� N	�	�@@��� N	�	��� N	�	�@��@@@@��� N	�	�@@@�A@@�,A@@�  �������'Hashtbl&create��� O	�	��� O	�	�@�@@@��@���"13@��� O	�	��� O	�	�@@@@�@@@�����@?>�����;:@7@@������65@2�/@@@.@@�WA@@@��� N	�	�@@�@���@�����#get��� Q	�
�� Q	�
@�@@@��@@�����!l��� Q	�
�� Q	�
	@�@@@����&string��� Q	�
�� Q	�
@@�@@@��� Q	�
�� Q	�
@@@�  ���������'Hashtbl$find��� S
0
4�� S
0
@@�@@@��@����)languages�� S
0
A� S
0
J@�@@@��@����!l�� S
0
K� S
0
L@�@@@@�@@@������)Not_found�� T
M
T� T
M
]@@�@@@@�������%Error,global_error��( U
a
e�) U
a
w@�@@@��@���.initialization@��2 U
a
x�3 U
a
�@@@��@���:There is no such language.@��; U
a
��< U
a
�@@@@�@@@@��? R
*
,@@@�����(Language��G Q	�
�H Q	�
&@@��J Q	�
�K Q	�
'@��@@@��O Q	�
A@@�hA@@@��R Q	�	�@@�@���@�����2get_from_extension��^ W
�
��_ W
�
�@�@@@��@@�����!l��j W
�
��k W
�
�@�@@@����&string��s W
�
��t W
�
�@@�@@@��w W
�
��x W
�
�@@@�  ���������'Hashtbl$find��� Y
�
��� Y
�
�@�@@@��@����*extensions��� Y
�
��� Y
�@�@@@��@����!l��� Y
��� Y
�@�@@@@�@@@������)Not_found��� Z�� Z@@�@@@@�������%Error,global_error��� [�� [/@�@@@��@���.initialization@��� [0�� [@@@@��@���	 This extension is not supported.@��� [A�� [c@@@@�@@@@��� X
�
�@@@�����(Language��� W
�
��� W
�
�@@��� W
�
��� W
�
�@��@@@��� W
�
�A@@�hA@@@��� W
�
�@@�@���@�����(register��� ]ei�� ]eq@�@@@��@@�����!L��� ]ez�� ]e{@��� ]er�� ]e�@@@�����(Language�� ]e~� ]e�@@�@@@�@@@�  �������'Hashtbl#add�� ^��� ^��@�@@@��@����)languages�� ^���  ^��@�@@@��@�����!L$name��, ^���- ^��@�@@@��@�   ����!L��9 ^���: ^��@�@@��= ^���> ^��@@@@�,@@@�������'Hashtbl#add��J _���K _��@�@@@��@����*extensions��U _���V _��@�@@@��@�����!L)extension��b _���c _��@�@@@��@�   ����!L��o _���p _��@�@@��s _���t _��@@@@�,@@@�c@@@�}A@@@��y ]ee@@�@@