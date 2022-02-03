Caml1999N025����            -src/graph.mli����  &�  �  �  1�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���*ppx_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������
  = A module for undirected graphs.

    This module provides a functional data structure to represent a
    graph which nodes contain a set of labels and which edges can have
    one label too.

    We maintain the invariant that two nodes always have different
    labels: thus, nodes are identified by their labels.

@��7src/utilities/graph.mliA^^�J^`@@@@@������,EdgeLabelSig��
Lbn�Lbz@������������#Set+OrderedType��M���M��@�@@��M��@���)ocaml.doc��������	0 [all] enumerates all the possible edge labels. @��-N���.N��@@@@@�@�@���Р#all��7O���8O��@����$list��?O���@O��@�����!t��HO���IO��@@�@@@@�@@@@���,萠�����+@*@@@*@�6򐠠����	7 [to_string e] converts [e] in a human readable value. @��bP���cP�,@@@@@�@��eO��&@�'@���Р)to_string��nQ-5�oQ->@��@����!t��xQ-A�yQ-B@@�@@@����&string���Q-F��Q-L@@�@@@�@@@@���e!�������/@.@@@.@(@���Q-1@�@@���Lb}��RMP@@@���Lbb@�@�����,NodeLabelSig���TR^��TRj@������������#Set+OrderedType���Uq{��Uq�@�@@���Uqs@����Q�������	7 [to_string n] converts [n] in a human readable value. @���V����V��@@@@@\@�@���Р)to_string���W����W��@��@����!t���W����W��@@�@@@����&string���W����W��@@�@@@�@@@@����~�������-@,@@@,@�@���W��@�@@���TRm��X��@@@���TRR@�@�����$Make���Z����Z��@���)EdgeLabel��Z���Z�@�����,EdgeLabelSig��Z��Z�@�@@���)NodeLabel��Z��Z� @�����,NodeLabelSig��Z�#�Z�/@�@@�����A�    �!t��*]V]�+]V^@@@@A@���Ȑ������6 The type for graphs. @��8\8:�9\8U@@@@@�@��;]VX@@�@���Р%empty��D`z��E`z�@����!t��L`z��M`z�@@�@@@@���/될�����2 The empty graph. @��[_`b�\_`y@@@@@�@��^`z|@�@���Р(add_node��gh���hh��@��@����!t��qh���rh��@@�@@@��@����$list��|h���}h��@������)NodeLabel!t���h����h��@@�@@@@�@@@����!t���h����h��@@�@@@�@@@�%@@@@���v2�������
   [add_node g [n1;...;nN]] returns a new graph that extends [g] with
      a new node labelled by [n1;...;nN]. None of the [nI] can be used
      by another node in [g]. Otherwise, [InvalidNode] is raised.

      In the sequel, the new node can be identified by any [nI].
  @���b����g��@@@@@=@���h��@�@������+InvalidNode���i����i��@��@@���i��@@N@�@������+InvalidEdge���j����j��@��@@���j��@@]@�@���Р(add_edge���o����o��@��@����!t���o����o��@@�@@@��@�����)NodeLabel!t���o����o��@@�@@@��@�����)EdgeLabel!t���o����o�@@�@@@��@�����)NodeLabel!t���o���o�@@�@@@����!t��o��o�@@�@@@�@@@�@@@�)@@@�7@@@@������������	� [add_edge g n1 e n2] returns a new graph that extends [g] with a
      new edge between [n1] and [n2]. The edge is labelled by [e]. If [n1]
      or [n2] does not exist, then [InvalidNode] is raised. @��l�n��@@@@@�@��o��@�@���Р(del_edge��%uDJ�&uDR@��@����!t��/uDU�0uDV@@�@@@��@�����)NodeLabel!t��<uDZ�=uDe@@�@@@��@�����)EdgeLabel!t��IuDi�JuDt@@�@@@��@�����)NodeLabel!t��VuDx�WuD�@@�@@@����!t��_uD��`uD�@@�@@@�@@@�@@@�)@@@�7@@@@���F�������
  $ [del_edge g n1 e n2] returns a new graph that restricts [g] by removing
      thge edge between [n1] and [n2]. The edge is labelled by [e]. If [n1]
      or [n2] does not exist, then [InvalidNode] is raised. If there is no
      such edge between [n1] and [n2] then [InvalidEdge] is raised. @��rq�st�C@@@@@@��uuDF@�@���Р(del_node��~y���y��@��@����!t���y���y�@@�@@@��@�����)NodeLabel!t���y���y�@@�@@@����!t���y���y�@@�@@@�@@@�@@@@����?�������	^ [del_node g n] returns a new graph that contains [g] minus the
      node [n] and its edges. @���w����x��@@@@@J@���y��@�@���Р*neighbours���~����~��@��@����!t���~����~��@@�@@@��@�����)EdgeLabel!t���~����~��@@�@@@��@�����)NodeLabel!t���~����~��@@�@@@����$list���~�	��~�	@�����$list���~�	��~�	@������)NodeLabel!t���~�	��~�	@@�@@@@�@@@@�@@@�#@@@�1@@@�?@@@@������������	� [neighbours g e n] returns the neighbours of [n] in [g]
      that are connected with an edge labelled by [e]. One neighbour is
      characterized by all its node labels. @��{�}��@@@@@�@��~��+@�,@���Р%edges�� B	�	�� B	�	�@��@����!t��& B	�	��' B	�	�@@�@@@��@�����)EdgeLabel!t��3 B	�	��4 B	�	�@@�@@@����$list��< B	�	��= B	�	�@��������$list��H B	�	��I B	�	�@������)NodeLabel!t��S B	�	��T B	�	�@@�@@@@�@@@�����$list��^ B	�	��_ B	�	�@������)NodeLabel!t��i B	�	��j B	�	�@@�@@@@�@@@@�@@@@��o B	�	�3@@@�>4@@@�L5@@@@���R�������	 [edges g e] returns all the edges of kind [e] in [g].
      WARNING: This function is inefficient! Use it only for debugging. @��~ @		� A	V	�@@@@@@��� B	�	�E@�F@���Р%nodes��� E
 
&�� E
 
+@��@����!t��� E
 
.�� E
 
/@@�@@@����$list��� E
 
D�� E
 
H@�����$list��� E
 
?�� E
 
C@������)NodeLabel!t��� E
 
3�� E
 
>@@�@@@@�@@@@�@@@�#@@@@����S�������	) [nodes g] returns all the nodes of [g]. @��� D	�	��� D	�
@@@@@^@��� E
 
")@�*@���Р*min_degree��� J	�� J	@��@��@�����)NodeLabel!t��� K!�� K,@@�@@@����$bool��� K0�� K4@@�@@@�@@@��@����!t��� L6=�� L6>@@�@@@��@�����)EdgeLabel!t��� L6B�  L6M@@�@@@��@�����)EdgeLabel!t�� L6Q� L6\@@�@@@����&option�� L6t� L6z@��������#int��! L6a�" L6d@@�@@@������)NodeLabel!t��- L6g�. L6r@@�@@@@�@@@@��2 L6`@@@�(@@@�6@@@�D @@@��7 K "@@@@���Ԑ������	� [min_degree excluded g c nc] returns a node [n] of minimal degree for [c]
      that has no edge for [nc] and so that not [excluded c], or returns None
      if no such node exists. @��D G
J
L�E I
�@@@@@�@��G J	2@�3@���Р)pick_edge��P P���Q P��@��@����!t��Z P���[ P��@@�@@@��@�����)EdgeLabel!t��g P���h P�@@�@@@����&option��p P�!�q P�'@���������)NodeLabel!t��~ P�� P�@@�@@@������)NodeLabel!t��� P��� P�@@�@@@@�@@@@��� P�@@@�* @@@�8!@@@@���r.�������	[ [pick_edge g c] returns an arbitrary edge for [c] or None if
      there is no such edge. @��� N|~�� O��@@@@@9@��� P��1@�2@���Р%merge��� T���� T��@��@����!t��� T���� T��@@�@@@��@�����)NodeLabel!t��� T���� T��@@�@@@��@�����)NodeLabel!t��� T���� T��@@�@@@����!t��� T���� T��@@�@@@�@@@�@@@�)@@@@����y�������	a [merge g n1 n2] returns a new graph which is [g] in which [n1]
      and [n2] have been merged. @��� R)+�� Sn�@@@@@�@��� T��@�@���Р*all_labels��� W	�� W	@��@����!t��� W	�  W	@@�@@@��@�����)NodeLabel!t�� W	!� W	,@@�@@@����$list�� W	<� W	@@������)NodeLabel!t��  W	0�! W	;@@�@@@@�@@@�@@@�'@@@@���������	; [all_labels g n] returns all the node labels of node [n]. @��2 V���3 V�@@@@@�@��5 W	 @�!@���Р-are_connected��> [���? [��@��@����!t��H [���I [��@@�@@@��@�����)NodeLabel!t��U [���V [��@@�@@@��@�����)EdgeLabel!t��b [���c [��@@�@@@��@�����)NodeLabel!t��o [���p [��@@�@@@����$bool��x [���y [��@@�@@@�@@@�@@@�)@@@�7@@@@���_�������	V [are_connected g n1 e n2] returns true iff [n1] and [n2] are connected
      by [e]. @��� YBD�� Z��@@@@@&@��� [��@�@���Р$show��� `���� `��@��@����!t��� `���� `��@@�@@@��@��@�����)NodeLabel!t��� `���� `��@@�@@@����&option��� `���� `��@�����&string��� `���� `��@@�@@@@�@@@�@@@����$unit��� `���� `��@@�@@@��� `��@@@�2@@@@����o�������	� [show g labels] runs [dotty] to display the graph [g]. [labels n] may
      optionally return an additional information to be display in the node
      for [n]. @��� ]���� _��@@@@@z@��� `��@�@���Р$dump��� a���� a��@��@����!t��� a���� a��@@�@@@����&string��� a���� a��@@�@@@�@@@@@�� a��@�@@��Z�3� c��@@��	Z�@@��Z��@@@��Z��@�@@