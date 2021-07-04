##  Created on: 2013-12-20
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _BVH_TreeBase_Header [NewLine] # _BVH_TreeBase_Header [NewLine] # BVH_Box.hxx [NewLine] template < class T , int N > [end of template] class BVH_Builder ;
## Error: token expected: > [end of template] but got: =!!!

## ! A non-template class for using as base for BVH_TreeBase
## ! (just to have a named base class).

type
  BVH_TreeBaseTransient* {.importcpp: "BVH_TreeBaseTransient",
                          header: "BVH_Tree.hxx", bycopy.} = object of Standard_Transient

  BVH_TreeBaseTransientbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BVH_TreeBaseTransient::get_type_name(@)",
                              header: "BVH_Tree.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BVH_TreeBaseTransient::get_type_descriptor(@)",
    header: "BVH_Tree.hxx".}
proc DynamicType*(this: BVH_TreeBaseTransient): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BVH_Tree.hxx".}
## ! Stores parameters of bounding volume hierarchy (BVH).
## ! Bounding volume hierarchy (BVH) organizes geometric objects in
## ! the tree based on spatial relationships. Each node in the tree
## ! contains an axis-aligned bounding box of all the objects below
## ! it. Bounding volume hierarchies are used in many algorithms to
## ! support efficient operations on the sets of geometric objects,
## ! such as collision detection, ray-tracing, searching of nearest
## ! objects, and view frustum culling.

type
  BVH_TreeBase*[T; N: static[cint]] {.importcpp: "BVH_TreeBase<\'0,\'1>",
                                   header: "BVH_Tree.hxx", bycopy.} = object of BVH_TreeBaseTransient ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## custom
                                                                                               ## data
                                                                                               ## types
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## general
                                                                                               ## methods
                                                                                               ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## new
                                                                                               ## empty
                                                                                               ## BVH
                                                                                               ## tree.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## methods
                                                                                               ## for
                                                                                               ## accessing
                                                                                               ## individual
                                                                                               ## nodes
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## minimum
                                                                                               ## point
                                                                                               ## of
                                                                                               ## the
                                                                                               ## given
                                                                                               ## node.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## methods
                                                                                               ## for
                                                                                               ## accessing
                                                                                               ## serialized
                                                                                               ## tree
                                                                                               ## data
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## array
                                                                                               ## of
                                                                                               ## node
                                                                                               ## data
                                                                                               ## records.
    BVH* {.importc: "BVH".}: typename
    BVH* {.importc: "BVH".}: typename
    BVH* {.importc: "BVH".}: typename
    myDepth* {.importc: "myDepth".}: cint

  BVH_TreeBaseBVH_VecNt*[T; N] = BVH_VecNt[T, N]

proc constructBVH_TreeBase*[T; N: static[cint]](): BVH_TreeBase[T, N] {.constructor,
    importcpp: "BVH_TreeBase<\'*0,\'*1>(@)", header: "BVH_Tree.hxx".}
proc destroyBVH_TreeBase*[T; N: static[cint]](this: var BVH_TreeBase[T, N]) {.
    importcpp: "#.~BVH_TreeBase()", header: "BVH_Tree.hxx".}
proc Depth*[T; N: static[cint]](this: BVH_TreeBase[T, N]): cint {.noSideEffect,
    importcpp: "Depth", header: "BVH_Tree.hxx".}
proc Length*[T; N: static[cint]](this: BVH_TreeBase[T, N]): cint {.noSideEffect,
    importcpp: "Length", header: "BVH_Tree.hxx".}
proc MinPoint*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var BVH_TreeBaseBVH_VecNt {.
    importcpp: "MinPoint", header: "BVH_Tree.hxx".}
proc MaxPoint*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var BVH_TreeBaseBVH_VecNt {.
    importcpp: "MaxPoint", header: "BVH_Tree.hxx".}
proc MinPoint*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): BVH_TreeBaseBVH_VecNt {.
    noSideEffect, importcpp: "MinPoint", header: "BVH_Tree.hxx".}
proc MaxPoint*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): BVH_TreeBaseBVH_VecNt {.
    noSideEffect, importcpp: "MaxPoint", header: "BVH_Tree.hxx".}
proc BegPrimitive*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var cint {.
    importcpp: "BegPrimitive", header: "BVH_Tree.hxx".}
proc EndPrimitive*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var cint {.
    importcpp: "EndPrimitive", header: "BVH_Tree.hxx".}
proc BegPrimitive*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, importcpp: "BegPrimitive", header: "BVH_Tree.hxx".}
proc EndPrimitive*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, importcpp: "EndPrimitive", header: "BVH_Tree.hxx".}
proc NbPrimitives*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, importcpp: "NbPrimitives", header: "BVH_Tree.hxx".}
proc Level*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var cint {.
    importcpp: "Level", header: "BVH_Tree.hxx".}
proc Level*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, importcpp: "Level", header: "BVH_Tree.hxx".}
proc IsOuter*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): bool {.
    noSideEffect, importcpp: "IsOuter", header: "BVH_Tree.hxx".}
proc NodeInfoBuffer*[T; N: static[cint]](this: var BVH_TreeBase[T, N]): var BVH_Array4i {.
    importcpp: "NodeInfoBuffer", header: "BVH_Tree.hxx".}
proc NodeInfoBuffer*[T; N: static[cint]](this: BVH_TreeBase[T, N]): BVH_Array4i {.
    noSideEffect, importcpp: "NodeInfoBuffer", header: "BVH_Tree.hxx".}
## !!!Ignored construct:  :: ArrayType < T , N > :: Type & MinPointBuffer ( ) { return myMinPointBuffer ; } ! Returns array of node maximum points. typename BVH :: ArrayType < T , N > :: Type & MaxPointBuffer ( ) { return myMaxPointBuffer ; } ! Returns array of node minimum points. const typename BVH :: ArrayType < T , N > :: Type & MinPointBuffer ( ) const { return myMinPointBuffer ; } ! Returns array of node maximum points. const typename BVH :: ArrayType < T , N > :: Type & MaxPointBuffer ( ) const { return myMaxPointBuffer ; } ! Dumps the content of me into the stream virtual void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const { OCCT_DUMP_TRANSIENT_CLASS_BEGIN ( theOStream ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myDepth ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , Length ( ) ) for ( Standard_Integer aNodeIdx = 0 ; aNodeIdx < Length ( ) ; ++ aNodeIdx ) { DumpNode ( aNodeIdx , theOStream , theDepth ) ; } } ! Dumps the content of node into the stream virtual void DumpNode ( const int theNodeIndex , Standard_OStream & theOStream , Standard_Integer theDepth ) const { OCCT_DUMP_CLASS_BEGIN ( theOStream , BVH_TreeNode ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , theNodeIndex ) Bnd_Box aBndBox = BVH :: ToBndBox ( MinPoint ( theNodeIndex ) , MaxPoint ( theNodeIndex ) ) ; Bnd_Box * aPointer = & aBndBox ; OCCT_DUMP_FIELD_VALUES_DUMPED ( theOStream , theDepth , aPointer ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , BegPrimitive ( theNodeIndex ) ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , EndPrimitive ( theNodeIndex ) ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , Level ( theNodeIndex ) ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , IsOuter ( theNodeIndex ) ) } public : ! @name protected fields ! Array of node data records. BVH_Array4i myNodeInfoBuffer ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: ArrayType < T , N > :: Type myMinPointBuffer ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: ArrayType < T , N > :: Type myMaxPointBuffer ;
## Error: identifier expected, but got: ::!!!

## ! Type corresponding to quad BVH.

type
  BVH_QuadTree* {.importcpp: "BVH_QuadTree", header: "BVH_Tree.hxx", bycopy.} = object


## ! Type corresponding to binary BVH.

type
  BVH_BinaryTree* {.importcpp: "BVH_BinaryTree", header: "BVH_Tree.hxx", bycopy.} = object


## ! BVH tree with given arity (2 or 4).

## !!!Ignored construct:  template < class T , int N , class Arity = BVH_BinaryTree > [end of template] class BVH_Tree {  Invalid type } ;
## Error: token expected: > [end of template] but got: =!!!
