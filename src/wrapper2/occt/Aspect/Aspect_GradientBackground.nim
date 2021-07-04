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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Quantity/Quantity_Color,
  Aspect_GradientFillMethod, Aspect_Background

discard "forward decl of Quantity_Color"
type
  Aspect_GradientBackground* {.importcpp: "Aspect_GradientBackground",
                              header: "Aspect_GradientBackground.hxx", bycopy.} = object of Aspect_Background ##
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


proc constructAspect_GradientBackground*(): Aspect_GradientBackground {.
    constructor, importcpp: "Aspect_GradientBackground(@)",
    header: "Aspect_GradientBackground.hxx".}
proc constructAspect_GradientBackground*(AColor1: Quantity_Color;
                                        AColor2: Quantity_Color; AMethod: Aspect_GradientFillMethod = Aspect_GFM_HOR): Aspect_GradientBackground {.
    constructor, importcpp: "Aspect_GradientBackground(@)",
    header: "Aspect_GradientBackground.hxx".}
proc SetColors*(this: var Aspect_GradientBackground; AColor1: Quantity_Color;
               AColor2: Quantity_Color;
               AMethod: Aspect_GradientFillMethod = Aspect_GFM_HOR) {.
    importcpp: "SetColors", header: "Aspect_GradientBackground.hxx".}
proc Colors*(this: Aspect_GradientBackground; AColor1: var Quantity_Color;
            AColor2: var Quantity_Color) {.noSideEffect, importcpp: "Colors",
                                        header: "Aspect_GradientBackground.hxx".}
proc BgGradientFillMethod*(this: Aspect_GradientBackground): Aspect_GradientFillMethod {.
    noSideEffect, importcpp: "BgGradientFillMethod",
    header: "Aspect_GradientBackground.hxx".}
proc DumpJson*(this: Aspect_GradientBackground; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Aspect_GradientBackground.hxx".}