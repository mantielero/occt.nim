import brepoffset_types
import ../tkbrep/topods/topods_types
import ../tkmath/geomabs/geomabs_types
import ../tkernel/message/message_types
import ../tkbrep/toptools/toptools_types


##  Created on: 1996-02-13
##  Created by: Yves FRICAUD
##  Copyright (c) 1996-1999 Matra Datavision
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

proc newBRepOffsetAPI_MakeOffsetShape*(): BRepOffsetAPI_MakeOffsetShape {.cdecl,
    constructor, importcpp: "BRepOffsetAPI_MakeOffsetShape(@)".}
proc PerformBySimple*(this: var BRepOffsetAPI_MakeOffsetShape; theS: TopoDS_Shape;
                     theOffsetValue: cfloat) {.cdecl, importcpp: "PerformBySimple",
    .}
proc PerformByJoin*(this: var BRepOffsetAPI_MakeOffsetShape; S: TopoDS_Shape;
                   Offset: cfloat; Tol: cfloat;
                   Mode: BRepOffset_Mode = BRepOffset_Skin;
                   Intersection: bool = false; SelfInter: bool = false;
                   Join: GeomAbs_JoinType = GeomAbs_Arc;
                   RemoveIntEdges: bool = false;
                   theRange: Message_ProgressRange = Message_ProgressRange()) {.
    cdecl, importcpp: "PerformByJoin".}
proc MakeOffset*(this: BRepOffsetAPI_MakeOffsetShape): BRepOffset_MakeOffset {.
    noSideEffect, cdecl, importcpp: "MakeOffset".}
proc Build*(this: var BRepOffsetAPI_MakeOffsetShape;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Build".}
proc Generated*(this: var BRepOffsetAPI_MakeOffsetShape; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Generated".}
proc Modified*(this: var BRepOffsetAPI_MakeOffsetShape; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Modified".}
proc IsDeleted*(this: var BRepOffsetAPI_MakeOffsetShape; S: TopoDS_Shape): bool {.
    cdecl, importcpp: "IsDeleted".}
proc GetJoinType*(this: BRepOffsetAPI_MakeOffsetShape): GeomAbs_JoinType {.
    noSideEffect, cdecl, importcpp: "GetJoinType".}