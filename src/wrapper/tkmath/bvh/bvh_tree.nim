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

discard "forward decl of BVH_Builder"
type
  BVH_TreeBaseTransient* {.importcpp: "BVH_TreeBaseTransient",
                          header: "BVH_Tree.hxx", bycopy.} = object of StandardTransient


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
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## protected
                                                                                               ## fields
                                                                                               ##
                                                                                               ## !
                                                                                               ## Array
                                                                                               ## of
                                                                                               ## node
                                                                                               ## data
                                                                                               ## records.
    myNodeInfoBuffer* {.importc: "myNodeInfoBuffer".}: BVH_Array4i ## ! Array of node minimum points.
                                                               ##    typename BVH::ArrayType<T, N>::Type myMinPointBuffer;
                                                               ##
                                                               ##    //! Array of node maximum points.
                                                               ##    typename BVH::ArrayType<T, N>::Type myMaxPointBuffer;
                                                               ## ! Current depth of BVH tree (set by builder).
    myDepth* {.importc: "myDepth".}: cint

  BVH_TreeBaseBVH_VecNt*[T; N] = BVH_VecNt[T, N]

proc newBVH_TreeBase*[T; N: static[cint]](): BVH_TreeBase[T, N] {.cdecl, constructor,
    importcpp: "BVH_TreeBase<\'*0,\'*1>(@)", dynlib: tkmath.}
proc destroyBVH_TreeBase*[T; N: static[cint]](this: var BVH_TreeBase[T, N]) {.cdecl,
    importcpp: "#.~BVH_TreeBase()", dynlib: tkmath.}
proc depth*[T; N: static[cint]](this: BVH_TreeBase[T, N]): cint {.noSideEffect, cdecl,
    importcpp: "Depth", dynlib: tkmath.}
proc length*[T; N: static[cint]](this: BVH_TreeBase[T, N]): cint {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkmath.}
proc minPoint*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var BVH_TreeBaseBVH_VecNt {.
    cdecl, importcpp: "MinPoint", dynlib: tkmath.}
proc maxPoint*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var BVH_TreeBaseBVH_VecNt {.
    cdecl, importcpp: "MaxPoint", dynlib: tkmath.}
proc minPoint*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): BVH_TreeBaseBVH_VecNt {.
    noSideEffect, cdecl, importcpp: "MinPoint", dynlib: tkmath.}
proc maxPoint*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): BVH_TreeBaseBVH_VecNt {.
    noSideEffect, cdecl, importcpp: "MaxPoint", dynlib: tkmath.}
proc begPrimitive*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var cint {.
    cdecl, importcpp: "BegPrimitive", dynlib: tkmath.}
proc endPrimitive*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var cint {.
    cdecl, importcpp: "EndPrimitive", dynlib: tkmath.}
proc begPrimitive*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "BegPrimitive", dynlib: tkmath.}
proc endPrimitive*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "EndPrimitive", dynlib: tkmath.}
proc nbPrimitives*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "NbPrimitives", dynlib: tkmath.}
proc level*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var cint {.
    cdecl, importcpp: "Level", dynlib: tkmath.}
proc level*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "Level", dynlib: tkmath.}
proc isOuter*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsOuter", dynlib: tkmath.}
proc nodeInfoBuffer*[T; N: static[cint]](this: var BVH_TreeBase[T, N]): var BVH_Array4i {.
    cdecl, importcpp: "NodeInfoBuffer", dynlib: tkmath.}
proc nodeInfoBuffer*[T; N: static[cint]](this: BVH_TreeBase[T, N]): BVH_Array4i {.
    noSideEffect, cdecl, importcpp: "NodeInfoBuffer", dynlib: tkmath.}
## ! Type corresponding to quad BVH.

type
  BVH_QuadTree* {.importcpp: "BVH_QuadTree", header: "BVH_Tree.hxx", bycopy.} = object


## ! Type corresponding to binary BVH.

type
  BVH_BinaryTree* {.importcpp: "BVH_BinaryTree", header: "BVH_Tree.hxx", bycopy.} = object


## ! BVH tree with given arity (2 or 4).
##  template<class T, int N, class Arity = BVH_BinaryTree>
##  class BVH_Tree
##  {
##    // Invalid type
##  };
