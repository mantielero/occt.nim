##  Created on: 1999-03-11
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of StepShape_FaceSurface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_SweptFaceSolid"
discard "forward decl of StepShape_SweptFaceSolid"
type
  HandleStepShapeSweptFaceSolid* = Handle[StepShapeSweptFaceSolid]
  StepShapeSweptFaceSolid* {.importcpp: "StepShape_SweptFaceSolid",
                            header: "StepShape_SweptFaceSolid.hxx", bycopy.} = object of StepShapeSolidModel ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## SweptFaceSolid


proc constructStepShapeSweptFaceSolid*(): StepShapeSweptFaceSolid {.constructor,
    importcpp: "StepShape_SweptFaceSolid(@)",
    header: "StepShape_SweptFaceSolid.hxx".}
proc init*(this: var StepShapeSweptFaceSolid;
          aName: Handle[TCollectionHAsciiString];
          aSweptArea: Handle[StepShapeFaceSurface]) {.importcpp: "Init",
    header: "StepShape_SweptFaceSolid.hxx".}
proc setSweptFace*(this: var StepShapeSweptFaceSolid;
                  aSweptArea: Handle[StepShapeFaceSurface]) {.
    importcpp: "SetSweptFace", header: "StepShape_SweptFaceSolid.hxx".}
proc sweptFace*(this: StepShapeSweptFaceSolid): Handle[StepShapeFaceSurface] {.
    noSideEffect, importcpp: "SweptFace", header: "StepShape_SweptFaceSolid.hxx".}
type
  StepShapeSweptFaceSolidbaseType* = StepShapeSolidModel

proc getTypeName*(): cstring {.importcpp: "StepShape_SweptFaceSolid::get_type_name(@)",
                            header: "StepShape_SweptFaceSolid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_SweptFaceSolid::get_type_descriptor(@)",
    header: "StepShape_SweptFaceSolid.hxx".}
proc dynamicType*(this: StepShapeSweptFaceSolid): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_SweptFaceSolid.hxx".}
