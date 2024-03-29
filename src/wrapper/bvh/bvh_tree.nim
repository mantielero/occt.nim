import bvh_types

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





proc newBVH_TreeBase*[T; N: static[cint]](): BVH_TreeBase[T, N] {.cdecl, constructor,
    importcpp: "BVH_TreeBase<\'*0,\'*1>(@)", header: "BVH_Tree.hxx".}
proc destroyBVH_TreeBase*[T; N: static[cint]](this: var BVH_TreeBase[T, N]) {.cdecl,
    importcpp: "#.~BVH_TreeBase()", header: "BVH_Tree.hxx".}
proc depth*[T; N: static[cint]](this: BVH_TreeBase[T, N]): cint {.noSideEffect, cdecl,
    importcpp: "Depth", header: "BVH_Tree.hxx".}
proc length*[T; N: static[cint]](this: BVH_TreeBase[T, N]): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "BVH_Tree.hxx".}
#proc minPoint*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var BVH_TreeBaseBVH_VecNt {.
#    cdecl, importcpp: "MinPoint", header: "BVH_Tree.hxx".}
#proc maxPoint*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var BVH_TreeBaseBVH_VecNt {.
#    cdecl, importcpp: "MaxPoint", header: "BVH_Tree.hxx".}
#proc minPoint*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): BVH_TreeBaseBVH_VecNt {.
#    noSideEffect, cdecl, importcpp: "MinPoint", header: "BVH_Tree.hxx".}
#proc maxPoint*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): BVH_TreeBaseBVH_VecNt {.
#    noSideEffect, cdecl, importcpp: "MaxPoint", header: "BVH_Tree.hxx".}
proc begPrimitive*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var cint {.
    cdecl, importcpp: "BegPrimitive", header: "BVH_Tree.hxx".}
proc endPrimitive*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var cint {.
    cdecl, importcpp: "EndPrimitive", header: "BVH_Tree.hxx".}
proc begPrimitive*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "BegPrimitive", header: "BVH_Tree.hxx".}
proc endPrimitive*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "EndPrimitive", header: "BVH_Tree.hxx".}
proc nbPrimitives*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "NbPrimitives", header: "BVH_Tree.hxx".}
proc level*[T; N: static[cint]](this: var BVH_TreeBase[T, N]; theNodeIndex: cint): var cint {.
    cdecl, importcpp: "Level", header: "BVH_Tree.hxx".}
proc level*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "Level", header: "BVH_Tree.hxx".}
proc isOuter*[T; N: static[cint]](this: BVH_TreeBase[T, N]; theNodeIndex: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsOuter", header: "BVH_Tree.hxx".}
proc nodeInfoBuffer*[T; N: static[cint]](this: var BVH_TreeBase[T, N]): var BVH_Array4i {.
    cdecl, importcpp: "NodeInfoBuffer", header: "BVH_Tree.hxx".}
proc nodeInfoBuffer*[T; N: static[cint]](this: BVH_TreeBase[T, N]): BVH_Array4i {.
    noSideEffect, cdecl, importcpp: "NodeInfoBuffer", header: "BVH_Tree.hxx".}
## ! Type corresponding to quad BVH.







