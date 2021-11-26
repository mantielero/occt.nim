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
discard "forward decl of StepGeom_Direction"
discard "forward decl of StepGeom_Direction"
type
  HandleC1C1* = Handle[StepGeomDirection]
  StepGeomDirection* {.importcpp: "StepGeom_Direction",
                      header: "StepGeom_Direction.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## Direction


proc constructStepGeomDirection*(): StepGeomDirection {.constructor,
    importcpp: "StepGeom_Direction(@)", header: "StepGeom_Direction.hxx".}
proc init*(this: var StepGeomDirection; aName: Handle[TCollectionHAsciiString];
          aDirectionRatios: Handle[TColStdHArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_Direction.hxx".}
proc setDirectionRatios*(this: var StepGeomDirection;
                        aDirectionRatios: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetDirectionRatios", header: "StepGeom_Direction.hxx".}
proc directionRatios*(this: StepGeomDirection): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "DirectionRatios", header: "StepGeom_Direction.hxx".}
proc directionRatiosValue*(this: StepGeomDirection; num: int): StandardReal {.
    noSideEffect, importcpp: "DirectionRatiosValue",
    header: "StepGeom_Direction.hxx".}
proc nbDirectionRatios*(this: StepGeomDirection): int {.noSideEffect,
    importcpp: "NbDirectionRatios", header: "StepGeom_Direction.hxx".}
type
  StepGeomDirectionbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepGeom_Direction::get_type_name(@)",
                            header: "StepGeom_Direction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Direction::get_type_descriptor(@)",
    header: "StepGeom_Direction.hxx".}
proc dynamicType*(this: StepGeomDirection): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Direction.hxx".}