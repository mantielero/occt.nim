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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_IndexedMapOfShape,
  ../Standard/Standard_Integer, ../TopAbs/TopAbs_ShapeEnum,
  ../TopAbs/TopAbs_Orientation

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopoDS_Shape"
type
  BRepSweep_Tool* {.importcpp: "BRepSweep_Tool", header: "BRepSweep_Tool.hxx", bycopy.} = object ##
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


proc constructBRepSweep_Tool*(aShape: TopoDS_Shape): BRepSweep_Tool {.constructor,
    importcpp: "BRepSweep_Tool(@)", header: "BRepSweep_Tool.hxx".}
proc NbShapes*(this: BRepSweep_Tool): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "BRepSweep_Tool.hxx".}
proc Index*(this: BRepSweep_Tool; aShape: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "BRepSweep_Tool.hxx".}
proc Shape*(this: BRepSweep_Tool; anIndex: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "BRepSweep_Tool.hxx".}
proc Type*(this: BRepSweep_Tool; aShape: TopoDS_Shape): TopAbs_ShapeEnum {.
    noSideEffect, importcpp: "Type", header: "BRepSweep_Tool.hxx".}
proc Orientation*(this: BRepSweep_Tool; aShape: TopoDS_Shape): TopAbs_Orientation {.
    noSideEffect, importcpp: "Orientation", header: "BRepSweep_Tool.hxx".}
proc SetOrientation*(this: BRepSweep_Tool; aShape: var TopoDS_Shape;
                    Or: TopAbs_Orientation) {.noSideEffect,
    importcpp: "SetOrientation", header: "BRepSweep_Tool.hxx".}