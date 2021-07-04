##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Structure defining frustum boundaries.

type
  Aspect_FrustumLRBT*[Elem_t] {.importcpp: "Aspect_FrustumLRBT<\'0>",
                               header: "Aspect_FrustumLRBT.hxx", bycopy.} = object
    Left* {.importc: "Left".}: Elem_t
    Right* {.importc: "Right".}: Elem_t
    Bottom* {.importc: "Bottom".}: Elem_t
    Top* {.importc: "Top".}: Elem_t ## ! Empty constructor.


proc constructAspect_FrustumLRBT*[Elem_t](): Aspect_FrustumLRBT[Elem_t] {.
    constructor, importcpp: "Aspect_FrustumLRBT<\'*0>(@)",
    header: "Aspect_FrustumLRBT.hxx".}
proc constructAspect_FrustumLRBT*[Elem_t; Other_t](
    theOther: Aspect_FrustumLRBT[Other_t]): Aspect_FrustumLRBT[Elem_t] {.
    constructor, importcpp: "Aspect_FrustumLRBT<\'*0>(@)",
    header: "Aspect_FrustumLRBT.hxx".}
proc Multiply*[Elem_t](this: var Aspect_FrustumLRBT[Elem_t]; theScale: Elem_t) {.
    importcpp: "Multiply", header: "Aspect_FrustumLRBT.hxx".}
proc Multiplied*[Elem_t](this: var Aspect_FrustumLRBT[Elem_t]; theScale: Elem_t): Aspect_FrustumLRBT[
    Elem_t] {.importcpp: "Multiplied", header: "Aspect_FrustumLRBT.hxx".}