import brepoffset_types
import ../topods/topods_types
import ../geomabs/geomabs_types
import ../message/message_types
import ../toptools/toptools_types

##  Created on: 1995-09-18
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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


proc newBRepOffsetAPI_MakeEvolved*(): BRepOffsetAPI_MakeEvolved {.cdecl,
    constructor, importcpp: "BRepOffsetAPI_MakeEvolved(@)".}
proc newBRepOffsetAPI_MakeEvolved*(theSpine: TopoDS_Shape; theProfile: TopoDS_Wire;
                                  theJoinType: GeomAbs_JoinType = GeomAbs_Arc;
                                  theIsAxeProf: bool = true;
                                  theIsSolid: bool = false;
                                  theIsProfOnSpine: bool = false;
                                  theTol: cfloat = 0.0000001;
                                  theIsVolume: bool = false;
                                  theRunInParallel: bool = false): BRepOffsetAPI_MakeEvolved {.
    cdecl, constructor, importcpp: "BRepOffsetAPI_MakeEvolved(@)".}
# proc Evolved*(this: BRepOffsetAPI_MakeEvolved): BRepFill_Evolved {.noSideEffect,
#     cdecl, importcpp: "Evolved".}
proc Build*(this: var BRepOffsetAPI_MakeEvolved;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Build".}
proc GeneratedShapes*(this: BRepOffsetAPI_MakeEvolved; SpineShape: TopoDS_Shape;
                     ProfShape: TopoDS_Shape): TopTools_ListOfShape {.noSideEffect,
    cdecl, importcpp: "GeneratedShapes".}
proc Top*(this: BRepOffsetAPI_MakeEvolved): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Top".}
proc Bottom*(this: BRepOffsetAPI_MakeEvolved): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Bottom".}