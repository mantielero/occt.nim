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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_SolidModel

discard "forward decl of StepShape_ConnectedFaceSet"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ClosedShell"
discard "forward decl of StepShape_ManifoldSolidBrep"
discard "forward decl of StepShape_ManifoldSolidBrep"
type
  Handle_StepShape_ManifoldSolidBrep* = handle[StepShape_ManifoldSolidBrep]
  StepShape_ManifoldSolidBrep* {.importcpp: "StepShape_ManifoldSolidBrep",
                                header: "StepShape_ManifoldSolidBrep.hxx", bycopy.} = object of StepShape_SolidModel ##
                                                                                                              ## !
                                                                                                              ## Returns
                                                                                                              ## a
                                                                                                              ## ManifoldSolidBrep


proc constructStepShape_ManifoldSolidBrep*(): StepShape_ManifoldSolidBrep {.
    constructor, importcpp: "StepShape_ManifoldSolidBrep(@)",
    header: "StepShape_ManifoldSolidBrep.hxx".}
proc Init*(this: var StepShape_ManifoldSolidBrep;
          aName: handle[TCollection_HAsciiString];
          aOuter: handle[StepShape_ClosedShell]) {.importcpp: "Init",
    header: "StepShape_ManifoldSolidBrep.hxx".}
proc Init*(this: var StepShape_ManifoldSolidBrep;
          aName: handle[TCollection_HAsciiString];
          aOuter: handle[StepShape_ConnectedFaceSet]) {.importcpp: "Init",
    header: "StepShape_ManifoldSolidBrep.hxx".}
proc SetOuter*(this: var StepShape_ManifoldSolidBrep;
              aOuter: handle[StepShape_ConnectedFaceSet]) {.importcpp: "SetOuter",
    header: "StepShape_ManifoldSolidBrep.hxx".}
proc Outer*(this: StepShape_ManifoldSolidBrep): handle[StepShape_ConnectedFaceSet] {.
    noSideEffect, importcpp: "Outer", header: "StepShape_ManifoldSolidBrep.hxx".}
type
  StepShape_ManifoldSolidBrepbase_type* = StepShape_SolidModel

proc get_type_name*(): cstring {.importcpp: "StepShape_ManifoldSolidBrep::get_type_name(@)",
                              header: "StepShape_ManifoldSolidBrep.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_ManifoldSolidBrep::get_type_descriptor(@)",
    header: "StepShape_ManifoldSolidBrep.hxx".}
proc DynamicType*(this: StepShape_ManifoldSolidBrep): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ManifoldSolidBrep.hxx".}