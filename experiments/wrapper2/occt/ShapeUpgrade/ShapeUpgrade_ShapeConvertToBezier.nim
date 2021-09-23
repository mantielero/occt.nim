##  Created on: 1999-05-14
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ShapeUpgrade_ShapeDivide

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeUpgrade_FaceDivide"
discard "forward decl of Message_Msg"
type
  ShapeUpgrade_ShapeConvertToBezier* {.importcpp: "ShapeUpgrade_ShapeConvertToBezier", header: "ShapeUpgrade_ShapeConvertToBezier.hxx",
                                      bycopy.} = object of ShapeUpgrade_ShapeDivide ## !
                                                                               ## Empty
                                                                               ## constructor.
                                                                               ## !
                                                                               ## Returns
                                                                               ## the
                                                                               ## tool
                                                                               ## for
                                                                               ## dividing
                                                                               ## faces.


proc constructShapeUpgrade_ShapeConvertToBezier*(): ShapeUpgrade_ShapeConvertToBezier {.
    constructor, importcpp: "ShapeUpgrade_ShapeConvertToBezier(@)",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc constructShapeUpgrade_ShapeConvertToBezier*(S: TopoDS_Shape): ShapeUpgrade_ShapeConvertToBezier {.
    constructor, importcpp: "ShapeUpgrade_ShapeConvertToBezier(@)",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc Set2dConversion*(this: var ShapeUpgrade_ShapeConvertToBezier;
                     mode: Standard_Boolean) {.importcpp: "Set2dConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc Get2dConversion*(this: ShapeUpgrade_ShapeConvertToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "Get2dConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc Set3dConversion*(this: var ShapeUpgrade_ShapeConvertToBezier;
                     mode: Standard_Boolean) {.importcpp: "Set3dConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc Get3dConversion*(this: ShapeUpgrade_ShapeConvertToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "Get3dConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc SetSurfaceConversion*(this: var ShapeUpgrade_ShapeConvertToBezier;
                          mode: Standard_Boolean) {.
    importcpp: "SetSurfaceConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc GetSurfaceConversion*(this: ShapeUpgrade_ShapeConvertToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "GetSurfaceConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc Set3dLineConversion*(this: var ShapeUpgrade_ShapeConvertToBezier;
                         mode: Standard_Boolean) {.
    importcpp: "Set3dLineConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc Get3dLineConversion*(this: ShapeUpgrade_ShapeConvertToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "Get3dLineConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc Set3dCircleConversion*(this: var ShapeUpgrade_ShapeConvertToBezier;
                           mode: Standard_Boolean) {.
    importcpp: "Set3dCircleConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc Get3dCircleConversion*(this: ShapeUpgrade_ShapeConvertToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "Get3dCircleConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc Set3dConicConversion*(this: var ShapeUpgrade_ShapeConvertToBezier;
                          mode: Standard_Boolean) {.
    importcpp: "Set3dConicConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc Get3dConicConversion*(this: ShapeUpgrade_ShapeConvertToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "Get3dConicConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc SetPlaneMode*(this: var ShapeUpgrade_ShapeConvertToBezier;
                  mode: Standard_Boolean) {.importcpp: "SetPlaneMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc GetPlaneMode*(this: ShapeUpgrade_ShapeConvertToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "GetPlaneMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc SetRevolutionMode*(this: var ShapeUpgrade_ShapeConvertToBezier;
                       mode: Standard_Boolean) {.importcpp: "SetRevolutionMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc GetRevolutionMode*(this: ShapeUpgrade_ShapeConvertToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "GetRevolutionMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc SetExtrusionMode*(this: var ShapeUpgrade_ShapeConvertToBezier;
                      mode: Standard_Boolean) {.importcpp: "SetExtrusionMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc GetExtrusionMode*(this: ShapeUpgrade_ShapeConvertToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "GetExtrusionMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc SetBSplineMode*(this: var ShapeUpgrade_ShapeConvertToBezier;
                    mode: Standard_Boolean) {.importcpp: "SetBSplineMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc GetBSplineMode*(this: ShapeUpgrade_ShapeConvertToBezier): Standard_Boolean {.
    noSideEffect, importcpp: "GetBSplineMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc Perform*(this: var ShapeUpgrade_ShapeConvertToBezier;
             newContext: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "Perform", header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}