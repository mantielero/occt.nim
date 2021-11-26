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

discard "forward decl of Geom2d_Curve"
discard "forward decl of ShapeUpgrade_SplitCurve2d"
discard "forward decl of ShapeUpgrade_SplitCurve2d"
type
  HandleC1C1* = Handle[ShapeUpgradeSplitCurve2d]

## ! Splits a 2d curve with a criterion.

type
  ShapeUpgradeSplitCurve2d* {.importcpp: "ShapeUpgrade_SplitCurve2d",
                             header: "ShapeUpgrade_SplitCurve2d.hxx", bycopy.} = object of ShapeUpgradeSplitCurve ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor.


proc constructShapeUpgradeSplitCurve2d*(): ShapeUpgradeSplitCurve2d {.constructor,
    importcpp: "ShapeUpgrade_SplitCurve2d(@)",
    header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc init*(this: var ShapeUpgradeSplitCurve2d; c: Handle[Geom2dCurve]) {.
    importcpp: "Init", header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc init*(this: var ShapeUpgradeSplitCurve2d; c: Handle[Geom2dCurve]; first: cfloat;
          last: cfloat) {.importcpp: "Init", header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc build*(this: var ShapeUpgradeSplitCurve2d; segment: bool) {.importcpp: "Build",
    header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc getCurves*(this: ShapeUpgradeSplitCurve2d): Handle[TColGeom2dHArray1OfCurve] {.
    noSideEffect, importcpp: "GetCurves", header: "ShapeUpgrade_SplitCurve2d.hxx".}
type
  ShapeUpgradeSplitCurve2dbaseType* = ShapeUpgradeSplitCurve

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_SplitCurve2d::get_type_name(@)",
                            header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_SplitCurve2d::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc dynamicType*(this: ShapeUpgradeSplitCurve2d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_SplitCurve2d.hxx".}

























