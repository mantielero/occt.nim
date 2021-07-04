##  Created on: 2007-11-24
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

discard "forward decl of Poly_CoherentTrianguation"
discard "forward decl of Poly_CoherentLink"
type
  Poly_CoherentTriangle* {.importcpp: "Poly_CoherentTriangle",
                          header: "Poly_CoherentTriangle.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------
                                                                            ## *
                                                                            ##  Empty constructor.
                                                                            ##
                                                                            ##  ---------- PROTECTED METHODS ----------
                                                                            ##  ---------- PRIVATE FIELDS ----------


proc constructPoly_CoherentTriangle*(): Poly_CoherentTriangle {.constructor,
    importcpp: "Poly_CoherentTriangle(@)", header: "Poly_CoherentTriangle.hxx".}
proc constructPoly_CoherentTriangle*(iNode0: Standard_Integer;
                                    iNode1: Standard_Integer;
                                    iNode2: Standard_Integer): Poly_CoherentTriangle {.
    constructor, importcpp: "Poly_CoherentTriangle(@)",
    header: "Poly_CoherentTriangle.hxx".}
proc Node*(this: Poly_CoherentTriangle; ind: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Node", header: "Poly_CoherentTriangle.hxx".}
proc IsEmpty*(this: Poly_CoherentTriangle): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Poly_CoherentTriangle.hxx".}
proc SetConnection*(this: var Poly_CoherentTriangle; iConn: Standard_Integer;
                   theTr: var Poly_CoherentTriangle): Standard_Boolean {.
    importcpp: "SetConnection", header: "Poly_CoherentTriangle.hxx".}
proc SetConnection*(this: var Poly_CoherentTriangle;
                   theTri: var Poly_CoherentTriangle): Standard_Boolean {.
    importcpp: "SetConnection", header: "Poly_CoherentTriangle.hxx".}
proc RemoveConnection*(this: var Poly_CoherentTriangle; iConn: Standard_Integer) {.
    importcpp: "RemoveConnection", header: "Poly_CoherentTriangle.hxx".}
proc RemoveConnection*(this: var Poly_CoherentTriangle;
                      theTri: var Poly_CoherentTriangle): Standard_Boolean {.
    importcpp: "RemoveConnection", header: "Poly_CoherentTriangle.hxx".}
proc NConnections*(this: Poly_CoherentTriangle): Standard_Integer {.noSideEffect,
    importcpp: "NConnections", header: "Poly_CoherentTriangle.hxx".}
proc GetConnectedNode*(this: Poly_CoherentTriangle; iConn: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetConnectedNode",
    header: "Poly_CoherentTriangle.hxx".}
proc GetConnectedTri*(this: Poly_CoherentTriangle; iConn: Standard_Integer): ptr Poly_CoherentTriangle {.
    noSideEffect, importcpp: "GetConnectedTri", header: "Poly_CoherentTriangle.hxx".}
proc GetLink*(this: Poly_CoherentTriangle; iLink: Standard_Integer): ptr Poly_CoherentLink {.
    noSideEffect, importcpp: "GetLink", header: "Poly_CoherentTriangle.hxx".}
proc FindConnection*(this: Poly_CoherentTriangle; a2: Poly_CoherentTriangle): Standard_Integer {.
    noSideEffect, importcpp: "FindConnection", header: "Poly_CoherentTriangle.hxx".}