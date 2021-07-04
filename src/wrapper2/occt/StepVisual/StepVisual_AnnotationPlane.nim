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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepVisual_AnnotationOccurrence, StepVisual_HArray1OfAnnotationPlaneElement

discard "forward decl of StepVisual_AnnotationPlane"
discard "forward decl of StepVisual_AnnotationPlane"
type
  Handle_StepVisual_AnnotationPlane* = handle[StepVisual_AnnotationPlane]
  StepVisual_AnnotationPlane* {.importcpp: "StepVisual_AnnotationPlane",
                               header: "StepVisual_AnnotationPlane.hxx", bycopy.} = object of StepVisual_AnnotationOccurrence ##
                                                                                                                       ## !
                                                                                                                       ## Returns
                                                                                                                       ## a
                                                                                                                       ## AnnotationPlane


proc constructStepVisual_AnnotationPlane*(): StepVisual_AnnotationPlane {.
    constructor, importcpp: "StepVisual_AnnotationPlane(@)",
    header: "StepVisual_AnnotationPlane.hxx".}
proc Init*(this: var StepVisual_AnnotationPlane;
          theName: handle[TCollection_HAsciiString];
          theStyles: handle[StepVisual_HArray1OfPresentationStyleAssignment];
          theItem: handle[Standard_Transient];
          theElements: handle[StepVisual_HArray1OfAnnotationPlaneElement]) {.
    importcpp: "Init", header: "StepVisual_AnnotationPlane.hxx".}
proc Elements*(this: StepVisual_AnnotationPlane): handle[
    StepVisual_HArray1OfAnnotationPlaneElement] {.noSideEffect,
    importcpp: "Elements", header: "StepVisual_AnnotationPlane.hxx".}
proc SetElements*(this: var StepVisual_AnnotationPlane; theElements: handle[
    StepVisual_HArray1OfAnnotationPlaneElement]) {.importcpp: "SetElements",
    header: "StepVisual_AnnotationPlane.hxx".}
proc NbElements*(this: StepVisual_AnnotationPlane): Standard_Integer {.noSideEffect,
    importcpp: "NbElements", header: "StepVisual_AnnotationPlane.hxx".}
proc ElementsValue*(this: StepVisual_AnnotationPlane; theNum: Standard_Integer): StepVisual_AnnotationPlaneElement {.
    noSideEffect, importcpp: "ElementsValue",
    header: "StepVisual_AnnotationPlane.hxx".}
proc SetElementsValue*(this: var StepVisual_AnnotationPlane;
                      theNum: Standard_Integer;
                      theItem: StepVisual_AnnotationPlaneElement) {.
    importcpp: "SetElementsValue", header: "StepVisual_AnnotationPlane.hxx".}
type
  StepVisual_AnnotationPlanebase_type* = StepVisual_AnnotationOccurrence

proc get_type_name*(): cstring {.importcpp: "StepVisual_AnnotationPlane::get_type_name(@)",
                              header: "StepVisual_AnnotationPlane.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_AnnotationPlane::get_type_descriptor(@)",
    header: "StepVisual_AnnotationPlane.hxx".}
proc DynamicType*(this: StepVisual_AnnotationPlane): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_AnnotationPlane.hxx".}