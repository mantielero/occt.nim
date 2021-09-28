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

discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_CompositeCurveSegment"
discard "forward decl of StepGeom_CompositeCurveSegment"
type
  HandleC1C1* = Handle[StepGeomCompositeCurveSegment]
  StepGeomCompositeCurveSegment* {.importcpp: "StepGeom_CompositeCurveSegment",
                                  header: "StepGeom_CompositeCurveSegment.hxx",
                                  bycopy.} = object of StandardTransient ## ! Returns a
                                                                    ## CompositeCurveSegment


proc constructStepGeomCompositeCurveSegment*(): StepGeomCompositeCurveSegment {.
    constructor, importcpp: "StepGeom_CompositeCurveSegment(@)",
    header: "StepGeom_CompositeCurveSegment.hxx".}
proc init*(this: var StepGeomCompositeCurveSegment;
          aTransition: StepGeomTransitionCode; aSameSense: bool;
          aParentCurve: Handle[StepGeomCurve]) {.importcpp: "Init",
    header: "StepGeom_CompositeCurveSegment.hxx".}
proc setTransition*(this: var StepGeomCompositeCurveSegment;
                   aTransition: StepGeomTransitionCode) {.
    importcpp: "SetTransition", header: "StepGeom_CompositeCurveSegment.hxx".}
proc transition*(this: StepGeomCompositeCurveSegment): StepGeomTransitionCode {.
    noSideEffect, importcpp: "Transition",
    header: "StepGeom_CompositeCurveSegment.hxx".}
proc setSameSense*(this: var StepGeomCompositeCurveSegment; aSameSense: bool) {.
    importcpp: "SetSameSense", header: "StepGeom_CompositeCurveSegment.hxx".}
proc sameSense*(this: StepGeomCompositeCurveSegment): bool {.noSideEffect,
    importcpp: "SameSense", header: "StepGeom_CompositeCurveSegment.hxx".}
proc setParentCurve*(this: var StepGeomCompositeCurveSegment;
                    aParentCurve: Handle[StepGeomCurve]) {.
    importcpp: "SetParentCurve", header: "StepGeom_CompositeCurveSegment.hxx".}
proc parentCurve*(this: StepGeomCompositeCurveSegment): Handle[StepGeomCurve] {.
    noSideEffect, importcpp: "ParentCurve",
    header: "StepGeom_CompositeCurveSegment.hxx".}
type
  StepGeomCompositeCurveSegmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepGeom_CompositeCurveSegment::get_type_name(@)",
                            header: "StepGeom_CompositeCurveSegment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_CompositeCurveSegment::get_type_descriptor(@)",
    header: "StepGeom_CompositeCurveSegment.hxx".}
proc dynamicType*(this: StepGeomCompositeCurveSegment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_CompositeCurveSegment.hxx".}

























