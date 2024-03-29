Caml1999N025����            1src/compilers.mli����    D  	E  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������)Languages��8src/common/compilers.mliG � ��G � �@A��G � �@���)ocaml.doc��������	] Compilers

    A compiler is a translator from a source language to a target
    language.

@��A__�F  �@@@@@�@�@�����(Compiler��I � ��I � �@��������&Source��(K � ��)K � �@����(Language��0K � ��1K � �@�@@@��4K � �@�@�����&Target��=L � ��>L � �@����(Language��EL � ��FL � �@�@@@��IL � �@�@���A�    �+environment��SQ���TQ��@@@@A@���Pꐠ�����	� It is convenient to maintain some information about a program
      along its compilation: an environment is meant to store that
      kind of information. @��aN � ��bPl�@@@@@�@��dQ��@@�@���Р3initial_environment��mR���nR��@��@����$unit��wR���xR��@@�@@@����+environment���R����R��@@�@@@�@@@@@���R��@�@���Р)translate���X����X��@��@�����&Source#ast���X����X��@@�@@@��@����+environment���X����X��@@�@@@��������&Target#ast���X����X��@@�@@@�����+environment���X����X��@@�@@@@�@@@�@@@�)@@@@����X�������	� [translate source env] returns a [target] program semantically
      equivalent to [source] as a well as an enriched environment
      [env] that contains information related to the compilation of
      [source]. @���T����W��@@@@@c@���X��@�@@���I � ���Z��@@@���I � �@�@���Р(register���]KO��]KW@��@�����(Compiler���]Kb��]Kj@@���]KZ��]Kk@��@@@����$unit���]Ko��]Ks@@�@@@�@@@@������������	K [register compiler] integrates [compiler] is the set of flap's compilers. @��	\���
\�J@@@@@�@��]KK@�@���Р#get��hBF�hBI@���%using����$list��!hBe�"hBi@������(Language��+hB[�,hBc@@��.hBS�/hBd@��@@@@�@@@��@�����(Language��<ijw�=ij@@��?ijo�@ij�@��@@@��@�����(Language��Lij��Mij�@@��Oij��Pij�@��@@@�����(Compiler��Zij��[ij�@@��]ij��^ij�@��@@@�@@@�$@@@��dhBL@@@@���`��������
  � [get ?using source target] returns a compiler from [source] to
    [target] built by composing flap's compilers. [using] is empty if
    not specified.

    [using] represents a list of languages that must appear in the
    compilation chain. It is useful to disambiguate between several
    choices when distinct compilation chains exist between two
    languages. If [using] is not precise enough to kill the
    ambiguity, flap issues a global error. @��q_uu�rgA@@@@@@��thBB@�@�����(Identity��}m�~m"@���!L���m$��m%@�����(Language���m(��m0@�@@����(Compiler���m4��m<@�@@���m#@@����0�������	a There is an easy way to compile a language into itself:
    just use the identity function :-). @���k����l�@@@@@;@���m@�@@