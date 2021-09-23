##  Created on: 2015-10-29
##  Created by: Galina Kulikova
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, StepVisual_TessellatedItem,
  ../NCollection/NCollection_Array1

## #include <NCollection_DefineHArray1.hxx>

import
  ../NCollection/NCollection_Handle

discard "forward decl of Standard_Transient"
type
  StepVisual_Array1OfTessellatedItem* = NCollection_Array1[
      handle[StepVisual_TessellatedItem]]

discard "forward decl of StepVisual_TessellatedGeometricSet"
type
  Handle_StepVisual_TessellatedGeometricSet* = handle[
      StepVisual_TessellatedGeometricSet]
  StepVisual_TessellatedGeometricSet* {.importcpp: "StepVisual_TessellatedGeometricSet", header: "StepVisual_TessellatedGeometricSet.hxx",
                                       bycopy.} = object of StepVisual_TessellatedItem ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## a
                                                                                  ## DraughtingCalloutElement
                                                                                  ## select
                                                                                  ## type


proc constructStepVisual_TessellatedGeometricSet*(): StepVisual_TessellatedGeometricSet {.
    constructor, importcpp: "StepVisual_TessellatedGeometricSet(@)",
    header: "StepVisual_TessellatedGeometricSet.hxx".}
proc Init*(this: var StepVisual_TessellatedGeometricSet;
          theName: handle[TCollection_HAsciiString];
          theItems: NCollection_Handle[StepVisual_Array1OfTessellatedItem]) {.
    importcpp: "Init", header: "StepVisual_TessellatedGeometricSet.hxx".}
proc Items*(this: StepVisual_TessellatedGeometricSet): NCollection_Handle[
    StepVisual_Array1OfTessellatedItem] {.noSideEffect, importcpp: "Items",
    header: "StepVisual_TessellatedGeometricSet.hxx".}
type
  StepVisual_TessellatedGeometricSetbase_type* = StepVisual_TessellatedItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_TessellatedGeometricSet::get_type_name(@)",
                              header: "StepVisual_TessellatedGeometricSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_TessellatedGeometricSet::get_type_descriptor(@)",
    header: "StepVisual_TessellatedGeometricSet.hxx".}
proc DynamicType*(this: StepVisual_TessellatedGeometricSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_TessellatedGeometricSet.hxx".}