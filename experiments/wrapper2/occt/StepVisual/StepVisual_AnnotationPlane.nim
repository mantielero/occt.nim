##  Created on: 2015-10-29
##  Created by: Irina KRYLOVA
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

discard "forward decl of StepVisual_AnnotationPlane"
discard "forward decl of StepVisual_AnnotationPlane"
type
  HandleStepVisualAnnotationPlane* = Handle[StepVisualAnnotationPlane]
  StepVisualAnnotationPlane* {.importcpp: "StepVisual_AnnotationPlane",
                              header: "StepVisual_AnnotationPlane.hxx", bycopy.} = object of StepVisualAnnotationOccurrence ##
                                                                                                                     ## !
                                                                                                                     ## Returns
                                                                                                                     ## a
                                                                                                                     ## AnnotationPlane


proc constructStepVisualAnnotationPlane*(): StepVisualAnnotationPlane {.
    constructor, importcpp: "StepVisual_AnnotationPlane(@)",
    header: "StepVisual_AnnotationPlane.hxx".}
proc init*(this: var StepVisualAnnotationPlane;
          theName: Handle[TCollectionHAsciiString];
          theStyles: Handle[StepVisualHArray1OfPresentationStyleAssignment];
          theItem: Handle[StandardTransient];
          theElements: Handle[StepVisualHArray1OfAnnotationPlaneElement]) {.
    importcpp: "Init", header: "StepVisual_AnnotationPlane.hxx".}
proc elements*(this: StepVisualAnnotationPlane): Handle[
    StepVisualHArray1OfAnnotationPlaneElement] {.noSideEffect,
    importcpp: "Elements", header: "StepVisual_AnnotationPlane.hxx".}
proc setElements*(this: var StepVisualAnnotationPlane;
                 theElements: Handle[StepVisualHArray1OfAnnotationPlaneElement]) {.
    importcpp: "SetElements", header: "StepVisual_AnnotationPlane.hxx".}
proc nbElements*(this: StepVisualAnnotationPlane): int {.noSideEffect,
    importcpp: "NbElements", header: "StepVisual_AnnotationPlane.hxx".}
proc elementsValue*(this: StepVisualAnnotationPlane; theNum: int): StepVisualAnnotationPlaneElement {.
    noSideEffect, importcpp: "ElementsValue",
    header: "StepVisual_AnnotationPlane.hxx".}
proc setElementsValue*(this: var StepVisualAnnotationPlane; theNum: int;
                      theItem: StepVisualAnnotationPlaneElement) {.
    importcpp: "SetElementsValue", header: "StepVisual_AnnotationPlane.hxx".}
type
  StepVisualAnnotationPlanebaseType* = StepVisualAnnotationOccurrence

proc getTypeName*(): cstring {.importcpp: "StepVisual_AnnotationPlane::get_type_name(@)",
                            header: "StepVisual_AnnotationPlane.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_AnnotationPlane::get_type_descriptor(@)",
    header: "StepVisual_AnnotationPlane.hxx".}
proc dynamicType*(this: StepVisualAnnotationPlane): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_AnnotationPlane.hxx".}
