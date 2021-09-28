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
discard "forward decl of StepShape_CsgSelect"
discard "forward decl of StepShape_CsgSolid"
discard "forward decl of StepShape_CsgSolid"
type
  HandleC1C1* = Handle[StepShapeCsgSolid]
  StepShapeCsgSolid* {.importcpp: "StepShape_CsgSolid",
                      header: "StepShape_CsgSolid.hxx", bycopy.} = object of StepShapeSolidModel ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## CsgSolid


proc constructStepShapeCsgSolid*(): StepShapeCsgSolid {.constructor,
    importcpp: "StepShape_CsgSolid(@)", header: "StepShape_CsgSolid.hxx".}
proc init*(this: var StepShapeCsgSolid; aName: Handle[TCollectionHAsciiString];
          aTreeRootExpression: StepShapeCsgSelect) {.importcpp: "Init",
    header: "StepShape_CsgSolid.hxx".}
proc setTreeRootExpression*(this: var StepShapeCsgSolid;
                           aTreeRootExpression: StepShapeCsgSelect) {.
    importcpp: "SetTreeRootExpression", header: "StepShape_CsgSolid.hxx".}
proc treeRootExpression*(this: StepShapeCsgSolid): StepShapeCsgSelect {.
    noSideEffect, importcpp: "TreeRootExpression", header: "StepShape_CsgSolid.hxx".}
type
  StepShapeCsgSolidbaseType* = StepShapeSolidModel

proc getTypeName*(): cstring {.importcpp: "StepShape_CsgSolid::get_type_name(@)",
                            header: "StepShape_CsgSolid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_CsgSolid::get_type_descriptor(@)",
    header: "StepShape_CsgSolid.hxx".}
proc dynamicType*(this: StepShapeCsgSolid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_CsgSolid.hxx".}

























