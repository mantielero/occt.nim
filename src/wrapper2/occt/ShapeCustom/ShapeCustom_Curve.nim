##  Created on: 2001-08-28
##  Created by: data exchange team
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Real

discard "forward decl of Geom_Curve"
type
  ShapeCustom_Curve* {.importcpp: "ShapeCustom_Curve",
                      header: "ShapeCustom_Curve.hxx", bycopy.} = object


proc constructShapeCustom_Curve*(): ShapeCustom_Curve {.constructor,
    importcpp: "ShapeCustom_Curve(@)", header: "ShapeCustom_Curve.hxx".}
proc constructShapeCustom_Curve*(C: handle[Geom_Curve]): ShapeCustom_Curve {.
    constructor, importcpp: "ShapeCustom_Curve(@)", header: "ShapeCustom_Curve.hxx".}
proc Init*(this: var ShapeCustom_Curve; C: handle[Geom_Curve]) {.importcpp: "Init",
    header: "ShapeCustom_Curve.hxx".}
proc ConvertToPeriodic*(this: var ShapeCustom_Curve; substitute: Standard_Boolean;
                       preci: Standard_Real = -1): handle[Geom_Curve] {.
    importcpp: "ConvertToPeriodic", header: "ShapeCustom_Curve.hxx".}