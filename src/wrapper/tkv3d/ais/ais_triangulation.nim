##  Created on: 2009-12-10
##  Created by: Paul SUPRYATKIN
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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
type
  HandleAIS_Triangulation* = Handle[AIS_Triangulation]

## ! Interactive object that draws data from  Poly_Triangulation, optionally with colors associated
## ! with each triangulation vertex. For maximum efficiency colors are represented as 32-bit integers
## ! instead of classic Quantity_Color values.
## ! Interactive selection of triangles and vertices is not yet implemented.

type
  AIS_Triangulation* {.importcpp: "AIS_Triangulation",
                      header: "AIS_Triangulation.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                           ## !
                                                                                           ## Constructs
                                                                                           ## the
                                                                                           ## Triangulation
                                                                                           ## display
                                                                                           ## object


proc newAIS_Triangulation*(aTriangulation: Handle[PolyTriangulation]): AIS_Triangulation {.
    cdecl, constructor, importcpp: "AIS_Triangulation(@)", header: "AIS_Triangulation.hxx".}
proc setColors*(this: var AIS_Triangulation; aColor: Handle[TColStdHArray1OfInteger]) {.
    cdecl, importcpp: "SetColors", header: "AIS_Triangulation.hxx".}
proc getColors*(this: AIS_Triangulation): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, cdecl, importcpp: "GetColors", header: "AIS_Triangulation.hxx".}
proc hasVertexColors*(this: AIS_Triangulation): bool {.noSideEffect, cdecl,
    importcpp: "HasVertexColors", header: "AIS_Triangulation.hxx".}
proc setTriangulation*(this: var AIS_Triangulation;
                      aTriangulation: Handle[PolyTriangulation]) {.cdecl,
    importcpp: "SetTriangulation", header: "AIS_Triangulation.hxx".}
proc getTriangulation*(this: AIS_Triangulation): Handle[PolyTriangulation] {.
    noSideEffect, cdecl, importcpp: "GetTriangulation", header: "AIS_Triangulation.hxx".}
proc setTransparency*(this: var AIS_Triangulation; aValue: cfloat = 0.6) {.cdecl,
    importcpp: "SetTransparency", header: "AIS_Triangulation.hxx".}
proc unsetTransparency*(this: var AIS_Triangulation) {.cdecl,
    importcpp: "UnsetTransparency", header: "AIS_Triangulation.hxx".}