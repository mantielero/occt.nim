import aspect_types





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



proc newAspectFrustumLRBT*[ElemT](): AspectFrustumLRBT[ElemT] {.cdecl, constructor,
    importcpp: "Aspect_FrustumLRBT<\'*0>(@)".}
proc newAspectFrustumLRBT*[ElemT; OtherT](theOther: AspectFrustumLRBT[OtherT]): AspectFrustumLRBT[
    ElemT] {.cdecl, constructor, importcpp: "Aspect_FrustumLRBT<\'*0>(@)",
            .}
proc multiply*[ElemT](this: var AspectFrustumLRBT[ElemT]; theScale: ElemT) {.cdecl,
    importcpp: "Multiply".}
proc multiplied*[ElemT](this: var AspectFrustumLRBT[ElemT]; theScale: ElemT): AspectFrustumLRBT[
    ElemT] {.cdecl, importcpp: "Multiplied".}


