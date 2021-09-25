##  Created on: 1998-03-12
##  Created by: Roman LYGIN
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

discard "forward decl of Geom_Curve"
discard "forward decl of ShapeUpgrade_SplitCurve3d"
discard "forward decl of ShapeUpgrade_SplitCurve3d"
type
  HandleShapeUpgradeSplitCurve3d* = Handle[ShapeUpgradeSplitCurve3d]

## ! Splits a 3d curve with a criterion.

type
  ShapeUpgradeSplitCurve3d* {.importcpp: "ShapeUpgrade_SplitCurve3d",
                             header: "ShapeUpgrade_SplitCurve3d.hxx", bycopy.} = object of ShapeUpgradeSplitCurve ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor.


proc constructShapeUpgradeSplitCurve3d*(): ShapeUpgradeSplitCurve3d {.constructor,
    importcpp: "ShapeUpgrade_SplitCurve3d(@)",
    header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc init*(this: var ShapeUpgradeSplitCurve3d; c: Handle[GeomCurve]) {.
    importcpp: "Init", header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc init*(this: var ShapeUpgradeSplitCurve3d; c: Handle[GeomCurve]; first: float;
          last: float) {.importcpp: "Init", header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc build*(this: var ShapeUpgradeSplitCurve3d; segment: bool) {.importcpp: "Build",
    header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc getCurves*(this: ShapeUpgradeSplitCurve3d): Handle[TColGeomHArray1OfCurve] {.
    noSideEffect, importcpp: "GetCurves", header: "ShapeUpgrade_SplitCurve3d.hxx".}
type
  ShapeUpgradeSplitCurve3dbaseType* = ShapeUpgradeSplitCurve

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_SplitCurve3d::get_type_name(@)",
                            header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_SplitCurve3d::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc dynamicType*(this: ShapeUpgradeSplitCurve3d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_SplitCurve3d.hxx".}
