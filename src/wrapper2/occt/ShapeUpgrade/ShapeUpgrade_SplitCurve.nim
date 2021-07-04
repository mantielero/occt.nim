##  Created on: 1998-03-12
##  Created by: Pierre BARRAS
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../TColStd/TColStd_HSequenceOfReal, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../ShapeExtend/ShapeExtend_Status

##  resolve name collisions with X11 headers

when defined(Status):
  discard
discard "forward decl of ShapeUpgrade_SplitCurve"
discard "forward decl of ShapeUpgrade_SplitCurve"
type
  Handle_ShapeUpgrade_SplitCurve* = handle[ShapeUpgrade_SplitCurve]

## ! Splits a  curve with a  criterion.

type
  ShapeUpgrade_SplitCurve* {.importcpp: "ShapeUpgrade_SplitCurve",
                            header: "ShapeUpgrade_SplitCurve.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor.


proc constructShapeUpgrade_SplitCurve*(): ShapeUpgrade_SplitCurve {.constructor,
    importcpp: "ShapeUpgrade_SplitCurve(@)", header: "ShapeUpgrade_SplitCurve.hxx".}
proc Init*(this: var ShapeUpgrade_SplitCurve; First: Standard_Real;
          Last: Standard_Real) {.importcpp: "Init",
                               header: "ShapeUpgrade_SplitCurve.hxx".}
proc SetSplitValues*(this: var ShapeUpgrade_SplitCurve;
                    SplitValues: handle[TColStd_HSequenceOfReal]) {.
    importcpp: "SetSplitValues", header: "ShapeUpgrade_SplitCurve.hxx".}
proc Build*(this: var ShapeUpgrade_SplitCurve; Segment: Standard_Boolean) {.
    importcpp: "Build", header: "ShapeUpgrade_SplitCurve.hxx".}
proc SplitValues*(this: ShapeUpgrade_SplitCurve): handle[TColStd_HSequenceOfReal] {.
    noSideEffect, importcpp: "SplitValues", header: "ShapeUpgrade_SplitCurve.hxx".}
proc Compute*(this: var ShapeUpgrade_SplitCurve) {.importcpp: "Compute",
    header: "ShapeUpgrade_SplitCurve.hxx".}
proc Perform*(this: var ShapeUpgrade_SplitCurve;
             Segment: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "ShapeUpgrade_SplitCurve.hxx".}
proc Status*(this: ShapeUpgrade_SplitCurve; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_SplitCurve.hxx".}
type
  ShapeUpgrade_SplitCurvebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_SplitCurve::get_type_name(@)",
                              header: "ShapeUpgrade_SplitCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_SplitCurve::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitCurve.hxx".}
proc DynamicType*(this: ShapeUpgrade_SplitCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_SplitCurve.hxx".}