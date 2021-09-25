##  Created on: 1993-06-08
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopoDS_Shape"
type
  BRepSweepTool* {.importcpp: "BRepSweep_Tool", header: "BRepSweep_Tool.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Initialize
                                                                                        ## the
                                                                                        ## tool
                                                                                        ## with
                                                                                        ## <aShape>.
                                                                                        ## The
                                                                                        ## IndexTool
                                                                                        ##
                                                                                        ## !
                                                                                        ## must
                                                                                        ## prepare
                                                                                        ## an
                                                                                        ## indexation
                                                                                        ## for
                                                                                        ## all
                                                                                        ## the
                                                                                        ## subshapes
                                                                                        ##
                                                                                        ## !
                                                                                        ## of
                                                                                        ## this
                                                                                        ## shape.


proc constructBRepSweepTool*(aShape: TopoDS_Shape): BRepSweepTool {.constructor,
    importcpp: "BRepSweep_Tool(@)", header: "BRepSweep_Tool.hxx".}
proc nbShapes*(this: BRepSweepTool): int {.noSideEffect, importcpp: "NbShapes",
                                       header: "BRepSweep_Tool.hxx".}
proc index*(this: BRepSweepTool; aShape: TopoDS_Shape): int {.noSideEffect,
    importcpp: "Index", header: "BRepSweep_Tool.hxx".}
proc shape*(this: BRepSweepTool; anIndex: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepSweep_Tool.hxx".}
proc `type`*(this: BRepSweepTool; aShape: TopoDS_Shape): TopAbsShapeEnum {.
    noSideEffect, importcpp: "Type", header: "BRepSweep_Tool.hxx".}
proc orientation*(this: BRepSweepTool; aShape: TopoDS_Shape): TopAbsOrientation {.
    noSideEffect, importcpp: "Orientation", header: "BRepSweep_Tool.hxx".}
proc setOrientation*(this: BRepSweepTool; aShape: var TopoDS_Shape;
                    `or`: TopAbsOrientation) {.noSideEffect,
    importcpp: "SetOrientation", header: "BRepSweep_Tool.hxx".}
