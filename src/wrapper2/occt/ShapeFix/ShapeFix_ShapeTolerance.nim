##  Created on: 1998-07-22
##  Created by: data exchange team
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

discard "forward decl of TopoDS_Shape"
type
  ShapeFixShapeTolerance* {.importcpp: "ShapeFix_ShapeTolerance",
                           header: "ShapeFix_ShapeTolerance.hxx", bycopy.} = object


proc constructShapeFixShapeTolerance*(): ShapeFixShapeTolerance {.constructor,
    importcpp: "ShapeFix_ShapeTolerance(@)", header: "ShapeFix_ShapeTolerance.hxx".}
proc limitTolerance*(this: ShapeFixShapeTolerance; shape: TopoDS_Shape;
                    tmin: StandardReal; tmax: StandardReal = 0.0;
                    styp: TopAbsShapeEnum = topAbsSHAPE): StandardBoolean {.
    noSideEffect, importcpp: "LimitTolerance",
    header: "ShapeFix_ShapeTolerance.hxx".}
proc setTolerance*(this: ShapeFixShapeTolerance; shape: TopoDS_Shape;
                  preci: StandardReal; styp: TopAbsShapeEnum = topAbsSHAPE) {.
    noSideEffect, importcpp: "SetTolerance", header: "ShapeFix_ShapeTolerance.hxx".}

