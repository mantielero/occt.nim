##  Created by: Kirill GAVRILOV
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Simple linear interpolation tool (also known as mix() in GLSL).
## ! The main purpose of this template class is making interpolation routines more readable.

type
  NCollectionLerp*[T] {.importcpp: "NCollection_Lerp<\'0>",
                       header: "NCollection_Lerp.hxx", bycopy.} = object ## ! Compute interpolated value between two values.
                                                                    ## ! @param theStart first  value
                                                                    ## ! @param theEnd   second value
                                                                    ## ! @param theT normalized
                                                                    ## interpolation coefficient within [0, 1] range,
                                                                    ## !             with 0 pointing to theStart and 1 to theEnd.
                                                                    ## ! Empty constructor


proc interpolate*[T](theStart: T; theEnd: T; theT: cdouble): T {.cdecl,
    importcpp: "NCollection_Lerp::Interpolate(@)", header: "NCollection_Lerp.hxx".}
proc newNCollectionLerp*[T](): NCollectionLerp[T] {.cdecl, constructor,
    importcpp: "NCollection_Lerp<\'*0>(@)", header: "NCollection_Lerp.hxx".}
proc newNCollectionLerp*[T](theStart: T; theEnd: T): NCollectionLerp[T] {.cdecl,
    constructor, importcpp: "NCollection_Lerp<\'*0>(@)", header: "NCollection_Lerp.hxx".}
proc init*[T](this: var NCollectionLerp[T]; theStart: T; theEnd: T) {.cdecl,
    importcpp: "Init", header: "NCollection_Lerp.hxx".}
proc interpolate*[T](this: NCollectionLerp[T]; theT: cdouble; theResult: var T) {.
    noSideEffect, cdecl, importcpp: "Interpolate", header: "NCollection_Lerp.hxx".}