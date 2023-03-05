import brepoffset_types
import ../tkbrep/topods/topods_types
import ../tkmath/geomabs/geomabs_types
import ../tkernel/message/message_types
import ../tkbrep/toptools/toptools_types


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


proc newBRepOffsetAPI_MakeOffset*(): BRepOffsetAPI_MakeOffset {.cdecl, constructor,
    importcpp: "BRepOffsetAPI_MakeOffset(@)".}
proc newBRepOffsetAPI_MakeOffset*(Spine: TopoDS_Face;
                                 Join: GeomAbs_JoinType = GeomAbs_Arc;
                                 IsOpenResult: bool = false): BRepOffsetAPI_MakeOffset {.
    cdecl, constructor, importcpp: "BRepOffsetAPI_MakeOffset(@)".}
proc Init*(this: var BRepOffsetAPI_MakeOffset; Spine: TopoDS_Face;
          Join: GeomAbs_JoinType = GeomAbs_Arc; IsOpenResult: bool = false) {.cdecl,
    importcpp: "Init".}
proc newBRepOffsetAPI_MakeOffset*(Spine: TopoDS_Wire;
                                 Join: GeomAbs_JoinType = GeomAbs_Arc;
                                 IsOpenResult: bool = false): BRepOffsetAPI_MakeOffset {.
    cdecl, constructor, importcpp: "BRepOffsetAPI_MakeOffset(@)".}
proc Init*(this: var BRepOffsetAPI_MakeOffset; Join: GeomAbs_JoinType = GeomAbs_Arc;
          IsOpenResult: bool = false) {.cdecl, importcpp: "Init".}
proc AddWire*(this: var BRepOffsetAPI_MakeOffset; Spine: TopoDS_Wire) {.cdecl,
    importcpp: "AddWire".}
proc Perform*(this: var BRepOffsetAPI_MakeOffset; Offset: cfloat; Alt: cfloat = 0.0) {.
    cdecl, importcpp: "Perform".}
proc Build*(this: var BRepOffsetAPI_MakeOffset;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Build".}
proc Generated*(this: var BRepOffsetAPI_MakeOffset; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Generated".}