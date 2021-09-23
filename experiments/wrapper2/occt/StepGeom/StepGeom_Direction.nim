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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfReal, StepGeom_GeometricRepresentationItem,
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Direction"
discard "forward decl of StepGeom_Direction"
type
  Handle_StepGeom_Direction* = handle[StepGeom_Direction]
  StepGeom_Direction* {.importcpp: "StepGeom_Direction",
                       header: "StepGeom_Direction.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## Direction


proc constructStepGeom_Direction*(): StepGeom_Direction {.constructor,
    importcpp: "StepGeom_Direction(@)", header: "StepGeom_Direction.hxx".}
proc Init*(this: var StepGeom_Direction; aName: handle[TCollection_HAsciiString];
          aDirectionRatios: handle[TColStd_HArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_Direction.hxx".}
proc SetDirectionRatios*(this: var StepGeom_Direction;
                        aDirectionRatios: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetDirectionRatios", header: "StepGeom_Direction.hxx".}
proc DirectionRatios*(this: StepGeom_Direction): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "DirectionRatios", header: "StepGeom_Direction.hxx".}
proc DirectionRatiosValue*(this: StepGeom_Direction; num: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "DirectionRatiosValue",
    header: "StepGeom_Direction.hxx".}
proc NbDirectionRatios*(this: StepGeom_Direction): Standard_Integer {.noSideEffect,
    importcpp: "NbDirectionRatios", header: "StepGeom_Direction.hxx".}
type
  StepGeom_Directionbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepGeom_Direction::get_type_name(@)",
                              header: "StepGeom_Direction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Direction::get_type_descriptor(@)",
    header: "StepGeom_Direction.hxx".}
proc DynamicType*(this: StepGeom_Direction): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Direction.hxx".}