##  Created by: Olga Suryaninova
##  Created on: 2019-11-25
##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! Describes a ray based on BVH vectors.

type
  BVH_Ray*[T; N: static[cint]] {.importcpp: "BVH_Ray<\'0,\'1>",
                              header: "BVH_Ray.hxx", bycopy.} = object
    origin* {.importc: "Origin".}: BVH_RayBVH_VecNt
    direct* {.importc: "Direct".}: BVH_RayBVH_VecNt

  BVH_RayBVH_VecNt*[T; N] = object

proc newBVH_Ray*[T; N: static[cint]](theOrigin: BVH_RayBVH_VecNt;
                                  theDirect: BVH_RayBVH_VecNt): BVH_Ray[T, N] {.
    cdecl, constructor, importcpp: "BVH_Ray<\'*0,\'*1>(@)", header: "BVH_Ray.hxx".}