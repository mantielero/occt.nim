##  Created on: 1991-10-02
##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Quantity/Quantity_Color

discard "forward decl of Quantity_Color"
type
  Aspect_Background* {.importcpp: "Aspect_Background",
                      header: "Aspect_Background.hxx", bycopy.} = object ## ! Creates a window background.
                                                                    ## ! Default color :
                                                                    ## NOC_MATRAGRAY.


proc constructAspect_Background*(): Aspect_Background {.constructor,
    importcpp: "Aspect_Background(@)", header: "Aspect_Background.hxx".}
proc constructAspect_Background*(AColor: Quantity_Color): Aspect_Background {.
    constructor, importcpp: "Aspect_Background(@)", header: "Aspect_Background.hxx".}
proc SetColor*(this: var Aspect_Background; AColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Aspect_Background.hxx".}
proc Color*(this: Aspect_Background): Quantity_Color {.noSideEffect,
    importcpp: "Color", header: "Aspect_Background.hxx".}
proc DumpJson*(this: Aspect_Background; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Aspect_Background.hxx".}