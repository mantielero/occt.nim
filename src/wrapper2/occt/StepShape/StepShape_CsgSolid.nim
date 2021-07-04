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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_CsgSelect,
  StepShape_SolidModel

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_CsgSelect"
discard "forward decl of StepShape_CsgSolid"
discard "forward decl of StepShape_CsgSolid"
type
  Handle_StepShape_CsgSolid* = handle[StepShape_CsgSolid]
  StepShape_CsgSolid* {.importcpp: "StepShape_CsgSolid",
                       header: "StepShape_CsgSolid.hxx", bycopy.} = object of StepShape_SolidModel ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## CsgSolid


proc constructStepShape_CsgSolid*(): StepShape_CsgSolid {.constructor,
    importcpp: "StepShape_CsgSolid(@)", header: "StepShape_CsgSolid.hxx".}
proc Init*(this: var StepShape_CsgSolid; aName: handle[TCollection_HAsciiString];
          aTreeRootExpression: StepShape_CsgSelect) {.importcpp: "Init",
    header: "StepShape_CsgSolid.hxx".}
proc SetTreeRootExpression*(this: var StepShape_CsgSolid;
                           aTreeRootExpression: StepShape_CsgSelect) {.
    importcpp: "SetTreeRootExpression", header: "StepShape_CsgSolid.hxx".}
proc TreeRootExpression*(this: StepShape_CsgSolid): StepShape_CsgSelect {.
    noSideEffect, importcpp: "TreeRootExpression", header: "StepShape_CsgSolid.hxx".}
type
  StepShape_CsgSolidbase_type* = StepShape_SolidModel

proc get_type_name*(): cstring {.importcpp: "StepShape_CsgSolid::get_type_name(@)",
                              header: "StepShape_CsgSolid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_CsgSolid::get_type_descriptor(@)",
    header: "StepShape_CsgSolid.hxx".}
proc DynamicType*(this: StepShape_CsgSolid): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_CsgSolid.hxx".}