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

discard "forward decl of Quantity_Color"
type
  AspectGradientBackground* {.importcpp: "Aspect_GradientBackground",
                             header: "Aspect_GradientBackground.hxx", bycopy.} = object of AspectBackground ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## a
                                                                                                     ## window
                                                                                                     ## gradient
                                                                                                     ## background.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Default
                                                                                                     ## colors
                                                                                                     ## :
                                                                                                     ## Quantity_NOC_BLACK.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Default
                                                                                                     ## fill
                                                                                                     ## method
                                                                                                     ## :
                                                                                                     ## Aspect_GFM_NONE


proc constructAspectGradientBackground*(): AspectGradientBackground {.constructor,
    importcpp: "Aspect_GradientBackground(@)",
    header: "Aspect_GradientBackground.hxx".}
proc constructAspectGradientBackground*(aColor1: QuantityColor;
                                       aColor2: QuantityColor; aMethod: AspectGradientFillMethod = aspectGFM_HOR): AspectGradientBackground {.
    constructor, importcpp: "Aspect_GradientBackground(@)",
    header: "Aspect_GradientBackground.hxx".}
proc setColors*(this: var AspectGradientBackground; aColor1: QuantityColor;
               aColor2: QuantityColor;
               aMethod: AspectGradientFillMethod = aspectGFM_HOR) {.
    importcpp: "SetColors", header: "Aspect_GradientBackground.hxx".}
proc colors*(this: AspectGradientBackground; aColor1: var QuantityColor;
            aColor2: var QuantityColor) {.noSideEffect, importcpp: "Colors",
                                       header: "Aspect_GradientBackground.hxx".}
proc bgGradientFillMethod*(this: AspectGradientBackground): AspectGradientFillMethod {.
    noSideEffect, importcpp: "BgGradientFillMethod",
    header: "Aspect_GradientBackground.hxx".}
proc dumpJson*(this: AspectGradientBackground; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Aspect_GradientBackground.hxx".}

