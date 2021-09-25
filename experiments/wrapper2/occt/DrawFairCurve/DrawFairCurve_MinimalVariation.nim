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

discard "forward decl of DrawFairCurve_MinimalVariation"
discard "forward decl of DrawFairCurve_MinimalVariation"
type
  HandleDrawFairCurveMinimalVariation* = Handle[DrawFairCurveMinimalVariation]

## ! Interactive Draw object of type "MVC"

type
  DrawFairCurveMinimalVariation* {.importcpp: "DrawFairCurve_MinimalVariation",
                                  header: "DrawFairCurve_MinimalVariation.hxx",
                                  bycopy.} = object of DrawFairCurveBatten


proc constructDrawFairCurveMinimalVariation*(theMVC: StandardAddress): DrawFairCurveMinimalVariation {.
    constructor, importcpp: "DrawFairCurve_MinimalVariation(@)",
    header: "DrawFairCurve_MinimalVariation.hxx".}
proc setCurvature*(this: var DrawFairCurveMinimalVariation; side: int; rho: float) {.
    importcpp: "SetCurvature", header: "DrawFairCurve_MinimalVariation.hxx".}
proc setPhysicalRatio*(this: var DrawFairCurveMinimalVariation; ratio: float) {.
    importcpp: "SetPhysicalRatio", header: "DrawFairCurve_MinimalVariation.hxx".}
proc getCurvature*(this: DrawFairCurveMinimalVariation; side: int): float {.
    noSideEffect, importcpp: "GetCurvature",
    header: "DrawFairCurve_MinimalVariation.hxx".}
proc getPhysicalRatio*(this: DrawFairCurveMinimalVariation): float {.noSideEffect,
    importcpp: "GetPhysicalRatio", header: "DrawFairCurve_MinimalVariation.hxx".}
proc freeCurvature*(this: var DrawFairCurveMinimalVariation; side: int) {.
    importcpp: "FreeCurvature", header: "DrawFairCurve_MinimalVariation.hxx".}
type
  DrawFairCurveMinimalVariationbaseType* = DrawFairCurveBatten

proc getTypeName*(): cstring {.importcpp: "DrawFairCurve_MinimalVariation::get_type_name(@)",
                            header: "DrawFairCurve_MinimalVariation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawFairCurve_MinimalVariation::get_type_descriptor(@)",
    header: "DrawFairCurve_MinimalVariation.hxx".}
proc dynamicType*(this: DrawFairCurveMinimalVariation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "DrawFairCurve_MinimalVariation.hxx".}
