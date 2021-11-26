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
type
  PolyCoherentTriangle* {.importcpp: "Poly_CoherentTriangle",
                         header: "Poly_CoherentTriangle.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------
                                                                           ## *
                                                                           ##  Empty constructor.
                                                                           ##
                                                                           ##  ---------- PROTECTED METHODS ----------
                                                                           ##  ---------- PRIVATE FIELDS ----------


proc newPolyCoherentTriangle*(): PolyCoherentTriangle {.cdecl, constructor,
    importcpp: "Poly_CoherentTriangle(@)", dynlib: tkmath.}
proc newPolyCoherentTriangle*(iNode0: cint; iNode1: cint; iNode2: cint): PolyCoherentTriangle {.
    cdecl, constructor, importcpp: "Poly_CoherentTriangle(@)", dynlib: tkmath.}
proc node*(this: PolyCoherentTriangle; ind: cint): cint {.noSideEffect, cdecl,
    importcpp: "Node", dynlib: tkmath.}
proc isEmpty*(this: PolyCoherentTriangle): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkmath.}
proc setConnection*(this: var PolyCoherentTriangle; iConn: cint;
                   theTr: var PolyCoherentTriangle): bool {.cdecl,
    importcpp: "SetConnection", dynlib: tkmath.}
proc setConnection*(this: var PolyCoherentTriangle; theTri: var PolyCoherentTriangle): bool {.
    cdecl, importcpp: "SetConnection", dynlib: tkmath.}
proc removeConnection*(this: var PolyCoherentTriangle; iConn: cint) {.cdecl,
    importcpp: "RemoveConnection", dynlib: tkmath.}
proc removeConnection*(this: var PolyCoherentTriangle;
                      theTri: var PolyCoherentTriangle): bool {.cdecl,
    importcpp: "RemoveConnection", dynlib: tkmath.}
proc nConnections*(this: PolyCoherentTriangle): cint {.noSideEffect, cdecl,
    importcpp: "NConnections", dynlib: tkmath.}
proc getConnectedNode*(this: PolyCoherentTriangle; iConn: cint): cint {.noSideEffect,
    cdecl, importcpp: "GetConnectedNode", dynlib: tkmath.}
proc getConnectedTri*(this: PolyCoherentTriangle; iConn: cint): ptr PolyCoherentTriangle {.
    noSideEffect, cdecl, importcpp: "GetConnectedTri", dynlib: tkmath.}
proc getLink*(this: PolyCoherentTriangle; iLink: cint): ptr PolyCoherentLink {.
    noSideEffect, cdecl, importcpp: "GetLink", dynlib: tkmath.}
proc findConnection*(this: PolyCoherentTriangle; a2: PolyCoherentTriangle): cint {.
    noSideEffect, cdecl, importcpp: "FindConnection", dynlib: tkmath.}