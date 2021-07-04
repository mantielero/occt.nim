##  Created on: 2007-12-25
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_TypeDef

discard "forward decl of Poly_CoherentTriangle"
discard "forward decl of Poly_CoherentTriangulation"
type
  Poly_CoherentLink* {.importcpp: "Poly_CoherentLink",
                      header: "Poly_CoherentLink.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------
                                                                    ## *
                                                                    ##  Empty constructor.
                                                                    ##
                                                                    ##  ---------- PROTECTED METHODS ----------
                                                                    ##  ---------- PRIVATE FIELDS ----------


proc constructPoly_CoherentLink*(): Poly_CoherentLink {.constructor,
    importcpp: "Poly_CoherentLink(@)", header: "Poly_CoherentLink.hxx".}
proc constructPoly_CoherentLink*(iNode0: Standard_Integer; iNode1: Standard_Integer): Poly_CoherentLink {.
    constructor, importcpp: "Poly_CoherentLink(@)", header: "Poly_CoherentLink.hxx".}
proc constructPoly_CoherentLink*(theTri: Poly_CoherentTriangle;
                                iSide: Standard_Integer): Poly_CoherentLink {.
    constructor, importcpp: "Poly_CoherentLink(@)", header: "Poly_CoherentLink.hxx".}
proc Node*(this: Poly_CoherentLink; ind: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Node", header: "Poly_CoherentLink.hxx".}
proc OppositeNode*(this: Poly_CoherentLink; ind: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "OppositeNode", header: "Poly_CoherentLink.hxx".}
proc GetAttribute*(this: Poly_CoherentLink): Standard_Address {.noSideEffect,
    importcpp: "GetAttribute", header: "Poly_CoherentLink.hxx".}
proc SetAttribute*(this: var Poly_CoherentLink; theAtt: Standard_Address) {.
    importcpp: "SetAttribute", header: "Poly_CoherentLink.hxx".}
proc IsEmpty*(this: Poly_CoherentLink): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Poly_CoherentLink.hxx".}
proc Nullify*(this: var Poly_CoherentLink) {.importcpp: "Nullify",
    header: "Poly_CoherentLink.hxx".}