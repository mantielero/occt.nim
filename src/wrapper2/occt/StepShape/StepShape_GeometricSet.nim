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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepShape_HArray1OfGeometricSetSelect,
  ../StepGeom/StepGeom_GeometricRepresentationItem, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_GeometricSetSelect"
discard "forward decl of StepShape_GeometricSet"
discard "forward decl of StepShape_GeometricSet"
type
  Handle_StepShape_GeometricSet* = handle[StepShape_GeometricSet]
  StepShape_GeometricSet* {.importcpp: "StepShape_GeometricSet",
                           header: "StepShape_GeometricSet.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                    ## !
                                                                                                                    ## Returns
                                                                                                                    ## a
                                                                                                                    ## GeometricSet


proc constructStepShape_GeometricSet*(): StepShape_GeometricSet {.constructor,
    importcpp: "StepShape_GeometricSet(@)", header: "StepShape_GeometricSet.hxx".}
proc Init*(this: var StepShape_GeometricSet;
          aName: handle[TCollection_HAsciiString];
          aElements: handle[StepShape_HArray1OfGeometricSetSelect]) {.
    importcpp: "Init", header: "StepShape_GeometricSet.hxx".}
proc SetElements*(this: var StepShape_GeometricSet;
                 aElements: handle[StepShape_HArray1OfGeometricSetSelect]) {.
    importcpp: "SetElements", header: "StepShape_GeometricSet.hxx".}
proc Elements*(this: StepShape_GeometricSet): handle[
    StepShape_HArray1OfGeometricSetSelect] {.noSideEffect, importcpp: "Elements",
    header: "StepShape_GeometricSet.hxx".}
proc ElementsValue*(this: StepShape_GeometricSet; num: Standard_Integer): StepShape_GeometricSetSelect {.
    noSideEffect, importcpp: "ElementsValue", header: "StepShape_GeometricSet.hxx".}
proc NbElements*(this: StepShape_GeometricSet): Standard_Integer {.noSideEffect,
    importcpp: "NbElements", header: "StepShape_GeometricSet.hxx".}
type
  StepShape_GeometricSetbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_GeometricSet::get_type_name(@)",
                              header: "StepShape_GeometricSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_GeometricSet::get_type_descriptor(@)",
    header: "StepShape_GeometricSet.hxx".}
proc DynamicType*(this: StepShape_GeometricSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_GeometricSet.hxx".}