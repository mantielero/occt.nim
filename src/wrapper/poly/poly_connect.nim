import poly_types
import ../standard/standard_types
import ../gp/gp_types
import ../ncollection/ncollection_types

##  Created on: 1995-03-06
##  Created by: Laurent PAINNOT
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

discard "forward decl of Poly_Triangulation"


proc newPolyConnect*(): PolyConnect {.cdecl, constructor,
                                   importcpp: "Poly_Connect(@)", header: "Poly_Connect.hxx".}
proc newPolyConnect*(theTriangulation: Handle[PolyTriangulation]): PolyConnect {.
    cdecl, constructor, importcpp: "Poly_Connect(@)", header: "Poly_Connect.hxx".}
proc load*(this: var PolyConnect; theTriangulation: Handle[PolyTriangulation]) {.
    cdecl, importcpp: "Load", header: "Poly_Connect.hxx".}
proc triangulation*(this: PolyConnect): Handle[PolyTriangulation] {.noSideEffect,
    cdecl, importcpp: "Triangulation", header: "Poly_Connect.hxx".}
proc triangle*(this: PolyConnect; n: cint): cint {.noSideEffect, cdecl,
    importcpp: "Triangle", header: "Poly_Connect.hxx".}
proc triangles*(this: PolyConnect; t: cint; t1: var cint; t2: var cint; t3: var cint) {.
    noSideEffect, cdecl, importcpp: "Triangles", header: "Poly_Connect.hxx".}
proc nodes*(this: PolyConnect; t: cint; n1: var cint; n2: var cint; n3: var cint) {.
    noSideEffect, cdecl, importcpp: "Nodes", header: "Poly_Connect.hxx".}
proc initialize*(this: var PolyConnect; n: cint) {.cdecl, importcpp: "Initialize",
    header: "Poly_Connect.hxx".}
proc more*(this: PolyConnect): bool {.noSideEffect, cdecl, importcpp: "More",
                                  header: "Poly_Connect.hxx".}
proc next*(this: var PolyConnect) {.cdecl, importcpp: "Next", header: "Poly_Connect.hxx".}
proc value*(this: PolyConnect): cint {.noSideEffect, cdecl, importcpp: "Value",
                                   header: "Poly_Connect.hxx".}
