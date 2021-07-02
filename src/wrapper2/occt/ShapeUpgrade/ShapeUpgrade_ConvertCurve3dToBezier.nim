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

discard "forward decl of ShapeUpgrade_ConvertCurve3dToBezier"
discard "forward decl of ShapeUpgrade_ConvertCurve3dToBezier"
type
  HandleShapeUpgradeConvertCurve3dToBezier* = Handle[
      ShapeUpgradeConvertCurve3dToBezier]

## ! converts/splits a 3d curve of any type to a list of beziers

type
  ShapeUpgradeConvertCurve3dToBezier* {.importcpp: "ShapeUpgrade_ConvertCurve3dToBezier", header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx",
                                       bycopy.} = object of ShapeUpgradeSplitCurve3d ##
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


proc constructShapeUpgradeConvertCurve3dToBezier*(): ShapeUpgradeConvertCurve3dToBezier {.
    constructor, importcpp: "ShapeUpgrade_ConvertCurve3dToBezier(@)",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc setLineMode*(this: var ShapeUpgradeConvertCurve3dToBezier;
                 mode: StandardBoolean) {.importcpp: "SetLineMode", header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc getLineMode*(this: ShapeUpgradeConvertCurve3dToBezier): StandardBoolean {.
    noSideEffect, importcpp: "GetLineMode",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc setCircleMode*(this: var ShapeUpgradeConvertCurve3dToBezier;
                   mode: StandardBoolean) {.importcpp: "SetCircleMode",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc getCircleMode*(this: ShapeUpgradeConvertCurve3dToBezier): StandardBoolean {.
    noSideEffect, importcpp: "GetCircleMode",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc setConicMode*(this: var ShapeUpgradeConvertCurve3dToBezier;
                  mode: StandardBoolean) {.importcpp: "SetConicMode",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc getConicMode*(this: ShapeUpgradeConvertCurve3dToBezier): StandardBoolean {.
    noSideEffect, importcpp: "GetConicMode",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc compute*(this: var ShapeUpgradeConvertCurve3dToBezier) {.importcpp: "Compute",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc build*(this: var ShapeUpgradeConvertCurve3dToBezier; segment: StandardBoolean) {.
    importcpp: "Build", header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc splitParams*(this: ShapeUpgradeConvertCurve3dToBezier): Handle[
    TColStdHSequenceOfReal] {.noSideEffect, importcpp: "SplitParams",
                             header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
type
  ShapeUpgradeConvertCurve3dToBezierbaseType* = ShapeUpgradeSplitCurve3d

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_ConvertCurve3dToBezier::get_type_name(@)",
                            header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_ConvertCurve3dToBezier::get_type_descriptor(@)",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}
proc dynamicType*(this: ShapeUpgradeConvertCurve3dToBezier): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_ConvertCurve3dToBezier.hxx".}

