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

discard "forward decl of StepVisual_DraughtingCallout"
discard "forward decl of StepVisual_DraughtingCallout"
type
  HandleC1C1* = Handle[StepVisualDraughtingCallout]
  StepVisualDraughtingCallout* {.importcpp: "StepVisual_DraughtingCallout",
                                header: "StepVisual_DraughtingCallout.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                              ## !
                                                                                                                              ## Returns
                                                                                                                              ## a
                                                                                                                              ## DraughtingCallout


proc constructStepVisualDraughtingCallout*(): StepVisualDraughtingCallout {.
    constructor, importcpp: "StepVisual_DraughtingCallout(@)",
    header: "StepVisual_DraughtingCallout.hxx".}
proc init*(this: var StepVisualDraughtingCallout;
          theName: Handle[TCollectionHAsciiString];
          theContents: Handle[StepVisualHArray1OfDraughtingCalloutElement]) {.
    importcpp: "Init", header: "StepVisual_DraughtingCallout.hxx".}
proc contents*(this: StepVisualDraughtingCallout): Handle[
    StepVisualHArray1OfDraughtingCalloutElement] {.noSideEffect,
    importcpp: "Contents", header: "StepVisual_DraughtingCallout.hxx".}
proc setContents*(this: var StepVisualDraughtingCallout; theContents: Handle[
    StepVisualHArray1OfDraughtingCalloutElement]) {.importcpp: "SetContents",
    header: "StepVisual_DraughtingCallout.hxx".}
proc nbContents*(this: StepVisualDraughtingCallout): int {.noSideEffect,
    importcpp: "NbContents", header: "StepVisual_DraughtingCallout.hxx".}
proc contentsValue*(this: StepVisualDraughtingCallout; theNum: int): StepVisualDraughtingCalloutElement {.
    noSideEffect, importcpp: "ContentsValue",
    header: "StepVisual_DraughtingCallout.hxx".}
proc setContentsValue*(this: var StepVisualDraughtingCallout; theNum: int;
                      theItem: StepVisualDraughtingCalloutElement) {.
    importcpp: "SetContentsValue", header: "StepVisual_DraughtingCallout.hxx".}
type
  StepVisualDraughtingCalloutbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_DraughtingCallout::get_type_name(@)",
                            header: "StepVisual_DraughtingCallout.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_DraughtingCallout::get_type_descriptor(@)",
    header: "StepVisual_DraughtingCallout.hxx".}
proc dynamicType*(this: StepVisualDraughtingCallout): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_DraughtingCallout.hxx".}