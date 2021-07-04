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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_AnnotationOccurrence

discard "forward decl of StepVisual_AnnotationFillAreaOccurrence"
discard "forward decl of StepVisual_AnnotationFillAreaOccurrence"
type
  Handle_StepVisual_AnnotationFillAreaOccurrence* = handle[
      StepVisual_AnnotationFillAreaOccurrence]
  StepVisual_AnnotationFillAreaOccurrence* {.
      importcpp: "StepVisual_AnnotationFillAreaOccurrence",
      header: "StepVisual_AnnotationFillAreaOccurrence.hxx", bycopy.} = object of StepVisual_AnnotationOccurrence ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## AnnotationFillAreaOccurrence


proc constructStepVisual_AnnotationFillAreaOccurrence*(): StepVisual_AnnotationFillAreaOccurrence {.
    constructor, importcpp: "StepVisual_AnnotationFillAreaOccurrence(@)",
    header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
proc Init*(this: var StepVisual_AnnotationFillAreaOccurrence;
          theName: handle[TCollection_HAsciiString];
          theStyles: handle[StepVisual_HArray1OfPresentationStyleAssignment];
          theItem: handle[Standard_Transient];
          theFillStyleTarget: handle[StepGeom_GeometricRepresentationItem]) {.
    importcpp: "Init", header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
proc FillStyleTarget*(this: StepVisual_AnnotationFillAreaOccurrence): handle[
    StepGeom_GeometricRepresentationItem] {.noSideEffect,
    importcpp: "FillStyleTarget",
    header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
proc SetFillStyleTarget*(this: var StepVisual_AnnotationFillAreaOccurrence;
                        theTarget: handle[StepGeom_GeometricRepresentationItem]) {.
    importcpp: "SetFillStyleTarget",
    header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
type
  StepVisual_AnnotationFillAreaOccurrencebase_type* = StepVisual_AnnotationOccurrence

proc get_type_name*(): cstring {.importcpp: "StepVisual_AnnotationFillAreaOccurrence::get_type_name(@)", header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_AnnotationFillAreaOccurrence::get_type_descriptor(@)",
    header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}
proc DynamicType*(this: StepVisual_AnnotationFillAreaOccurrence): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_AnnotationFillAreaOccurrence.hxx".}