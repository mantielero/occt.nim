import poly_types

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

discard "forward decl of Poly_CoherentTrianguation"
discard "forward decl of Poly_CoherentLink"


proc newPolyCoherentTriangle*(): PolyCoherentTriangle {.cdecl, constructor,
    importcpp: "Poly_CoherentTriangle(@)", header: "Poly_CoherentTriangle.hxx".}
proc newPolyCoherentTriangle*(iNode0: cint; iNode1: cint; iNode2: cint): PolyCoherentTriangle {.
    cdecl, constructor, importcpp: "Poly_CoherentTriangle(@)", header: "Poly_CoherentTriangle.hxx".}
proc node*(this: PolyCoherentTriangle; ind: cint): cint {.noSideEffect, cdecl,
    importcpp: "Node", header: "Poly_CoherentTriangle.hxx".}
proc isEmpty*(this: PolyCoherentTriangle): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "Poly_CoherentTriangle.hxx".}
proc setConnection*(this: var PolyCoherentTriangle; iConn: cint;
                   theTr: var PolyCoherentTriangle): bool {.cdecl,
    importcpp: "SetConnection", header: "Poly_CoherentTriangle.hxx".}
proc setConnection*(this: var PolyCoherentTriangle; theTri: var PolyCoherentTriangle): bool {.
    cdecl, importcpp: "SetConnection", header: "Poly_CoherentTriangle.hxx".}
proc removeConnection*(this: var PolyCoherentTriangle; iConn: cint) {.cdecl,
    importcpp: "RemoveConnection", header: "Poly_CoherentTriangle.hxx".}
proc removeConnection*(this: var PolyCoherentTriangle;
                      theTri: var PolyCoherentTriangle): bool {.cdecl,
    importcpp: "RemoveConnection", header: "Poly_CoherentTriangle.hxx".}
proc nConnections*(this: PolyCoherentTriangle): cint {.noSideEffect, cdecl,
    importcpp: "NConnections", header: "Poly_CoherentTriangle.hxx".}
proc getConnectedNode*(this: PolyCoherentTriangle; iConn: cint): cint {.noSideEffect,
    cdecl, importcpp: "GetConnectedNode", header: "Poly_CoherentTriangle.hxx".}
proc getConnectedTri*(this: PolyCoherentTriangle; iConn: cint): ptr PolyCoherentTriangle {.
    noSideEffect, cdecl, importcpp: "GetConnectedTri", header: "Poly_CoherentTriangle.hxx".}
proc getLink*(this: PolyCoherentTriangle; iLink: cint): ptr PolyCoherentLink {.
    noSideEffect, cdecl, importcpp: "GetLink", header: "Poly_CoherentTriangle.hxx".}
proc findConnection*(this: PolyCoherentTriangle; a2: PolyCoherentTriangle): cint {.
    noSideEffect, cdecl, importcpp: "FindConnection", header: "Poly_CoherentTriangle.hxx".}
