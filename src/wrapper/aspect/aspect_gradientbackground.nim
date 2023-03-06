import ../standard/standard_types
import aspect_types
import ../quantity/quantity_types





##  Created on: 2010-05-21
##  Created by: PAUL SUPRYATKIN
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
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

## ! This class allows the definition of a window gradient background.



proc newAspectGradientBackground*(): AspectGradientBackground {.cdecl, constructor,
    importcpp: "Aspect_GradientBackground(@)".}
proc newAspectGradientBackground*(theColor1: QuantityColor;
                                 theColor2: QuantityColor; theMethod: AspectGradientFillMethod = aspectGradientFillMethodHorizontal): AspectGradientBackground {.
    cdecl, constructor, importcpp: "Aspect_GradientBackground(@)".}
proc setColors*(this: var AspectGradientBackground; theColor1: QuantityColor;
               theColor2: QuantityColor; theMethod: AspectGradientFillMethod = aspectGradientFillMethodHorizontal) {.
    cdecl, importcpp: "SetColors".}
proc colors*(this: AspectGradientBackground; theColor1: var QuantityColor;
            theColor2: var QuantityColor) {.noSideEffect, cdecl, importcpp: "Colors",
    .}
proc bgGradientFillMethod*(this: AspectGradientBackground): AspectGradientFillMethod {.
    noSideEffect, cdecl, importcpp: "BgGradientFillMethod".}
proc dumpJson*(this: AspectGradientBackground; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 .}


