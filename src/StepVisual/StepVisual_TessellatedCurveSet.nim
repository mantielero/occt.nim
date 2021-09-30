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

discard "forward decl of Standard_Transient"
type
  StepVisualVectorOfHSequenceOfInteger* = NCollectionVector[
      Handle[TColStdHSequenceOfInteger]]

discard "forward decl of StepVisual_TessellatedCurveSet"
type
  HandleC1C1* = Handle[StepVisualTessellatedCurveSet]
  StepVisualTessellatedCurveSet* {.importcpp: "StepVisual_TessellatedCurveSet",
                                  header: "StepVisual_TessellatedCurveSet.hxx",
                                  bycopy.} = object of StepVisualTessellatedItem ## !
                                                                            ## Returns a
                                                                            ## DraughtingCalloutElement
                                                                            ## select type


proc constructStepVisualTessellatedCurveSet*(): StepVisualTessellatedCurveSet {.
    constructor, importcpp: "StepVisual_TessellatedCurveSet(@)",
    header: "StepVisual_TessellatedCurveSet.hxx".}
proc init*(this: var StepVisualTessellatedCurveSet;
          theName: Handle[TCollectionHAsciiString];
          theCoordList: Handle[StepVisualCoordinatesList];
          theCurves: NCollectionHandle[StepVisualVectorOfHSequenceOfInteger]) {.
    importcpp: "Init", header: "StepVisual_TessellatedCurveSet.hxx".}
proc coordList*(this: StepVisualTessellatedCurveSet): Handle[
    StepVisualCoordinatesList] {.noSideEffect, importcpp: "CoordList",
                                header: "StepVisual_TessellatedCurveSet.hxx".}
proc curves*(this: StepVisualTessellatedCurveSet): NCollectionHandle[
    StepVisualVectorOfHSequenceOfInteger] {.noSideEffect, importcpp: "Curves",
    header: "StepVisual_TessellatedCurveSet.hxx".}
type
  StepVisualTessellatedCurveSetbaseType* = StepVisualTessellatedItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_TessellatedCurveSet::get_type_name(@)",
                            header: "StepVisual_TessellatedCurveSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_TessellatedCurveSet::get_type_descriptor(@)",
    header: "StepVisual_TessellatedCurveSet.hxx".}
proc dynamicType*(this: StepVisualTessellatedCurveSet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_TessellatedCurveSet.hxx".}

























