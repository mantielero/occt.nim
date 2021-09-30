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
discard "forward decl of StepGeom_BSplineSurface"
discard "forward decl of StepGeom_BSplineSurface"
type
  HandleC1C1* = Handle[StepGeomBSplineSurface]
  StepGeomBSplineSurface* {.importcpp: "StepGeom_BSplineSurface",
                           header: "StepGeom_BSplineSurface.hxx", bycopy.} = object of StepGeomBoundedSurface ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## BSplineSurface


proc constructStepGeomBSplineSurface*(): StepGeomBSplineSurface {.constructor,
    importcpp: "StepGeom_BSplineSurface(@)", header: "StepGeom_BSplineSurface.hxx".}
proc init*(this: var StepGeomBSplineSurface; aName: Handle[TCollectionHAsciiString];
          aUDegree: cint; aVDegree: cint;
          aControlPointsList: Handle[StepGeomHArray2OfCartesianPoint];
          aSurfaceForm: StepGeomBSplineSurfaceForm; aUClosed: StepDataLogical;
          aVClosed: StepDataLogical; aSelfIntersect: StepDataLogical) {.
    importcpp: "Init", header: "StepGeom_BSplineSurface.hxx".}
proc setUDegree*(this: var StepGeomBSplineSurface; aUDegree: cint) {.
    importcpp: "SetUDegree", header: "StepGeom_BSplineSurface.hxx".}
proc uDegree*(this: StepGeomBSplineSurface): cint {.noSideEffect,
    importcpp: "UDegree", header: "StepGeom_BSplineSurface.hxx".}
proc setVDegree*(this: var StepGeomBSplineSurface; aVDegree: cint) {.
    importcpp: "SetVDegree", header: "StepGeom_BSplineSurface.hxx".}
proc vDegree*(this: StepGeomBSplineSurface): cint {.noSideEffect,
    importcpp: "VDegree", header: "StepGeom_BSplineSurface.hxx".}
proc setControlPointsList*(this: var StepGeomBSplineSurface; aControlPointsList: Handle[
    StepGeomHArray2OfCartesianPoint]) {.importcpp: "SetControlPointsList",
                                       header: "StepGeom_BSplineSurface.hxx".}
proc controlPointsList*(this: StepGeomBSplineSurface): Handle[
    StepGeomHArray2OfCartesianPoint] {.noSideEffect,
                                      importcpp: "ControlPointsList",
                                      header: "StepGeom_BSplineSurface.hxx".}
proc controlPointsListValue*(this: StepGeomBSplineSurface; num1: cint; num2: cint): Handle[
    StepGeomCartesianPoint] {.noSideEffect, importcpp: "ControlPointsListValue",
                             header: "StepGeom_BSplineSurface.hxx".}
proc nbControlPointsListI*(this: StepGeomBSplineSurface): cint {.noSideEffect,
    importcpp: "NbControlPointsListI", header: "StepGeom_BSplineSurface.hxx".}
proc nbControlPointsListJ*(this: StepGeomBSplineSurface): cint {.noSideEffect,
    importcpp: "NbControlPointsListJ", header: "StepGeom_BSplineSurface.hxx".}
proc setSurfaceForm*(this: var StepGeomBSplineSurface;
                    aSurfaceForm: StepGeomBSplineSurfaceForm) {.
    importcpp: "SetSurfaceForm", header: "StepGeom_BSplineSurface.hxx".}
proc surfaceForm*(this: StepGeomBSplineSurface): StepGeomBSplineSurfaceForm {.
    noSideEffect, importcpp: "SurfaceForm", header: "StepGeom_BSplineSurface.hxx".}
proc setUClosed*(this: var StepGeomBSplineSurface; aUClosed: StepDataLogical) {.
    importcpp: "SetUClosed", header: "StepGeom_BSplineSurface.hxx".}
proc uClosed*(this: StepGeomBSplineSurface): StepDataLogical {.noSideEffect,
    importcpp: "UClosed", header: "StepGeom_BSplineSurface.hxx".}
proc setVClosed*(this: var StepGeomBSplineSurface; aVClosed: StepDataLogical) {.
    importcpp: "SetVClosed", header: "StepGeom_BSplineSurface.hxx".}
proc vClosed*(this: StepGeomBSplineSurface): StepDataLogical {.noSideEffect,
    importcpp: "VClosed", header: "StepGeom_BSplineSurface.hxx".}
proc setSelfIntersect*(this: var StepGeomBSplineSurface;
                      aSelfIntersect: StepDataLogical) {.
    importcpp: "SetSelfIntersect", header: "StepGeom_BSplineSurface.hxx".}
proc selfIntersect*(this: StepGeomBSplineSurface): StepDataLogical {.noSideEffect,
    importcpp: "SelfIntersect", header: "StepGeom_BSplineSurface.hxx".}
type
  StepGeomBSplineSurfacebaseType* = StepGeomBoundedSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_BSplineSurface::get_type_name(@)",
                            header: "StepGeom_BSplineSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_BSplineSurface::get_type_descriptor(@)",
    header: "StepGeom_BSplineSurface.hxx".}
proc dynamicType*(this: StepGeomBSplineSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_BSplineSurface.hxx".}

























