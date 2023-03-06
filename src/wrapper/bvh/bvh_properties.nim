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

## ! Abstract properties of geometric object.



proc destroyBVH_Properties*(this: var BVH_Properties) {.cdecl,
    importcpp: "#.~BVH_Properties()", header: "BVH_Properties.hxx".}
## ! Stores transform properties of geometric object.



proc newBVH_Transform*[T; N: static[cint]](): BVH_Transform[T, N] {.cdecl, constructor,
    importcpp: "BVH_Transform<\'*0,\'*1>(@)", header: "BVH_Properties.hxx".}
proc newBVH_Transform*[T; N: static[cint]](theTransform: BVH_TransformBVH_MatNt): BVH_Transform[
    T, N] {.cdecl, constructor, importcpp: "BVH_Transform<\'*0,\'*1>(@)",
          header: "BVH_Properties.hxx".}
proc destroyBVH_Transform*[T; N: static[cint]](this: var BVH_Transform[T, N]) {.cdecl,
    importcpp: "#.~BVH_Transform()", header: "BVH_Properties.hxx".}
proc transform*[T; N: static[cint]](this: BVH_Transform[T, N]): BVH_TransformBVH_MatNt {.
    noSideEffect, cdecl, importcpp: "Transform", header: "BVH_Properties.hxx".}
proc setTransform*[T; N: static[cint]](this: var BVH_Transform[T, N];
                                    theTransform: BVH_TransformBVH_MatNt) {.cdecl,
    importcpp: "SetTransform", header: "BVH_Properties.hxx".}
proc inversed*[T; N: static[cint]](this: BVH_Transform[T, N]): BVH_TransformBVH_MatNt {.
    noSideEffect, cdecl, importcpp: "Inversed", header: "BVH_Properties.hxx".}
proc apply*[T; N: static[cint]](this: BVH_Transform[T, N]; theBox: BVH_Box[T, N]): BVH_Box[
    T, N] {.noSideEffect, cdecl, importcpp: "Apply", header: "BVH_Properties.hxx".}







