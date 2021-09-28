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

discard "forward decl of ShapeUpgrade_ConvertCurve2dToBezier"
discard "forward decl of ShapeUpgrade_ConvertCurve2dToBezier"
type
  HandleC1C1* = Handle[ShapeUpgradeConvertCurve2dToBezier]

## ! converts/splits a 2d curve to a list of beziers

type
  ShapeUpgradeConvertCurve2dToBezier* {.importcpp: "ShapeUpgrade_ConvertCurve2dToBezier", header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx",
                                       bycopy.} = object of ShapeUpgradeSplitCurve2d ##
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


proc constructShapeUpgradeConvertCurve2dToBezier*(): ShapeUpgradeConvertCurve2dToBezier {.
    constructor, importcpp: "ShapeUpgrade_ConvertCurve2dToBezier(@)",
    header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
proc compute*(this: var ShapeUpgradeConvertCurve2dToBezier) {.importcpp: "Compute",
    header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
proc build*(this: var ShapeUpgradeConvertCurve2dToBezier; segment: bool) {.
    importcpp: "Build", header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
proc splitParams*(this: ShapeUpgradeConvertCurve2dToBezier): Handle[
    TColStdHSequenceOfReal] {.noSideEffect, importcpp: "SplitParams",
                             header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
type
  ShapeUpgradeConvertCurve2dToBezierbaseType* = ShapeUpgradeSplitCurve2d

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_ConvertCurve2dToBezier::get_type_name(@)",
                            header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_ConvertCurve2dToBezier::get_type_descriptor(@)",
    header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}
proc dynamicType*(this: ShapeUpgradeConvertCurve2dToBezier): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_ConvertCurve2dToBezier.hxx".}

























