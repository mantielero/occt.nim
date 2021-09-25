##  Created on: 1999-08-31
##  Created by: Pavel DURANDIN
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

discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeUpgrade_Tool"
discard "forward decl of ShapeUpgrade_Tool"
type
  HandleShapeUpgradeTool* = Handle[ShapeUpgradeTool]

## ! Tool is a root class for splitting classes
## ! Provides context for recording changes, basic
## ! precision value and limit (minimal and maximal)
## ! values for tolerances

type
  ShapeUpgradeTool* {.importcpp: "ShapeUpgrade_Tool",
                     header: "ShapeUpgrade_Tool.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor


proc constructShapeUpgradeTool*(): ShapeUpgradeTool {.constructor,
    importcpp: "ShapeUpgrade_Tool(@)", header: "ShapeUpgrade_Tool.hxx".}
proc set*(this: var ShapeUpgradeTool; tool: Handle[ShapeUpgradeTool]) {.
    importcpp: "Set", header: "ShapeUpgrade_Tool.hxx".}
proc setContext*(this: var ShapeUpgradeTool; context: Handle[ShapeBuildReShape]) {.
    importcpp: "SetContext", header: "ShapeUpgrade_Tool.hxx".}
proc context*(this: ShapeUpgradeTool): Handle[ShapeBuildReShape] {.noSideEffect,
    importcpp: "Context", header: "ShapeUpgrade_Tool.hxx".}
proc setPrecision*(this: var ShapeUpgradeTool; preci: float) {.
    importcpp: "SetPrecision", header: "ShapeUpgrade_Tool.hxx".}
proc precision*(this: ShapeUpgradeTool): float {.noSideEffect,
    importcpp: "Precision", header: "ShapeUpgrade_Tool.hxx".}
proc setMinTolerance*(this: var ShapeUpgradeTool; mintol: float) {.
    importcpp: "SetMinTolerance", header: "ShapeUpgrade_Tool.hxx".}
proc minTolerance*(this: ShapeUpgradeTool): float {.noSideEffect,
    importcpp: "MinTolerance", header: "ShapeUpgrade_Tool.hxx".}
proc setMaxTolerance*(this: var ShapeUpgradeTool; maxtol: float) {.
    importcpp: "SetMaxTolerance", header: "ShapeUpgrade_Tool.hxx".}
proc maxTolerance*(this: ShapeUpgradeTool): float {.noSideEffect,
    importcpp: "MaxTolerance", header: "ShapeUpgrade_Tool.hxx".}
proc limitTolerance*(this: ShapeUpgradeTool; toler: float): float {.noSideEffect,
    importcpp: "LimitTolerance", header: "ShapeUpgrade_Tool.hxx".}
type
  ShapeUpgradeToolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_Tool::get_type_name(@)",
                            header: "ShapeUpgrade_Tool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_Tool::get_type_descriptor(@)",
    header: "ShapeUpgrade_Tool.hxx".}
proc dynamicType*(this: ShapeUpgradeTool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeUpgrade_Tool.hxx".}
