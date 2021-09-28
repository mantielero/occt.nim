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
discard "forward decl of StepGeom_CartesianPoint"
type
  HandleC1C1* = Handle[StepGeomCartesianPoint]
  StepGeomCartesianPoint* {.importcpp: "StepGeom_CartesianPoint",
                           header: "StepGeom_CartesianPoint.hxx", bycopy.} = object of StepGeomPoint ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## CartesianPoint


proc constructStepGeomCartesianPoint*(): StepGeomCartesianPoint {.constructor,
    importcpp: "StepGeom_CartesianPoint(@)", header: "StepGeom_CartesianPoint.hxx".}
proc init*(this: var StepGeomCartesianPoint; aName: Handle[TCollectionHAsciiString];
          aCoordinates: Handle[TColStdHArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_CartesianPoint.hxx".}
proc init2D*(this: var StepGeomCartesianPoint;
            aName: Handle[TCollectionHAsciiString]; x: cfloat; y: cfloat) {.
    importcpp: "Init2D", header: "StepGeom_CartesianPoint.hxx".}
proc init3D*(this: var StepGeomCartesianPoint;
            aName: Handle[TCollectionHAsciiString]; x: cfloat; y: cfloat; z: cfloat) {.
    importcpp: "Init3D", header: "StepGeom_CartesianPoint.hxx".}
proc setCoordinates*(this: var StepGeomCartesianPoint;
                    aCoordinates: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetCoordinates", header: "StepGeom_CartesianPoint.hxx".}
proc coordinates*(this: StepGeomCartesianPoint): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "Coordinates", header: "StepGeom_CartesianPoint.hxx".}
proc coordinatesValue*(this: StepGeomCartesianPoint; num: cint): cfloat {.
    noSideEffect, importcpp: "CoordinatesValue",
    header: "StepGeom_CartesianPoint.hxx".}
proc nbCoordinates*(this: StepGeomCartesianPoint): cint {.noSideEffect,
    importcpp: "NbCoordinates", header: "StepGeom_CartesianPoint.hxx".}
type
  StepGeomCartesianPointbaseType* = StepGeomPoint

proc getTypeName*(): cstring {.importcpp: "StepGeom_CartesianPoint::get_type_name(@)",
                            header: "StepGeom_CartesianPoint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_CartesianPoint::get_type_descriptor(@)",
    header: "StepGeom_CartesianPoint.hxx".}
proc dynamicType*(this: StepGeomCartesianPoint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_CartesianPoint.hxx".}

























