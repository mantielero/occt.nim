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

discard "forward decl of StepShape_ConnectedFaceSet"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ClosedShell"
discard "forward decl of StepShape_ManifoldSolidBrep"
discard "forward decl of StepShape_ManifoldSolidBrep"
type
  HandleC1C1* = Handle[StepShapeManifoldSolidBrep]
  StepShapeManifoldSolidBrep* {.importcpp: "StepShape_ManifoldSolidBrep",
                               header: "StepShape_ManifoldSolidBrep.hxx", bycopy.} = object of StepShapeSolidModel ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## ManifoldSolidBrep


proc constructStepShapeManifoldSolidBrep*(): StepShapeManifoldSolidBrep {.
    constructor, importcpp: "StepShape_ManifoldSolidBrep(@)",
    header: "StepShape_ManifoldSolidBrep.hxx".}
proc init*(this: var StepShapeManifoldSolidBrep;
          aName: Handle[TCollectionHAsciiString];
          aOuter: Handle[StepShapeClosedShell]) {.importcpp: "Init",
    header: "StepShape_ManifoldSolidBrep.hxx".}
proc init*(this: var StepShapeManifoldSolidBrep;
          aName: Handle[TCollectionHAsciiString];
          aOuter: Handle[StepShapeConnectedFaceSet]) {.importcpp: "Init",
    header: "StepShape_ManifoldSolidBrep.hxx".}
proc setOuter*(this: var StepShapeManifoldSolidBrep;
              aOuter: Handle[StepShapeConnectedFaceSet]) {.importcpp: "SetOuter",
    header: "StepShape_ManifoldSolidBrep.hxx".}
proc outer*(this: StepShapeManifoldSolidBrep): Handle[StepShapeConnectedFaceSet] {.
    noSideEffect, importcpp: "Outer", header: "StepShape_ManifoldSolidBrep.hxx".}
type
  StepShapeManifoldSolidBrepbaseType* = StepShapeSolidModel

proc getTypeName*(): cstring {.importcpp: "StepShape_ManifoldSolidBrep::get_type_name(@)",
                            header: "StepShape_ManifoldSolidBrep.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_ManifoldSolidBrep::get_type_descriptor(@)",
    header: "StepShape_ManifoldSolidBrep.hxx".}
proc dynamicType*(this: StepShapeManifoldSolidBrep): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ManifoldSolidBrep.hxx".}

























