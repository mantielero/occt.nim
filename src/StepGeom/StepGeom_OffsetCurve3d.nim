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
discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_OffsetCurve3d"
discard "forward decl of StepGeom_OffsetCurve3d"
type
  HandleC1C1* = Handle[StepGeomOffsetCurve3d]
  StepGeomOffsetCurve3d* {.importcpp: "StepGeom_OffsetCurve3d",
                          header: "StepGeom_OffsetCurve3d.hxx", bycopy.} = object of StepGeomCurve ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## OffsetCurve3d


proc constructStepGeomOffsetCurve3d*(): StepGeomOffsetCurve3d {.constructor,
    importcpp: "StepGeom_OffsetCurve3d(@)", header: "StepGeom_OffsetCurve3d.hxx".}
proc init*(this: var StepGeomOffsetCurve3d; aName: Handle[TCollectionHAsciiString];
          aBasisCurve: Handle[StepGeomCurve]; aDistance: StandardReal;
          aSelfIntersect: StepDataLogical;
          aRefDirection: Handle[StepGeomDirection]) {.importcpp: "Init",
    header: "StepGeom_OffsetCurve3d.hxx".}
proc setBasisCurve*(this: var StepGeomOffsetCurve3d;
                   aBasisCurve: Handle[StepGeomCurve]) {.
    importcpp: "SetBasisCurve", header: "StepGeom_OffsetCurve3d.hxx".}
proc basisCurve*(this: StepGeomOffsetCurve3d): Handle[StepGeomCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "StepGeom_OffsetCurve3d.hxx".}
proc setDistance*(this: var StepGeomOffsetCurve3d; aDistance: StandardReal) {.
    importcpp: "SetDistance", header: "StepGeom_OffsetCurve3d.hxx".}
proc distance*(this: StepGeomOffsetCurve3d): StandardReal {.noSideEffect,
    importcpp: "Distance", header: "StepGeom_OffsetCurve3d.hxx".}
proc setSelfIntersect*(this: var StepGeomOffsetCurve3d;
                      aSelfIntersect: StepDataLogical) {.
    importcpp: "SetSelfIntersect", header: "StepGeom_OffsetCurve3d.hxx".}
proc selfIntersect*(this: StepGeomOffsetCurve3d): StepDataLogical {.noSideEffect,
    importcpp: "SelfIntersect", header: "StepGeom_OffsetCurve3d.hxx".}
proc setRefDirection*(this: var StepGeomOffsetCurve3d;
                     aRefDirection: Handle[StepGeomDirection]) {.
    importcpp: "SetRefDirection", header: "StepGeom_OffsetCurve3d.hxx".}
proc refDirection*(this: StepGeomOffsetCurve3d): Handle[StepGeomDirection] {.
    noSideEffect, importcpp: "RefDirection", header: "StepGeom_OffsetCurve3d.hxx".}
type
  StepGeomOffsetCurve3dbaseType* = StepGeomCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_OffsetCurve3d::get_type_name(@)",
                            header: "StepGeom_OffsetCurve3d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_OffsetCurve3d::get_type_descriptor(@)",
    header: "StepGeom_OffsetCurve3d.hxx".}
proc dynamicType*(this: StepGeomOffsetCurve3d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_OffsetCurve3d.hxx".}