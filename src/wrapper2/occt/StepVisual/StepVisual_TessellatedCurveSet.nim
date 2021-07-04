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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, StepVisual_CoordinatesList,
  StepVisual_TessellatedItem, ../NCollection/NCollection_Vector,
  ../NCollection/NCollection_Handle, StepVisual_CoordinatesList,
  ../TColStd/TColStd_HSequenceOfInteger

discard "forward decl of Standard_Transient"
type
  StepVisual_VectorOfHSequenceOfInteger* = NCollection_Vector[
      handle[TColStd_HSequenceOfInteger]]

discard "forward decl of StepVisual_TessellatedCurveSet"
type
  Handle_StepVisual_TessellatedCurveSet* = handle[StepVisual_TessellatedCurveSet]
  StepVisual_TessellatedCurveSet* {.importcpp: "StepVisual_TessellatedCurveSet", header: "StepVisual_TessellatedCurveSet.hxx",
                                   bycopy.} = object of StepVisual_TessellatedItem ## !
                                                                              ## Returns a
                                                                              ## DraughtingCalloutElement
                                                                              ## select
                                                                              ## type


proc constructStepVisual_TessellatedCurveSet*(): StepVisual_TessellatedCurveSet {.
    constructor, importcpp: "StepVisual_TessellatedCurveSet(@)",
    header: "StepVisual_TessellatedCurveSet.hxx".}
proc Init*(this: var StepVisual_TessellatedCurveSet;
          theName: handle[TCollection_HAsciiString];
          theCoordList: handle[StepVisual_CoordinatesList];
          theCurves: NCollection_Handle[StepVisual_VectorOfHSequenceOfInteger]) {.
    importcpp: "Init", header: "StepVisual_TessellatedCurveSet.hxx".}
proc CoordList*(this: StepVisual_TessellatedCurveSet): handle[
    StepVisual_CoordinatesList] {.noSideEffect, importcpp: "CoordList",
                                 header: "StepVisual_TessellatedCurveSet.hxx".}
proc Curves*(this: StepVisual_TessellatedCurveSet): NCollection_Handle[
    StepVisual_VectorOfHSequenceOfInteger] {.noSideEffect, importcpp: "Curves",
    header: "StepVisual_TessellatedCurveSet.hxx".}
type
  StepVisual_TessellatedCurveSetbase_type* = StepVisual_TessellatedItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_TessellatedCurveSet::get_type_name(@)",
                              header: "StepVisual_TessellatedCurveSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_TessellatedCurveSet::get_type_descriptor(@)",
    header: "StepVisual_TessellatedCurveSet.hxx".}
proc DynamicType*(this: StepVisual_TessellatedCurveSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_TessellatedCurveSet.hxx".}