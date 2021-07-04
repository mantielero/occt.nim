##  Created on: 1996-04-12
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
  ../Standard/Standard, ../Standard/Standard_Type, DrawFairCurve_Batten,
  ../Standard/Standard_Address, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

discard "forward decl of DrawFairCurve_MinimalVariation"
discard "forward decl of DrawFairCurve_MinimalVariation"
type
  Handle_DrawFairCurve_MinimalVariation* = handle[DrawFairCurve_MinimalVariation]

## ! Interactive Draw object of type "MVC"

type
  DrawFairCurve_MinimalVariation* {.importcpp: "DrawFairCurve_MinimalVariation", header: "DrawFairCurve_MinimalVariation.hxx",
                                   bycopy.} = object of DrawFairCurve_Batten


proc constructDrawFairCurve_MinimalVariation*(TheMVC: Standard_Address): DrawFairCurve_MinimalVariation {.
    constructor, importcpp: "DrawFairCurve_MinimalVariation(@)",
    header: "DrawFairCurve_MinimalVariation.hxx".}
proc SetCurvature*(this: var DrawFairCurve_MinimalVariation; Side: Standard_Integer;
                  Rho: Standard_Real) {.importcpp: "SetCurvature", header: "DrawFairCurve_MinimalVariation.hxx".}
proc SetPhysicalRatio*(this: var DrawFairCurve_MinimalVariation;
                      Ratio: Standard_Real) {.importcpp: "SetPhysicalRatio",
    header: "DrawFairCurve_MinimalVariation.hxx".}
proc GetCurvature*(this: DrawFairCurve_MinimalVariation; Side: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GetCurvature",
    header: "DrawFairCurve_MinimalVariation.hxx".}
proc GetPhysicalRatio*(this: DrawFairCurve_MinimalVariation): Standard_Real {.
    noSideEffect, importcpp: "GetPhysicalRatio",
    header: "DrawFairCurve_MinimalVariation.hxx".}
proc FreeCurvature*(this: var DrawFairCurve_MinimalVariation; Side: Standard_Integer) {.
    importcpp: "FreeCurvature", header: "DrawFairCurve_MinimalVariation.hxx".}
type
  DrawFairCurve_MinimalVariationbase_type* = DrawFairCurve_Batten

proc get_type_name*(): cstring {.importcpp: "DrawFairCurve_MinimalVariation::get_type_name(@)",
                              header: "DrawFairCurve_MinimalVariation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawFairCurve_MinimalVariation::get_type_descriptor(@)",
    header: "DrawFairCurve_MinimalVariation.hxx".}
proc DynamicType*(this: DrawFairCurve_MinimalVariation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "DrawFairCurve_MinimalVariation.hxx".}