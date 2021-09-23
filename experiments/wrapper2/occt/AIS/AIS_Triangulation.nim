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

import
  ../TColStd/TColStd_HArray1OfInteger, AIS_InteractiveObject

discard "forward decl of Poly_Triangulation"
discard "forward decl of AIS_Triangulation"
type
  Handle_AIS_Triangulation* = handle[AIS_Triangulation]

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

  AIS_Triangulationbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_Triangulation::get_type_name(@)",
                              header: "AIS_Triangulation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_Triangulation::get_type_descriptor(@)",
    header: "AIS_Triangulation.hxx".}
proc DynamicType*(this: AIS_Triangulation): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Triangulation.hxx".}
proc constructAIS_Triangulation*(aTriangulation: handle[Poly_Triangulation]): AIS_Triangulation {.
    constructor, importcpp: "AIS_Triangulation(@)", header: "AIS_Triangulation.hxx".}
proc SetColors*(this: var AIS_Triangulation;
               aColor: handle[TColStd_HArray1OfInteger]) {.importcpp: "SetColors",
    header: "AIS_Triangulation.hxx".}
proc GetColors*(this: AIS_Triangulation): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "GetColors", header: "AIS_Triangulation.hxx".}
proc HasVertexColors*(this: AIS_Triangulation): Standard_Boolean {.noSideEffect,
    importcpp: "HasVertexColors", header: "AIS_Triangulation.hxx".}
proc SetTriangulation*(this: var AIS_Triangulation;
                      aTriangulation: handle[Poly_Triangulation]) {.
    importcpp: "SetTriangulation", header: "AIS_Triangulation.hxx".}
proc GetTriangulation*(this: AIS_Triangulation): handle[Poly_Triangulation] {.
    noSideEffect, importcpp: "GetTriangulation", header: "AIS_Triangulation.hxx".}
proc SetTransparency*(this: var AIS_Triangulation; aValue: Standard_Real = 0.6) {.
    importcpp: "SetTransparency", header: "AIS_Triangulation.hxx".}
proc UnsetTransparency*(this: var AIS_Triangulation) {.
    importcpp: "UnsetTransparency", header: "AIS_Triangulation.hxx".}