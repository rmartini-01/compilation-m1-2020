Caml1999N025����            ;src/hopixSyntacticSugar.mli����  �  w  �  7�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������(Position��	!src/hopix/hopixSyntacticSugar.mliAhm�Ahu@A��Ahh@@�@������(HopixAST��Bv{�Bv C@A��Bvv@@�@���Р0fresh_identifier��F � ��F � �@��@����$unit��$F � ��%F � �@@�@@@����*identifier��-F � ��.F � �@@�@@@�@@@@���)ocaml.docǐ������	R [fresh_identifier ()] returns a new fresh identifier each time it
    is called. @��>D E E�?E � �@@@@@�@��AF � �@�@���Р6make_multi_assignments��JR���KR��@��@����$list��TS���US��@�����'located��]S���^S��@�����*expression��fS���gS��@@�@@@@�@@@@�@@@��@����$list��sS���tS��@�����'located��|S���}S��@�����*expression���S����S��@@�@@@@�@@@@�@@@����*expression���S����S��@@�@@@�@@@�/@@@@���d*�������	� [make_multi_assignments [e1; ...; eN] [f1; ...; fN]] returns
    an expression of the form:
    [
    let x_1 = f1 in
    ...
    let x_N = fN in
    e1 := x1;
    ...
    eN := xN
    ] @���H � ���Q��@@@@@5@���R��@�@���Р8make_delayed_computation���ZEI��ZEa@��@����'located���ZEo��ZEv@�����*expression���ZEd��ZEn@@�@@@@�@@@����*expression���ZEz��ZE�@@�@@@�@@@@����c�������	T [make_delayed_computation e] returns an expression of the form:

    [ \() => e ]

@���U����YBD@@@@@n@���ZEE@�@@