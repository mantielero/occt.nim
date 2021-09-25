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

## #include <NCollection_DefineHArray1.hxx>

discard "forward decl of Standard_Transient"
type
  StepVisualArray1OfTessellatedItem* = NCollectionArray1[
      Handle[StepVisualTessellatedItem]]

discard "forward decl of StepVisual_TessellatedGeometricSet"
type
  HandleStepVisualTessellatedGeometricSet* = Handle[
      StepVisualTessellatedGeometricSet]
  StepVisualTessellatedGeometricSet* {.importcpp: "StepVisual_TessellatedGeometricSet", header: "StepVisual_TessellatedGeometricSet.hxx",
                                      bycopy.} = object of StepVisualTessellatedItem ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## a
                                                                                ## DraughtingCalloutElement
                                                                                ## select
                                                                                ## type


proc constructStepVisualTessellatedGeometricSet*(): StepVisualTessellatedGeometricSet {.
    constructor, importcpp: "StepVisual_TessellatedGeometricSet(@)",
    header: "StepVisual_TessellatedGeometricSet.hxx".}
proc init*(this: var StepVisualTessellatedGeometricSet;
          theName: Handle[TCollectionHAsciiString];
          theItems: NCollectionHandle[StepVisualArray1OfTessellatedItem]) {.
    importcpp: "Init", header: "StepVisual_TessellatedGeometricSet.hxx".}
proc items*(this: StepVisualTessellatedGeometricSet): NCollectionHandle[
    StepVisualArray1OfTessellatedItem] {.noSideEffect, importcpp: "Items", header: "StepVisual_TessellatedGeometricSet.hxx".}
type
  StepVisualTessellatedGeometricSetbaseType* = StepVisualTessellatedItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_TessellatedGeometricSet::get_type_name(@)",
                            header: "StepVisual_TessellatedGeometricSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_TessellatedGeometricSet::get_type_descriptor(@)",
    header: "StepVisual_TessellatedGeometricSet.hxx".}
proc dynamicType*(this: StepVisualTessellatedGeometricSet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_TessellatedGeometricSet.hxx".}
