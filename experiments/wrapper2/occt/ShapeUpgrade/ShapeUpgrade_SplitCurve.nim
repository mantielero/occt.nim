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

##  resolve name collisions with X11 headers

# when defined(Status):
#   discard
discard "forward decl of ShapeUpgrade_SplitCurve"
discard "forward decl of ShapeUpgrade_SplitCurve"
type
  HandleShapeUpgradeSplitCurve* = Handle[ShapeUpgradeSplitCurve]

## ! Splits a  curve with a  criterion.

type
  ShapeUpgradeSplitCurve* {.importcpp: "ShapeUpgrade_SplitCurve",
                           header: "ShapeUpgrade_SplitCurve.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor.


proc constructShapeUpgradeSplitCurve*(): ShapeUpgradeSplitCurve {.constructor,
    importcpp: "ShapeUpgrade_SplitCurve(@)", header: "ShapeUpgrade_SplitCurve.hxx".}
proc init*(this: var ShapeUpgradeSplitCurve; first: float; last: float) {.
    importcpp: "Init", header: "ShapeUpgrade_SplitCurve.hxx".}
proc setSplitValues*(this: var ShapeUpgradeSplitCurve;
                    splitValues: Handle[TColStdHSequenceOfReal]) {.
    importcpp: "SetSplitValues", header: "ShapeUpgrade_SplitCurve.hxx".}
proc build*(this: var ShapeUpgradeSplitCurve; segment: bool) {.importcpp: "Build",
    header: "ShapeUpgrade_SplitCurve.hxx".}
proc splitValues*(this: ShapeUpgradeSplitCurve): Handle[TColStdHSequenceOfReal] {.
    noSideEffect, importcpp: "SplitValues", header: "ShapeUpgrade_SplitCurve.hxx".}
proc compute*(this: var ShapeUpgradeSplitCurve) {.importcpp: "Compute",
    header: "ShapeUpgrade_SplitCurve.hxx".}
proc perform*(this: var ShapeUpgradeSplitCurve; segment: bool = true) {.
    importcpp: "Perform", header: "ShapeUpgrade_SplitCurve.hxx".}
proc status*(this: ShapeUpgradeSplitCurve; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_SplitCurve.hxx".}
type
  ShapeUpgradeSplitCurvebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_SplitCurve::get_type_name(@)",
                            header: "ShapeUpgrade_SplitCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_SplitCurve::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitCurve.hxx".}
proc dynamicType*(this: ShapeUpgradeSplitCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_SplitCurve.hxx".}
