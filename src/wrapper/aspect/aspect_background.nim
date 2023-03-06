import ../standard/standard_types
import aspect_types
import ../quantity/quantity_types





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

## ! This class allows the definition of
## ! a window background.



proc newAspectBackground*(): AspectBackground {.cdecl, constructor,
    importcpp: "Aspect_Background(@)".}
proc newAspectBackground*(aColor: QuantityColor): AspectBackground {.cdecl,
    constructor, importcpp: "Aspect_Background(@)".}
proc setColor*(this: var AspectBackground; aColor: QuantityColor) {.cdecl,
    importcpp: "SetColor".}
proc color*(this: AspectBackground): QuantityColor {.noSideEffect, cdecl,
    importcpp: "Color".}
proc dumpJson*(this: AspectBackground; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson".}


