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
  ../StepGeom/StepGeom_GeometricRepresentationItem,
  StepVisual_HArray1OfDraughtingCalloutElement

discard "forward decl of StepVisual_DraughtingCallout"
discard "forward decl of StepVisual_DraughtingCallout"
type
  Handle_StepVisual_DraughtingCallout* = handle[StepVisual_DraughtingCallout]
  StepVisual_DraughtingCallout* {.importcpp: "StepVisual_DraughtingCallout",
                                 header: "StepVisual_DraughtingCallout.hxx",
                                 bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## DraughtingCallout


proc constructStepVisual_DraughtingCallout*(): StepVisual_DraughtingCallout {.
    constructor, importcpp: "StepVisual_DraughtingCallout(@)",
    header: "StepVisual_DraughtingCallout.hxx".}
proc Init*(this: var StepVisual_DraughtingCallout;
          theName: handle[TCollection_HAsciiString];
          theContents: handle[StepVisual_HArray1OfDraughtingCalloutElement]) {.
    importcpp: "Init", header: "StepVisual_DraughtingCallout.hxx".}
proc Contents*(this: StepVisual_DraughtingCallout): handle[
    StepVisual_HArray1OfDraughtingCalloutElement] {.noSideEffect,
    importcpp: "Contents", header: "StepVisual_DraughtingCallout.hxx".}
proc SetContents*(this: var StepVisual_DraughtingCallout; theContents: handle[
    StepVisual_HArray1OfDraughtingCalloutElement]) {.importcpp: "SetContents",
    header: "StepVisual_DraughtingCallout.hxx".}
proc NbContents*(this: StepVisual_DraughtingCallout): Standard_Integer {.
    noSideEffect, importcpp: "NbContents",
    header: "StepVisual_DraughtingCallout.hxx".}
proc ContentsValue*(this: StepVisual_DraughtingCallout; theNum: Standard_Integer): StepVisual_DraughtingCalloutElement {.
    noSideEffect, importcpp: "ContentsValue",
    header: "StepVisual_DraughtingCallout.hxx".}
proc SetContentsValue*(this: var StepVisual_DraughtingCallout;
                      theNum: Standard_Integer;
                      theItem: StepVisual_DraughtingCalloutElement) {.
    importcpp: "SetContentsValue", header: "StepVisual_DraughtingCallout.hxx".}
type
  StepVisual_DraughtingCalloutbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_DraughtingCallout::get_type_name(@)",
                              header: "StepVisual_DraughtingCallout.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_DraughtingCallout::get_type_descriptor(@)",
    header: "StepVisual_DraughtingCallout.hxx".}
proc DynamicType*(this: StepVisual_DraughtingCallout): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_DraughtingCallout.hxx".}