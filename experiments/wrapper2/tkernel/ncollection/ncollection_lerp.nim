when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
  NCollection_Lerp*[T] {.importcpp: "NCollection_Lerp<\'0>",
                        header: "NCollection_Lerp.hxx", bycopy.} = object ## ! Compute
                                                                     ## interpolated value between two values.
                                                                     ## ! @param theStart first  value
                                                                     ## ! @param theEnd   second value
                                                                     ## ! @param theT normalized
                                                                     ## interpolation coefficient within [0, 1] range,
                                                                     ## !             with 0 pointing to theStart and 1 to theEnd.
                                                                     ## ! Empty constructor


proc Interpolate*[T](theStart: T; theEnd: T; theT: cdouble): T {.cdecl,
    importcpp: "NCollection_Lerp::Interpolate(@)", dynlib: tkernel.}
proc constructNCollection_Lerp*[T](): NCollection_Lerp[T] {.cdecl, constructor,
    importcpp: "NCollection_Lerp<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_Lerp*[T](theStart: T; theEnd: T): NCollection_Lerp[T] {.
    cdecl, constructor, importcpp: "NCollection_Lerp<\'*0>(@)", dynlib: tkernel.}
proc Init*[T](this: var NCollection_Lerp[T]; theStart: T; theEnd: T) {.cdecl,
    importcpp: "Init", dynlib: tkernel.}
proc Interpolate*[T](this: NCollection_Lerp[T]; theT: cdouble; theResult: var T) {.
    noSideEffect, cdecl, importcpp: "Interpolate", dynlib: tkernel.}