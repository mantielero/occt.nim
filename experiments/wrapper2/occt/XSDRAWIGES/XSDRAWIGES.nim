##  Created on: 1995-03-15
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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

## ! XSDRAW for IGES : commands IGESSelect, Controller, transfer

type
  Xsdrawiges* {.importcpp: "XSDRAWIGES", header: "XSDRAWIGES.hxx", bycopy.} = object ## !
                                                                             ## Inits
                                                                             ## IGESSelect
                                                                             ## commands, for
                                                                             ## DRAW


proc initSelect*() {.importcpp: "XSDRAWIGES::InitSelect(@)",
                   header: "XSDRAWIGES.hxx".}
proc initToBRep*(theCommands: var DrawInterpretor) {.
    importcpp: "XSDRAWIGES::InitToBRep(@)", header: "XSDRAWIGES.hxx".}
proc initFromBRep*(theCommands: var DrawInterpretor) {.
    importcpp: "XSDRAWIGES::InitFromBRep(@)", header: "XSDRAWIGES.hxx".}

























