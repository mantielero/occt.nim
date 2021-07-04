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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_JoinType, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_ListOfShape, ../BRepFill/BRepFill_ListOfOffsetWire,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
type
  BRepOffsetAPI_MakeOffset* {.importcpp: "BRepOffsetAPI_MakeOffset",
                             header: "BRepOffsetAPI_MakeOffset.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                            ## !
                                                                                                            ## Constructs
                                                                                                            ## an
                                                                                                            ## algorithm
                                                                                                            ## for
                                                                                                            ## creating
                                                                                                            ## an
                                                                                                            ## empty
                                                                                                            ## offset


proc constructBRepOffsetAPI_MakeOffset*(): BRepOffsetAPI_MakeOffset {.constructor,
    importcpp: "BRepOffsetAPI_MakeOffset(@)",
    header: "BRepOffsetAPI_MakeOffset.hxx".}
proc constructBRepOffsetAPI_MakeOffset*(Spine: TopoDS_Face;
                                       Join: GeomAbs_JoinType = GeomAbs_Arc;
    IsOpenResult: Standard_Boolean = Standard_False): BRepOffsetAPI_MakeOffset {.
    constructor, importcpp: "BRepOffsetAPI_MakeOffset(@)",
    header: "BRepOffsetAPI_MakeOffset.hxx".}
proc Init*(this: var BRepOffsetAPI_MakeOffset; Spine: TopoDS_Face;
          Join: GeomAbs_JoinType = GeomAbs_Arc;
          IsOpenResult: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "BRepOffsetAPI_MakeOffset.hxx".}
proc constructBRepOffsetAPI_MakeOffset*(Spine: TopoDS_Wire;
                                       Join: GeomAbs_JoinType = GeomAbs_Arc;
    IsOpenResult: Standard_Boolean = Standard_False): BRepOffsetAPI_MakeOffset {.
    constructor, importcpp: "BRepOffsetAPI_MakeOffset(@)",
    header: "BRepOffsetAPI_MakeOffset.hxx".}
proc Init*(this: var BRepOffsetAPI_MakeOffset; Join: GeomAbs_JoinType = GeomAbs_Arc;
          IsOpenResult: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "BRepOffsetAPI_MakeOffset.hxx".}
proc AddWire*(this: var BRepOffsetAPI_MakeOffset; Spine: TopoDS_Wire) {.
    importcpp: "AddWire", header: "BRepOffsetAPI_MakeOffset.hxx".}
proc Perform*(this: var BRepOffsetAPI_MakeOffset; Offset: Standard_Real;
             Alt: Standard_Real = 0.0) {.importcpp: "Perform",
                                     header: "BRepOffsetAPI_MakeOffset.hxx".}
proc Build*(this: var BRepOffsetAPI_MakeOffset) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakeOffset.hxx".}
proc Generated*(this: var BRepOffsetAPI_MakeOffset; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_MakeOffset.hxx".}