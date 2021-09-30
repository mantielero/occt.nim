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
discard "forward decl of StepGeom_CompositeCurveSegment"
discard "forward decl of StepGeom_CompositeCurve"
discard "forward decl of StepGeom_CompositeCurve"
type
  HandleC1C1* = Handle[StepGeomCompositeCurve]
  StepGeomCompositeCurve* {.importcpp: "StepGeom_CompositeCurve",
                           header: "StepGeom_CompositeCurve.hxx", bycopy.} = object of StepGeomBoundedCurve ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## CompositeCurve


proc constructStepGeomCompositeCurve*(): StepGeomCompositeCurve {.constructor,
    importcpp: "StepGeom_CompositeCurve(@)", header: "StepGeom_CompositeCurve.hxx".}
proc init*(this: var StepGeomCompositeCurve; aName: Handle[TCollectionHAsciiString];
          aSegments: Handle[StepGeomHArray1OfCompositeCurveSegment];
          aSelfIntersect: StepDataLogical) {.importcpp: "Init",
    header: "StepGeom_CompositeCurve.hxx".}
proc setSegments*(this: var StepGeomCompositeCurve;
                 aSegments: Handle[StepGeomHArray1OfCompositeCurveSegment]) {.
    importcpp: "SetSegments", header: "StepGeom_CompositeCurve.hxx".}
proc segments*(this: StepGeomCompositeCurve): Handle[
    StepGeomHArray1OfCompositeCurveSegment] {.noSideEffect, importcpp: "Segments",
    header: "StepGeom_CompositeCurve.hxx".}
proc segmentsValue*(this: StepGeomCompositeCurve; num: cint): Handle[
    StepGeomCompositeCurveSegment] {.noSideEffect, importcpp: "SegmentsValue",
                                    header: "StepGeom_CompositeCurve.hxx".}
proc nbSegments*(this: StepGeomCompositeCurve): cint {.noSideEffect,
    importcpp: "NbSegments", header: "StepGeom_CompositeCurve.hxx".}
proc setSelfIntersect*(this: var StepGeomCompositeCurve;
                      aSelfIntersect: StepDataLogical) {.
    importcpp: "SetSelfIntersect", header: "StepGeom_CompositeCurve.hxx".}
proc selfIntersect*(this: StepGeomCompositeCurve): StepDataLogical {.noSideEffect,
    importcpp: "SelfIntersect", header: "StepGeom_CompositeCurve.hxx".}
type
  StepGeomCompositeCurvebaseType* = StepGeomBoundedCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_CompositeCurve::get_type_name(@)",
                            header: "StepGeom_CompositeCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_CompositeCurve::get_type_descriptor(@)",
    header: "StepGeom_CompositeCurve.hxx".}
proc dynamicType*(this: StepGeomCompositeCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_CompositeCurve.hxx".}

























