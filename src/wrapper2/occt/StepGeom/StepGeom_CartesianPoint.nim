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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, StepGeom_Point, ../TColStd/TColStd_HArray1OfReal

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_CartesianPoint"
type
  Handle_StepGeom_CartesianPoint* = handle[StepGeom_CartesianPoint]
  StepGeom_CartesianPoint* {.importcpp: "StepGeom_CartesianPoint",
                            header: "StepGeom_CartesianPoint.hxx", bycopy.} = object of StepGeom_Point ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## CartesianPoint


proc constructStepGeom_CartesianPoint*(): StepGeom_CartesianPoint {.constructor,
    importcpp: "StepGeom_CartesianPoint(@)", header: "StepGeom_CartesianPoint.hxx".}
proc Init*(this: var StepGeom_CartesianPoint;
          aName: handle[TCollection_HAsciiString];
          aCoordinates: handle[TColStd_HArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_CartesianPoint.hxx".}
proc Init2D*(this: var StepGeom_CartesianPoint;
            aName: handle[TCollection_HAsciiString]; X: Standard_Real;
            Y: Standard_Real) {.importcpp: "Init2D",
                              header: "StepGeom_CartesianPoint.hxx".}
proc Init3D*(this: var StepGeom_CartesianPoint;
            aName: handle[TCollection_HAsciiString]; X: Standard_Real;
            Y: Standard_Real; Z: Standard_Real) {.importcpp: "Init3D",
    header: "StepGeom_CartesianPoint.hxx".}
proc SetCoordinates*(this: var StepGeom_CartesianPoint;
                    aCoordinates: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetCoordinates", header: "StepGeom_CartesianPoint.hxx".}
proc Coordinates*(this: StepGeom_CartesianPoint): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "Coordinates", header: "StepGeom_CartesianPoint.hxx".}
proc CoordinatesValue*(this: StepGeom_CartesianPoint; num: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "CoordinatesValue",
    header: "StepGeom_CartesianPoint.hxx".}
proc NbCoordinates*(this: StepGeom_CartesianPoint): Standard_Integer {.noSideEffect,
    importcpp: "NbCoordinates", header: "StepGeom_CartesianPoint.hxx".}
type
  StepGeom_CartesianPointbase_type* = StepGeom_Point

proc get_type_name*(): cstring {.importcpp: "StepGeom_CartesianPoint::get_type_name(@)",
                              header: "StepGeom_CartesianPoint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_CartesianPoint::get_type_descriptor(@)",
    header: "StepGeom_CartesianPoint.hxx".}
proc DynamicType*(this: StepGeom_CartesianPoint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_CartesianPoint.hxx".}