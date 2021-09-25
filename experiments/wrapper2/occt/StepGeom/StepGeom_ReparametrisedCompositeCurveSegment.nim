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
discard "forward decl of StepGeom_ReparametrisedCompositeCurveSegment"
discard "forward decl of StepGeom_ReparametrisedCompositeCurveSegment"
type
  HandleStepGeomReparametrisedCompositeCurveSegment* = Handle[
      StepGeomReparametrisedCompositeCurveSegment]
  StepGeomReparametrisedCompositeCurveSegment* {.
      importcpp: "StepGeom_ReparametrisedCompositeCurveSegment",
      header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx", bycopy.} = object of StepGeomCompositeCurveSegment ##
                                                                                                              ## !
                                                                                                              ## Returns
                                                                                                              ## a
                                                                                                              ## ReparametrisedCompositeCurveSegment


proc constructStepGeomReparametrisedCompositeCurveSegment*(): StepGeomReparametrisedCompositeCurveSegment {.
    constructor, importcpp: "StepGeom_ReparametrisedCompositeCurveSegment(@)",
    header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
proc init*(this: var StepGeomReparametrisedCompositeCurveSegment;
          aTransition: StepGeomTransitionCode; aSameSense: bool;
          aParentCurve: Handle[StepGeomCurve]; aParamLength: float) {.
    importcpp: "Init", header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
proc setParamLength*(this: var StepGeomReparametrisedCompositeCurveSegment;
                    aParamLength: float) {.importcpp: "SetParamLength",
    header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
proc paramLength*(this: StepGeomReparametrisedCompositeCurveSegment): float {.
    noSideEffect, importcpp: "ParamLength",
    header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
type
  StepGeomReparametrisedCompositeCurveSegmentbaseType* = StepGeomCompositeCurveSegment

proc getTypeName*(): cstring {.importcpp: "StepGeom_ReparametrisedCompositeCurveSegment::get_type_name(@)", header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_ReparametrisedCompositeCurveSegment::get_type_descriptor(@)",
    header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
proc dynamicType*(this: StepGeomReparametrisedCompositeCurveSegment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
