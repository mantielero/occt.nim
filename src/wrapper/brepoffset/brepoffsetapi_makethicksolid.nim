import brepoffset_types
import ../topods/topods_types
import ../toptools/toptools_types
import ../geomabs/geomabs_types
import ../message/message_types

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


proc newBRepOffsetAPI_MakeThickSolid*(): BRepOffsetAPI_MakeThickSolid {.cdecl,
    constructor, importcpp: "BRepOffsetAPI_MakeThickSolid(@)".}

proc makeThickSolidBySimple*(this: var BRepOffsetAPI_MakeThickSolid;
                            theS: TopoDS_Shape; theOffsetValue: cfloat) {.cdecl,
    importcpp: "MakeThickSolidBySimple".}

proc makeThickSolidByJoin*(this: var BRepOffsetAPI_MakeThickSolid; S: TopoDS_Shape;
                          ClosingFaces: TopTools_ListOfShape; Offset: cfloat;
                          Tol: cfloat; Mode: BRepOffset_Mode = BRepOffset_Skin;
                          Intersection: bool = false; SelfInter: bool = false;
                          Join: GeomAbs_JoinType = GeomAbs_Arc;
                          RemoveIntEdges: bool = false; theRange: Message_ProgressRange = Message_ProgressRange()) {.
    cdecl, importcpp: "MakeThickSolidByJoin".}

proc Build*(this: var BRepOffsetAPI_MakeThickSolid;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Build".}
    
proc Modified*(this: var BRepOffsetAPI_MakeThickSolid; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Modified".}