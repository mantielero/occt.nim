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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ShapeUpgrade_ShapeDivide,
  ../Standard/Standard_Integer

discard "forward decl of TopoDS_Shape"
type
  ShapeUpgrade_ShapeDivideClosed* {.importcpp: "ShapeUpgrade_ShapeDivideClosed", header: "ShapeUpgrade_ShapeDivideClosed.hxx",
                                   bycopy.} = object of ShapeUpgrade_ShapeDivide ## !
                                                                            ## Initialises tool with
                                                                            ## shape and
                                                                            ## default
                                                                            ## parameter.


proc constructShapeUpgrade_ShapeDivideClosed*(S: TopoDS_Shape): ShapeUpgrade_ShapeDivideClosed {.
    constructor, importcpp: "ShapeUpgrade_ShapeDivideClosed(@)",
    header: "ShapeUpgrade_ShapeDivideClosed.hxx".}
proc SetNbSplitPoints*(this: var ShapeUpgrade_ShapeDivideClosed;
                      num: Standard_Integer) {.importcpp: "SetNbSplitPoints",
    header: "ShapeUpgrade_ShapeDivideClosed.hxx".}