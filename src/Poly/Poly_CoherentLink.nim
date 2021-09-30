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

discard "forward decl of Poly_CoherentTriangle"
discard "forward decl of Poly_CoherentTriangulation"
type
  PolyCoherentLink* {.importcpp: "Poly_CoherentLink",
                     header: "Poly_CoherentLink.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------
                                                                   ## *
                                                                   ##  Empty constructor.
                                                                   ##
                                                                   ##  ---------- PROTECTED METHODS ----------
                                                                   ##  ---------- PRIVATE FIELDS ----------


proc constructPolyCoherentLink*(): PolyCoherentLink {.constructor,
    importcpp: "Poly_CoherentLink(@)", header: "Poly_CoherentLink.hxx".}
proc constructPolyCoherentLink*(iNode0: cint; iNode1: cint): PolyCoherentLink {.
    constructor, importcpp: "Poly_CoherentLink(@)", header: "Poly_CoherentLink.hxx".}
proc constructPolyCoherentLink*(theTri: PolyCoherentTriangle; iSide: cint): PolyCoherentLink {.
    constructor, importcpp: "Poly_CoherentLink(@)", header: "Poly_CoherentLink.hxx".}
proc node*(this: PolyCoherentLink; ind: cint): cint {.noSideEffect, importcpp: "Node",
    header: "Poly_CoherentLink.hxx".}
proc oppositeNode*(this: PolyCoherentLink; ind: cint): cint {.noSideEffect,
    importcpp: "OppositeNode", header: "Poly_CoherentLink.hxx".}
proc getAttribute*(this: PolyCoherentLink): StandardAddress {.noSideEffect,
    importcpp: "GetAttribute", header: "Poly_CoherentLink.hxx".}
proc setAttribute*(this: var PolyCoherentLink; theAtt: StandardAddress) {.
    importcpp: "SetAttribute", header: "Poly_CoherentLink.hxx".}
proc isEmpty*(this: PolyCoherentLink): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "Poly_CoherentLink.hxx".}
proc nullify*(this: var PolyCoherentLink) {.importcpp: "Nullify",
                                        header: "Poly_CoherentLink.hxx".}

























