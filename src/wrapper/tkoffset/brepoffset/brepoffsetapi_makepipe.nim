import brepoffset_types
import ../../tkbrep/topods/topods_types
import ../../tkbrep/toptools/toptools_types

##  Created on: 1994-07-12
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"


proc newBRepOffsetAPI_MakePipe*(Spine: TopoDS_Wire; Profile: TopoDS_Shape): BRepOffsetAPI_MakePipe {.
    cdecl, constructor, importcpp: "BRepOffsetAPI_MakePipe(@)".}
# proc newBRepOffsetAPI_MakePipe*(Spine: TopoDS_Wire; Profile: TopoDS_Shape;
#                                aMode: GeomFill_Trihedron;
#                                ForceApproxC1: bool = false): BRepOffsetAPI_MakePipe {.
#     cdecl, constructor, importcpp: "BRepOffsetAPI_MakePipe(@)".}
# proc Pipe*(this: BRepOffsetAPI_MakePipe): BRepFill_Pipe {.noSideEffect, cdecl,
#     importcpp: "Pipe".}
# proc Build*(this: var BRepOffsetAPI_MakePipe;
#            theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
#     importcpp: "Build".}
proc FirstShape*(this: var BRepOffsetAPI_MakePipe): TopoDS_Shape {.cdecl,
    importcpp: "FirstShape".}
proc LastShape*(this: var BRepOffsetAPI_MakePipe): TopoDS_Shape {.cdecl,
    importcpp: "LastShape".}
proc Generated*(this: var BRepOffsetAPI_MakePipe; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Generated".}
proc Generated*(this: var BRepOffsetAPI_MakePipe; SSpine: TopoDS_Shape;
               SProfile: TopoDS_Shape): TopoDS_Shape {.cdecl,
    importcpp: "Generated".}
proc ErrorOnSurface*(this: BRepOffsetAPI_MakePipe): cfloat {.noSideEffect, cdecl,
    importcpp: "ErrorOnSurface".}