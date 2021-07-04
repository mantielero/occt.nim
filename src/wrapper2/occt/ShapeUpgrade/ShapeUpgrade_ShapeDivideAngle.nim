##  Created on: 1999-05-06
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
  ../Standard/Standard_Handle, ShapeUpgrade_ShapeDivide, ../Standard/Standard_Real

discard "forward decl of TopoDS_Shape"
type
  ShapeUpgrade_ShapeDivideAngle* {.importcpp: "ShapeUpgrade_ShapeDivideAngle",
                                  header: "ShapeUpgrade_ShapeDivideAngle.hxx",
                                  bycopy.} = object of ShapeUpgrade_ShapeDivide ## ! Empty
                                                                           ## constructor.


proc constructShapeUpgrade_ShapeDivideAngle*(MaxAngle: Standard_Real): ShapeUpgrade_ShapeDivideAngle {.
    constructor, importcpp: "ShapeUpgrade_ShapeDivideAngle(@)",
    header: "ShapeUpgrade_ShapeDivideAngle.hxx".}
proc constructShapeUpgrade_ShapeDivideAngle*(MaxAngle: Standard_Real;
    S: TopoDS_Shape): ShapeUpgrade_ShapeDivideAngle {.constructor,
    importcpp: "ShapeUpgrade_ShapeDivideAngle(@)",
    header: "ShapeUpgrade_ShapeDivideAngle.hxx".}
proc InitTool*(this: var ShapeUpgrade_ShapeDivideAngle; MaxAngle: Standard_Real) {.
    importcpp: "InitTool", header: "ShapeUpgrade_ShapeDivideAngle.hxx".}
proc SetMaxAngle*(this: var ShapeUpgrade_ShapeDivideAngle; MaxAngle: Standard_Real) {.
    importcpp: "SetMaxAngle", header: "ShapeUpgrade_ShapeDivideAngle.hxx".}
proc MaxAngle*(this: ShapeUpgrade_ShapeDivideAngle): Standard_Real {.noSideEffect,
    importcpp: "MaxAngle", header: "ShapeUpgrade_ShapeDivideAngle.hxx".}