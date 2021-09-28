##  Created on: 1994-06-07
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of BRepFill_LocationLaw"
discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of BRepFill_Sweep"
type
  BRepFillPipe* {.importcpp: "BRepFill_Pipe", header: "BRepFill_Pipe.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Auxiliary
                                                                                     ## recursive
                                                                                     ## method
                                                                                     ## used
                                                                                     ## to
                                                                                     ## build
                                                                                     ## the
                                                                                     ##
                                                                                     ## !
                                                                                     ## result.


proc constructBRepFillPipe*(): BRepFillPipe {.constructor,
    importcpp: "BRepFill_Pipe(@)", header: "BRepFill_Pipe.hxx".}
proc constructBRepFillPipe*(spine: TopoDS_Wire; profile: TopoDS_Shape; aMode: GeomFillTrihedron = geomFillIsCorrectedFrenet;
                           forceApproxC1: bool = false;
                           generatePartCase: bool = false): BRepFillPipe {.
    constructor, importcpp: "BRepFill_Pipe(@)", header: "BRepFill_Pipe.hxx".}
proc perform*(this: var BRepFillPipe; spine: TopoDS_Wire; profile: TopoDS_Shape;
             generatePartCase: bool = false) {.importcpp: "Perform",
    header: "BRepFill_Pipe.hxx".}
proc spine*(this: BRepFillPipe): TopoDS_Shape {.noSideEffect, importcpp: "Spine",
    header: "BRepFill_Pipe.hxx".}
proc profile*(this: BRepFillPipe): TopoDS_Shape {.noSideEffect, importcpp: "Profile",
    header: "BRepFill_Pipe.hxx".}
proc shape*(this: BRepFillPipe): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BRepFill_Pipe.hxx".}
proc errorOnSurface*(this: BRepFillPipe): cfloat {.noSideEffect,
    importcpp: "ErrorOnSurface", header: "BRepFill_Pipe.hxx".}
proc firstShape*(this: BRepFillPipe): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "BRepFill_Pipe.hxx".}
proc lastShape*(this: BRepFillPipe): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "BRepFill_Pipe.hxx".}
proc generated*(this: var BRepFillPipe; s: TopoDS_Shape; L: var TopToolsListOfShape) {.
    importcpp: "Generated", header: "BRepFill_Pipe.hxx".}
proc face*(this: var BRepFillPipe; eSpine: TopoDS_Edge; eProfile: TopoDS_Edge): TopoDS_Face {.
    importcpp: "Face", header: "BRepFill_Pipe.hxx".}
proc edge*(this: var BRepFillPipe; eSpine: TopoDS_Edge; vProfile: TopoDS_Vertex): TopoDS_Edge {.
    importcpp: "Edge", header: "BRepFill_Pipe.hxx".}
proc section*(this: BRepFillPipe; vSpine: TopoDS_Vertex): TopoDS_Shape {.noSideEffect,
    importcpp: "Section", header: "BRepFill_Pipe.hxx".}
proc pipeLine*(this: var BRepFillPipe; point: Pnt): TopoDS_Wire {.
    importcpp: "PipeLine", header: "BRepFill_Pipe.hxx".}

























