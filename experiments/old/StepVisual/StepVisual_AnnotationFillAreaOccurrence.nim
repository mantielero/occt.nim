##  Created on: 2016-12-28
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

discard "forward decl of StepVisual_AnnotationFillAreaOccurrence"
discard "forward decl of StepVisual_AnnotationFillAreaOccurrence"
type
  HandleC1C1* = Handle[StepVisualAnnotationFillAreaOccurrence]
  StepVisualAnnotationFillAreaOccurrence* {.
      importcpp: "StepVisual_AnnotationFillAreaOccurrence",
      header: "StepVisual_AnnotationFillAreaOccurrence.hxx", bycopy.} = object of StepVisualAnnotationOccurrence ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## AnnotationFillAreaOccurrence


proc constructStepVisualAnnotationFillAreaOccurrence*(): StepVisualAnnotationFillAreaOccurrence {.
    constructor, importcpp: "StepVisual_AnnotationFillAreaOccurrence(@)",
    header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
proc init*(this: var StepVisualAnnotationFillAreaOccurrence;
          theName: Handle[TCollectionHAsciiString];
          theStyles: Handle[StepVisualHArray1OfPresentationStyleAssignment];
          theItem: Handle[StandardTransient];
          theFillStyleTarget: Handle[StepGeomGeometricRepresentationItem]) {.
    importcpp: "Init", header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
proc fillStyleTarget*(this: StepVisualAnnotationFillAreaOccurrence): Handle[
    StepGeomGeometricRepresentationItem] {.noSideEffect,
    importcpp: "FillStyleTarget",
    header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
proc setFillStyleTarget*(this: var StepVisualAnnotationFillAreaOccurrence;
                        theTarget: Handle[StepGeomGeometricRepresentationItem]) {.
    importcpp: "SetFillStyleTarget",
    header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
type
  StepVisualAnnotationFillAreaOccurrencebaseType* = StepVisualAnnotationOccurrence

proc getTypeName*(): cstring {.importcpp: "StepVisual_AnnotationFillAreaOccurrence::get_type_name(@)", header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_AnnotationFillAreaOccurrence::get_type_descriptor(@)",
    header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
proc dynamicType*(this: StepVisualAnnotationFillAreaOccurrence): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}