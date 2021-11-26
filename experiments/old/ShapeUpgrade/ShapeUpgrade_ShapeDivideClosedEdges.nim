##  Created on: 2000-05-25
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ShapeUpgradeShapeDivideClosedEdges* {.importcpp: "ShapeUpgrade_ShapeDivideClosedEdges", header: "ShapeUpgrade_ShapeDivideClosedEdges.hxx",
                                       bycopy.} = object of ShapeUpgradeShapeDivide ## !
                                                                               ## Initialises
                                                                               ## tool
                                                                               ## with
                                                                               ## shape
                                                                               ## and
                                                                               ## default
                                                                               ## parameter.


proc constructShapeUpgradeShapeDivideClosedEdges*(s: TopoDS_Shape): ShapeUpgradeShapeDivideClosedEdges {.
    constructor, importcpp: "ShapeUpgrade_ShapeDivideClosedEdges(@)",
    header: "ShapeUpgrade_ShapeDivideClosedEdges.hxx".}
proc setNbSplitPoints*(this: var ShapeUpgradeShapeDivideClosedEdges; num: cint) {.
    importcpp: "SetNbSplitPoints",
    header: "ShapeUpgrade_ShapeDivideClosedEdges.hxx".}

























