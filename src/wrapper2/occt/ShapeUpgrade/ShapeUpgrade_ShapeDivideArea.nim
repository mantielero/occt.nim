##  Created on: 2006-08-08
##  Created by: Galina KULIKOVA
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ShapeUpgrade_ShapeDivide

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeUpgrade_FaceDivide"
type
  ShapeUpgrade_ShapeDivideArea* {.importcpp: "ShapeUpgrade_ShapeDivideArea",
                                 header: "ShapeUpgrade_ShapeDivideArea.hxx",
                                 bycopy.} = object of ShapeUpgrade_ShapeDivide ## !
                                                                          ## Returns the tool for
                                                                          ## splitting faces.


proc constructShapeUpgrade_ShapeDivideArea*(): ShapeUpgrade_ShapeDivideArea {.
    constructor, importcpp: "ShapeUpgrade_ShapeDivideArea(@)",
    header: "ShapeUpgrade_ShapeDivideArea.hxx".}
proc constructShapeUpgrade_ShapeDivideArea*(S: TopoDS_Shape): ShapeUpgrade_ShapeDivideArea {.
    constructor, importcpp: "ShapeUpgrade_ShapeDivideArea(@)",
    header: "ShapeUpgrade_ShapeDivideArea.hxx".}
proc MaxArea*(this: var ShapeUpgrade_ShapeDivideArea): var Standard_Real {.
    importcpp: "MaxArea", header: "ShapeUpgrade_ShapeDivideArea.hxx".}