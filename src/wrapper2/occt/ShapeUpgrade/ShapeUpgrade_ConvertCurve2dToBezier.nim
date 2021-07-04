##  Created on: 1999-05-13
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
  ../TColGeom2d/TColGeom2d_HSequenceOfCurve, ../TColStd/TColStd_HSequenceOfReal,
  ShapeUpgrade_SplitCurve2d, ../Standard/Standard_Boolean

discard "forward decl of ShapeUpgrade_ConvertCurve2dToBezier"
discard "forward decl of ShapeUpgrade_ConvertCurve2dToBezier"
type
  Handle_ShapeUpgrade_ConvertCurve2dToBezier* = handle[
      ShapeUpgrade_ConvertCurve2dToBezier]

## ! converts/splits a 2d curve to a list of beziers

type
  ShapeUpgrade_ConvertCurve2dToBezier* {.importcpp: "ShapeUpgrade_ConvertCurve2dToBezier", header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx",
                                        bycopy.} = object of ShapeUpgrade_SplitCurve2d ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## the
                                                                                  ## list
                                                                                  ## of
                                                                                  ## bezier
                                                                                  ## curves
                                                                                  ## correspondent
                                                                                  ## to
                                                                                  ## original
                                                                                  ##
                                                                                  ## !
                                                                                  ## curve.


proc constructShapeUpgrade_ConvertCurve2dToBezier*(): ShapeUpgrade_ConvertCurve2dToBezier {.
    constructor, importcpp: "ShapeUpgrade_ConvertCurve2dToBezier(@)",
    header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
proc Compute*(this: var ShapeUpgrade_ConvertCurve2dToBezier) {.importcpp: "Compute",
    header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
proc Build*(this: var ShapeUpgrade_ConvertCurve2dToBezier; Segment: Standard_Boolean) {.
    importcpp: "Build", header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
proc SplitParams*(this: ShapeUpgrade_ConvertCurve2dToBezier): handle[
    TColStd_HSequenceOfReal] {.noSideEffect, importcpp: "SplitParams",
                              header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
type
  ShapeUpgrade_ConvertCurve2dToBezierbase_type* = ShapeUpgrade_SplitCurve2d

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_ConvertCurve2dToBezier::get_type_name(@)",
                              header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_ConvertCurve2dToBezier::get_type_descriptor(@)",
    header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
proc DynamicType*(this: ShapeUpgrade_ConvertCurve2dToBezier): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}