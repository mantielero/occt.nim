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
discard "forward decl of StepGeom_Axis2Placement"
discard "forward decl of StepGeom_Conic"
discard "forward decl of StepGeom_Conic"
type
  HandleC1C1* = Handle[StepGeomConic]
  StepGeomConic* {.importcpp: "StepGeom_Conic", header: "StepGeom_Conic.hxx", bycopy.} = object of StepGeomCurve ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## Conic


proc constructStepGeomConic*(): StepGeomConic {.constructor,
    importcpp: "StepGeom_Conic(@)", header: "StepGeom_Conic.hxx".}
proc init*(this: var StepGeomConic; aName: Handle[TCollectionHAsciiString];
          aPosition: StepGeomAxis2Placement) {.importcpp: "Init",
    header: "StepGeom_Conic.hxx".}
proc setPosition*(this: var StepGeomConic; aPosition: StepGeomAxis2Placement) {.
    importcpp: "SetPosition", header: "StepGeom_Conic.hxx".}
proc position*(this: StepGeomConic): StepGeomAxis2Placement {.noSideEffect,
    importcpp: "Position", header: "StepGeom_Conic.hxx".}
type
  StepGeomConicbaseType* = StepGeomCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_Conic::get_type_name(@)",
                            header: "StepGeom_Conic.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Conic::get_type_descriptor(@)",
    header: "StepGeom_Conic.hxx".}
proc dynamicType*(this: StepGeomConic): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Conic.hxx".}

























