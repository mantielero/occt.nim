##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_Polyline"
discard "forward decl of StepGeom_Polyline"
type
  HandleC1C1* = Handle[StepGeomPolyline]
  StepGeomPolyline* {.importcpp: "StepGeom_Polyline",
                     header: "StepGeom_Polyline.hxx", bycopy.} = object of StepGeomBoundedCurve ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## a
                                                                                         ## Polyline


proc constructStepGeomPolyline*(): StepGeomPolyline {.constructor,
    importcpp: "StepGeom_Polyline(@)", header: "StepGeom_Polyline.hxx".}
proc init*(this: var StepGeomPolyline; aName: Handle[TCollectionHAsciiString];
          aPoints: Handle[StepGeomHArray1OfCartesianPoint]) {.importcpp: "Init",
    header: "StepGeom_Polyline.hxx".}
proc setPoints*(this: var StepGeomPolyline;
               aPoints: Handle[StepGeomHArray1OfCartesianPoint]) {.
    importcpp: "SetPoints", header: "StepGeom_Polyline.hxx".}
proc points*(this: StepGeomPolyline): Handle[StepGeomHArray1OfCartesianPoint] {.
    noSideEffect, importcpp: "Points", header: "StepGeom_Polyline.hxx".}
proc pointsValue*(this: StepGeomPolyline; num: cint): Handle[StepGeomCartesianPoint] {.
    noSideEffect, importcpp: "PointsValue", header: "StepGeom_Polyline.hxx".}
proc nbPoints*(this: StepGeomPolyline): cint {.noSideEffect, importcpp: "NbPoints",
    header: "StepGeom_Polyline.hxx".}
type
  StepGeomPolylinebaseType* = StepGeomBoundedCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_Polyline::get_type_name(@)",
                            header: "StepGeom_Polyline.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Polyline::get_type_descriptor(@)",
    header: "StepGeom_Polyline.hxx".}
proc dynamicType*(this: StepGeomPolyline): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Polyline.hxx".}

























