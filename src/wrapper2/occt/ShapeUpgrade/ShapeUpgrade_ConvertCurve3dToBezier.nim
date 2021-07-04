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
  ../TColGeom/TColGeom_HSequenceOfCurve, ../TColStd/TColStd_HSequenceOfReal,
  ../Standard/Standard_Boolean, ShapeUpgrade_SplitCurve3d

discard "forward decl of ShapeUpgrade_ConvertCurve3dToBezier"
discard "forward decl of ShapeUpgrade_ConvertCurve3dToBezier"
type
  Handle_ShapeUpgrade_ConvertCurve3dToBezier* = handle[
      ShapeUpgrade_ConvertCurve3dToBezier]

## ! converts/splits a 3d curve of any type to a list of beziers

type
  ShapeUpgrade_ConvertCurve3dToBezier* {.importcpp: "ShapeUpgrade_ConvertCurve3dToBezier", header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx",
                                        bycopy.} = object of ShapeUpgrade_SplitCurve3d ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor
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


proc constructShapeUpgrade_ConvertCurve3dToBezier*(): ShapeUpgrade_ConvertCurve3dToBezier {.
    constructor, importcpp: "ShapeUpgrade_ConvertCurve3dToBezier(@)",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc SetLineMode*(this: var ShapeUpgrade_ConvertCurve3dToBezier;
                 mode: Standard_Boolean) {.importcpp: "SetLineMode",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc GetLineMode*(this: ShapeUpgrade_ConvertCurve3dToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "GetLineMode",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc SetCircleMode*(this: var ShapeUpgrade_ConvertCurve3dToBezier;
                   mode: Standard_Boolean) {.importcpp: "SetCircleMode",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc GetCircleMode*(this: ShapeUpgrade_ConvertCurve3dToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "GetCircleMode",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc SetConicMode*(this: var ShapeUpgrade_ConvertCurve3dToBezier;
                  mode: Standard_Boolean) {.importcpp: "SetConicMode",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc GetConicMode*(this: ShapeUpgrade_ConvertCurve3dToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "GetConicMode",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc Compute*(this: var ShapeUpgrade_ConvertCurve3dToBezier) {.importcpp: "Compute",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc Build*(this: var ShapeUpgrade_ConvertCurve3dToBezier; Segment: Standard_Boolean) {.
    importcpp: "Build", header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc SplitParams*(this: ShapeUpgrade_ConvertCurve3dToBezier): handle[
    TColStd_HSequenceOfReal] {.noSideEffect, importcpp: "SplitParams",
                              header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
type
  ShapeUpgrade_ConvertCurve3dToBezierbase_type* = ShapeUpgrade_SplitCurve3d

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_ConvertCurve3dToBezier::get_type_name(@)",
                              header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_ConvertCurve3dToBezier::get_type_descriptor(@)",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc DynamicType*(this: ShapeUpgrade_ConvertCurve3dToBezier): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}