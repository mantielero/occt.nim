##  Created on: 1999-07-22
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

discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeUpgrade_ClosedFaceDivide"
discard "forward decl of ShapeUpgrade_ClosedFaceDivide"
type
  HandleShapeUpgradeClosedFaceDivide* = Handle[ShapeUpgradeClosedFaceDivide]

## ! Divides a Face with one or more seam edge to avoid closed faces.
## ! Splitting is performed by U and V direction. The number of
## ! resulting faces can be defined by user.

type
  ShapeUpgradeClosedFaceDivide* {.importcpp: "ShapeUpgrade_ClosedFaceDivide",
                                 header: "ShapeUpgrade_ClosedFaceDivide.hxx",
                                 bycopy.} = object of ShapeUpgradeFaceDivide ## ! Creates empty
                                                                        ## constructor.


proc constructShapeUpgradeClosedFaceDivide*(): ShapeUpgradeClosedFaceDivide {.
    constructor, importcpp: "ShapeUpgrade_ClosedFaceDivide(@)",
    header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc constructShapeUpgradeClosedFaceDivide*(f: TopoDS_Face): ShapeUpgradeClosedFaceDivide {.
    constructor, importcpp: "ShapeUpgrade_ClosedFaceDivide(@)",
    header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc splitSurface*(this: var ShapeUpgradeClosedFaceDivide): StandardBoolean {.
    importcpp: "SplitSurface", header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc setNbSplitPoints*(this: var ShapeUpgradeClosedFaceDivide; num: StandardInteger) {.
    importcpp: "SetNbSplitPoints", header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc getNbSplitPoints*(this: ShapeUpgradeClosedFaceDivide): StandardInteger {.
    noSideEffect, importcpp: "GetNbSplitPoints",
    header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
type
  ShapeUpgradeClosedFaceDividebaseType* = ShapeUpgradeFaceDivide

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_ClosedFaceDivide::get_type_name(@)",
                            header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_ClosedFaceDivide::get_type_descriptor(@)",
    header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc dynamicType*(this: ShapeUpgradeClosedFaceDivide): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_ClosedFaceDivide.hxx".}

