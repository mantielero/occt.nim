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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Transient

discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeUpgrade_Tool"
discard "forward decl of ShapeUpgrade_Tool"
type
  Handle_ShapeUpgrade_Tool* = handle[ShapeUpgrade_Tool]

## ! Tool is a root class for splitting classes
## ! Provides context for recording changes, basic
## ! precision value and limit (minimal and maximal)
## ! values for tolerances

type
  ShapeUpgrade_Tool* {.importcpp: "ShapeUpgrade_Tool",
                      header: "ShapeUpgrade_Tool.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructShapeUpgrade_Tool*(): ShapeUpgrade_Tool {.constructor,
    importcpp: "ShapeUpgrade_Tool(@)", header: "ShapeUpgrade_Tool.hxx".}
proc Set*(this: var ShapeUpgrade_Tool; tool: handle[ShapeUpgrade_Tool]) {.
    importcpp: "Set", header: "ShapeUpgrade_Tool.hxx".}
proc SetContext*(this: var ShapeUpgrade_Tool; context: handle[ShapeBuild_ReShape]) {.
    importcpp: "SetContext", header: "ShapeUpgrade_Tool.hxx".}
proc Context*(this: ShapeUpgrade_Tool): handle[ShapeBuild_ReShape] {.noSideEffect,
    importcpp: "Context", header: "ShapeUpgrade_Tool.hxx".}
proc SetPrecision*(this: var ShapeUpgrade_Tool; preci: Standard_Real) {.
    importcpp: "SetPrecision", header: "ShapeUpgrade_Tool.hxx".}
proc Precision*(this: ShapeUpgrade_Tool): Standard_Real {.noSideEffect,
    importcpp: "Precision", header: "ShapeUpgrade_Tool.hxx".}
proc SetMinTolerance*(this: var ShapeUpgrade_Tool; mintol: Standard_Real) {.
    importcpp: "SetMinTolerance", header: "ShapeUpgrade_Tool.hxx".}
proc MinTolerance*(this: ShapeUpgrade_Tool): Standard_Real {.noSideEffect,
    importcpp: "MinTolerance", header: "ShapeUpgrade_Tool.hxx".}
proc SetMaxTolerance*(this: var ShapeUpgrade_Tool; maxtol: Standard_Real) {.
    importcpp: "SetMaxTolerance", header: "ShapeUpgrade_Tool.hxx".}
proc MaxTolerance*(this: ShapeUpgrade_Tool): Standard_Real {.noSideEffect,
    importcpp: "MaxTolerance", header: "ShapeUpgrade_Tool.hxx".}
proc LimitTolerance*(this: ShapeUpgrade_Tool; toler: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "LimitTolerance", header: "ShapeUpgrade_Tool.hxx".}
type
  ShapeUpgrade_Toolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_Tool::get_type_name(@)",
                              header: "ShapeUpgrade_Tool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_Tool::get_type_descriptor(@)",
    header: "ShapeUpgrade_Tool.hxx".}
proc DynamicType*(this: ShapeUpgrade_Tool): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeUpgrade_Tool.hxx".}