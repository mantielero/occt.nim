##  Created on: 1996-02-16
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Address,
  ../DrawTrSurf/DrawTrSurf_BSplineCurve2d, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

discard "forward decl of gp_Pnt2d"
discard "forward decl of DrawFairCurve_Batten"
discard "forward decl of DrawFairCurve_Batten"
type
  Handle_DrawFairCurve_Batten* = handle[DrawFairCurve_Batten]

## ! Interactive Draw object of type "Batten"

type
  DrawFairCurve_Batten* {.importcpp: "DrawFairCurve_Batten",
                         header: "DrawFairCurve_Batten.hxx", bycopy.} = object of DrawTrSurf_BSplineCurve2d


proc constructDrawFairCurve_Batten*(TheBatten: Standard_Address): DrawFairCurve_Batten {.
    constructor, importcpp: "DrawFairCurve_Batten(@)",
    header: "DrawFairCurve_Batten.hxx".}
proc Compute*(this: var DrawFairCurve_Batten) {.importcpp: "Compute",
    header: "DrawFairCurve_Batten.hxx".}
proc SetPoint*(this: var DrawFairCurve_Batten; Side: Standard_Integer; Point: gp_Pnt2d) {.
    importcpp: "SetPoint", header: "DrawFairCurve_Batten.hxx".}
proc SetAngle*(this: var DrawFairCurve_Batten; Side: Standard_Integer;
              Angle: Standard_Real) {.importcpp: "SetAngle",
                                    header: "DrawFairCurve_Batten.hxx".}
proc SetSliding*(this: var DrawFairCurve_Batten; Length: Standard_Real) {.
    importcpp: "SetSliding", header: "DrawFairCurve_Batten.hxx".}
proc SetHeight*(this: var DrawFairCurve_Batten; Heigth: Standard_Real) {.
    importcpp: "SetHeight", header: "DrawFairCurve_Batten.hxx".}
proc SetSlope*(this: var DrawFairCurve_Batten; Slope: Standard_Real) {.
    importcpp: "SetSlope", header: "DrawFairCurve_Batten.hxx".}
proc GetAngle*(this: DrawFairCurve_Batten; Side: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GetAngle", header: "DrawFairCurve_Batten.hxx".}
proc GetSliding*(this: DrawFairCurve_Batten): Standard_Real {.noSideEffect,
    importcpp: "GetSliding", header: "DrawFairCurve_Batten.hxx".}
proc FreeSliding*(this: var DrawFairCurve_Batten) {.importcpp: "FreeSliding",
    header: "DrawFairCurve_Batten.hxx".}
proc FreeAngle*(this: var DrawFairCurve_Batten; Side: Standard_Integer) {.
    importcpp: "FreeAngle", header: "DrawFairCurve_Batten.hxx".}
proc Dump*(this: DrawFairCurve_Batten; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawFairCurve_Batten.hxx".}
type
  DrawFairCurve_Battenbase_type* = DrawTrSurf_BSplineCurve2d

proc get_type_name*(): cstring {.importcpp: "DrawFairCurve_Batten::get_type_name(@)",
                              header: "DrawFairCurve_Batten.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawFairCurve_Batten::get_type_descriptor(@)",
    header: "DrawFairCurve_Batten.hxx".}
proc DynamicType*(this: DrawFairCurve_Batten): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawFairCurve_Batten.hxx".}