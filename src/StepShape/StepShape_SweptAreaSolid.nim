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

discard "forward decl of StepGeom_CurveBoundedSurface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_SweptAreaSolid"
discard "forward decl of StepShape_SweptAreaSolid"
type
  HandleC1C1* = Handle[StepShapeSweptAreaSolid]
  StepShapeSweptAreaSolid* {.importcpp: "StepShape_SweptAreaSolid",
                            header: "StepShape_SweptAreaSolid.hxx", bycopy.} = object of StepShapeSolidModel ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## SweptAreaSolid


proc constructStepShapeSweptAreaSolid*(): StepShapeSweptAreaSolid {.constructor,
    importcpp: "StepShape_SweptAreaSolid(@)",
    header: "StepShape_SweptAreaSolid.hxx".}
proc init*(this: var StepShapeSweptAreaSolid;
          aName: Handle[TCollectionHAsciiString];
          aSweptArea: Handle[StepGeomCurveBoundedSurface]) {.importcpp: "Init",
    header: "StepShape_SweptAreaSolid.hxx".}
proc setSweptArea*(this: var StepShapeSweptAreaSolid;
                  aSweptArea: Handle[StepGeomCurveBoundedSurface]) {.
    importcpp: "SetSweptArea", header: "StepShape_SweptAreaSolid.hxx".}
proc sweptArea*(this: StepShapeSweptAreaSolid): Handle[StepGeomCurveBoundedSurface] {.
    noSideEffect, importcpp: "SweptArea", header: "StepShape_SweptAreaSolid.hxx".}
type
  StepShapeSweptAreaSolidbaseType* = StepShapeSolidModel

proc getTypeName*(): cstring {.importcpp: "StepShape_SweptAreaSolid::get_type_name(@)",
                            header: "StepShape_SweptAreaSolid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_SweptAreaSolid::get_type_descriptor(@)",
    header: "StepShape_SweptAreaSolid.hxx".}
proc dynamicType*(this: StepShapeSweptAreaSolid): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_SweptAreaSolid.hxx".}

























