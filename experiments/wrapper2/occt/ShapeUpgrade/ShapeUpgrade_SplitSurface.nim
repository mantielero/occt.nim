##  Created on: 1998-03-16
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

discard "forward decl of Geom_Surface"
discard "forward decl of ShapeExtend_CompositeSurface"
# when defined(Status):
#   discard
discard "forward decl of ShapeUpgrade_SplitSurface"
discard "forward decl of ShapeUpgrade_SplitSurface"
type
  HandleShapeUpgradeSplitSurface* = Handle[ShapeUpgradeSplitSurface]

## ! Splits a Surface with a criterion.

type
  ShapeUpgradeSplitSurface* {.importcpp: "ShapeUpgrade_SplitSurface",
                             header: "ShapeUpgrade_SplitSurface.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor.


proc constructShapeUpgradeSplitSurface*(): ShapeUpgradeSplitSurface {.constructor,
    importcpp: "ShapeUpgrade_SplitSurface(@)",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc init*(this: var ShapeUpgradeSplitSurface; s: Handle[GeomSurface]) {.
    importcpp: "Init", header: "ShapeUpgrade_SplitSurface.hxx".}
proc init*(this: var ShapeUpgradeSplitSurface; s: Handle[GeomSurface]; uFirst: float;
          uLast: float; vFirst: float; vLast: float) {.importcpp: "Init",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc setUSplitValues*(this: var ShapeUpgradeSplitSurface;
                     uValues: Handle[TColStdHSequenceOfReal]) {.
    importcpp: "SetUSplitValues", header: "ShapeUpgrade_SplitSurface.hxx".}
proc setVSplitValues*(this: var ShapeUpgradeSplitSurface;
                     vValues: Handle[TColStdHSequenceOfReal]) {.
    importcpp: "SetVSplitValues", header: "ShapeUpgrade_SplitSurface.hxx".}
proc build*(this: var ShapeUpgradeSplitSurface; segment: bool) {.importcpp: "Build",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc compute*(this: var ShapeUpgradeSplitSurface; segment: bool = true) {.
    importcpp: "Compute", header: "ShapeUpgrade_SplitSurface.hxx".}
proc perform*(this: var ShapeUpgradeSplitSurface; segment: bool = true) {.
    importcpp: "Perform", header: "ShapeUpgrade_SplitSurface.hxx".}
proc uSplitValues*(this: ShapeUpgradeSplitSurface): Handle[TColStdHSequenceOfReal] {.
    noSideEffect, importcpp: "USplitValues",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc vSplitValues*(this: ShapeUpgradeSplitSurface): Handle[TColStdHSequenceOfReal] {.
    noSideEffect, importcpp: "VSplitValues",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc status*(this: ShapeUpgradeSplitSurface; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_SplitSurface.hxx".}
proc resSurfaces*(this: ShapeUpgradeSplitSurface): Handle[
    ShapeExtendCompositeSurface] {.noSideEffect, importcpp: "ResSurfaces",
                                  header: "ShapeUpgrade_SplitSurface.hxx".}
type
  ShapeUpgradeSplitSurfacebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_SplitSurface::get_type_name(@)",
                            header: "ShapeUpgrade_SplitSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_SplitSurface::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc dynamicType*(this: ShapeUpgradeSplitSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_SplitSurface.hxx".}
