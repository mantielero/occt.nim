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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Wire, ../TopoDS/TopoDS_Shape,
  ../gp/gp_Trsf, ../TopTools/TopTools_HArray2OfShape,
  ../TopTools/TopTools_MapOfShape, BRepFill_DataMapOfShapeHArray2OfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../Standard/Standard_Integer,
  ../GeomAbs/GeomAbs_Shape, ../GeomFill/GeomFill_Trihedron,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

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
  BRepFill_Pipe* {.importcpp: "BRepFill_Pipe", header: "BRepFill_Pipe.hxx", bycopy.} = object ##
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


proc constructBRepFill_Pipe*(): BRepFill_Pipe {.constructor,
    importcpp: "BRepFill_Pipe(@)", header: "BRepFill_Pipe.hxx".}
proc constructBRepFill_Pipe*(Spine: TopoDS_Wire; Profile: TopoDS_Shape; aMode: GeomFill_Trihedron = GeomFill_IsCorrectedFrenet;
                            ForceApproxC1: Standard_Boolean = Standard_False;
                            GeneratePartCase: Standard_Boolean = Standard_False): BRepFill_Pipe {.
    constructor, importcpp: "BRepFill_Pipe(@)", header: "BRepFill_Pipe.hxx".}
proc Perform*(this: var BRepFill_Pipe; Spine: TopoDS_Wire; Profile: TopoDS_Shape;
             GeneratePartCase: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "BRepFill_Pipe.hxx".}
proc Spine*(this: BRepFill_Pipe): TopoDS_Shape {.noSideEffect, importcpp: "Spine",
    header: "BRepFill_Pipe.hxx".}
proc Profile*(this: BRepFill_Pipe): TopoDS_Shape {.noSideEffect,
    importcpp: "Profile", header: "BRepFill_Pipe.hxx".}
proc Shape*(this: BRepFill_Pipe): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BRepFill_Pipe.hxx".}
proc ErrorOnSurface*(this: BRepFill_Pipe): Standard_Real {.noSideEffect,
    importcpp: "ErrorOnSurface", header: "BRepFill_Pipe.hxx".}
proc FirstShape*(this: BRepFill_Pipe): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "BRepFill_Pipe.hxx".}
proc LastShape*(this: BRepFill_Pipe): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "BRepFill_Pipe.hxx".}
proc Generated*(this: var BRepFill_Pipe; S: TopoDS_Shape; L: var TopTools_ListOfShape) {.
    importcpp: "Generated", header: "BRepFill_Pipe.hxx".}
proc Face*(this: var BRepFill_Pipe; ESpine: TopoDS_Edge; EProfile: TopoDS_Edge): TopoDS_Face {.
    importcpp: "Face", header: "BRepFill_Pipe.hxx".}
proc Edge*(this: var BRepFill_Pipe; ESpine: TopoDS_Edge; VProfile: TopoDS_Vertex): TopoDS_Edge {.
    importcpp: "Edge", header: "BRepFill_Pipe.hxx".}
proc Section*(this: BRepFill_Pipe; VSpine: TopoDS_Vertex): TopoDS_Shape {.
    noSideEffect, importcpp: "Section", header: "BRepFill_Pipe.hxx".}
proc PipeLine*(this: var BRepFill_Pipe; Point: gp_Pnt): TopoDS_Wire {.
    importcpp: "PipeLine", header: "BRepFill_Pipe.hxx".}