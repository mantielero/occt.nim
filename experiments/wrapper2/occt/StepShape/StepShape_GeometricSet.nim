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
discard "forward decl of StepShape_GeometricSetSelect"
discard "forward decl of StepShape_GeometricSet"
discard "forward decl of StepShape_GeometricSet"
type
  HandleStepShapeGeometricSet* = Handle[StepShapeGeometricSet]
  StepShapeGeometricSet* {.importcpp: "StepShape_GeometricSet",
                          header: "StepShape_GeometricSet.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                  ## !
                                                                                                                  ## Returns
                                                                                                                  ## a
                                                                                                                  ## GeometricSet


proc constructStepShapeGeometricSet*(): StepShapeGeometricSet {.constructor,
    importcpp: "StepShape_GeometricSet(@)", header: "StepShape_GeometricSet.hxx".}
proc init*(this: var StepShapeGeometricSet; aName: Handle[TCollectionHAsciiString];
          aElements: Handle[StepShapeHArray1OfGeometricSetSelect]) {.
    importcpp: "Init", header: "StepShape_GeometricSet.hxx".}
proc setElements*(this: var StepShapeGeometricSet;
                 aElements: Handle[StepShapeHArray1OfGeometricSetSelect]) {.
    importcpp: "SetElements", header: "StepShape_GeometricSet.hxx".}
proc elements*(this: StepShapeGeometricSet): Handle[
    StepShapeHArray1OfGeometricSetSelect] {.noSideEffect, importcpp: "Elements",
    header: "StepShape_GeometricSet.hxx".}
proc elementsValue*(this: StepShapeGeometricSet; num: int): StepShapeGeometricSetSelect {.
    noSideEffect, importcpp: "ElementsValue", header: "StepShape_GeometricSet.hxx".}
proc nbElements*(this: StepShapeGeometricSet): int {.noSideEffect,
    importcpp: "NbElements", header: "StepShape_GeometricSet.hxx".}
type
  StepShapeGeometricSetbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_GeometricSet::get_type_name(@)",
                            header: "StepShape_GeometricSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_GeometricSet::get_type_descriptor(@)",
    header: "StepShape_GeometricSet.hxx".}
proc dynamicType*(this: StepShapeGeometricSet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_GeometricSet.hxx".}
