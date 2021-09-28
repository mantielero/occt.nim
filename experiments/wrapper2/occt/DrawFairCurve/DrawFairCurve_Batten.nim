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

discard "forward decl of gp_Pnt2d"
discard "forward decl of DrawFairCurve_Batten"
discard "forward decl of DrawFairCurve_Batten"
type
  HandleC1C1* = Handle[DrawFairCurveBatten]

## ! Interactive Draw object of type "Batten"

type
  DrawFairCurveBatten* {.importcpp: "DrawFairCurve_Batten",
                        header: "DrawFairCurve_Batten.hxx", bycopy.} = object of DrawTrSurfBSplineCurve2d


proc constructDrawFairCurveBatten*(theBatten: StandardAddress): DrawFairCurveBatten {.
    constructor, importcpp: "DrawFairCurve_Batten(@)",
    header: "DrawFairCurve_Batten.hxx".}
proc compute*(this: var DrawFairCurveBatten) {.importcpp: "Compute",
    header: "DrawFairCurve_Batten.hxx".}
proc setPoint*(this: var DrawFairCurveBatten; side: cint; point: Pnt2d) {.
    importcpp: "SetPoint", header: "DrawFairCurve_Batten.hxx".}
proc setAngle*(this: var DrawFairCurveBatten; side: cint; angle: cfloat) {.
    importcpp: "SetAngle", header: "DrawFairCurve_Batten.hxx".}
proc setSliding*(this: var DrawFairCurveBatten; length: cfloat) {.
    importcpp: "SetSliding", header: "DrawFairCurve_Batten.hxx".}
proc setHeight*(this: var DrawFairCurveBatten; heigth: cfloat) {.
    importcpp: "SetHeight", header: "DrawFairCurve_Batten.hxx".}
proc setSlope*(this: var DrawFairCurveBatten; slope: cfloat) {.importcpp: "SetSlope",
    header: "DrawFairCurve_Batten.hxx".}
proc getAngle*(this: DrawFairCurveBatten; side: cint): cfloat {.noSideEffect,
    importcpp: "GetAngle", header: "DrawFairCurve_Batten.hxx".}
proc getSliding*(this: DrawFairCurveBatten): cfloat {.noSideEffect,
    importcpp: "GetSliding", header: "DrawFairCurve_Batten.hxx".}
proc freeSliding*(this: var DrawFairCurveBatten) {.importcpp: "FreeSliding",
    header: "DrawFairCurve_Batten.hxx".}
proc freeAngle*(this: var DrawFairCurveBatten; side: cint) {.importcpp: "FreeAngle",
    header: "DrawFairCurve_Batten.hxx".}
proc dump*(this: DrawFairCurveBatten; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawFairCurve_Batten.hxx".}
type
  DrawFairCurveBattenbaseType* = DrawTrSurfBSplineCurve2d

proc getTypeName*(): cstring {.importcpp: "DrawFairCurve_Batten::get_type_name(@)",
                            header: "DrawFairCurve_Batten.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawFairCurve_Batten::get_type_descriptor(@)",
    header: "DrawFairCurve_Batten.hxx".}
proc dynamicType*(this: DrawFairCurveBatten): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawFairCurve_Batten.hxx".}

























