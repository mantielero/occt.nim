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
proc constructBRepOffsetAPI_MakeOffset*(spine: TopoDS_Face;
                                       join: GeomAbsJoinType = geomAbsArc;
                                       isOpenResult: bool = false): BRepOffsetAPI_MakeOffset {.
    constructor, importcpp: "BRepOffsetAPI_MakeOffset(@)",
    header: "BRepOffsetAPI_MakeOffset.hxx".}
proc init*(this: var BRepOffsetAPI_MakeOffset; spine: TopoDS_Face;
          join: GeomAbsJoinType = geomAbsArc; isOpenResult: bool = false) {.
    importcpp: "Init", header: "BRepOffsetAPI_MakeOffset.hxx".}
proc constructBRepOffsetAPI_MakeOffset*(spine: TopoDS_Wire;
                                       join: GeomAbsJoinType = geomAbsArc;
                                       isOpenResult: bool = false): BRepOffsetAPI_MakeOffset {.
    constructor, importcpp: "BRepOffsetAPI_MakeOffset(@)",
    header: "BRepOffsetAPI_MakeOffset.hxx".}
proc init*(this: var BRepOffsetAPI_MakeOffset; join: GeomAbsJoinType = geomAbsArc;
          isOpenResult: bool = false) {.importcpp: "Init",
                                    header: "BRepOffsetAPI_MakeOffset.hxx".}
proc addWire*(this: var BRepOffsetAPI_MakeOffset; spine: TopoDS_Wire) {.
    importcpp: "AddWire", header: "BRepOffsetAPI_MakeOffset.hxx".}
proc perform*(this: var BRepOffsetAPI_MakeOffset; offset: cfloat; alt: cfloat = 0.0) {.
    importcpp: "Perform", header: "BRepOffsetAPI_MakeOffset.hxx".}
proc build*(this: var BRepOffsetAPI_MakeOffset) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakeOffset.hxx".}
proc generated*(this: var BRepOffsetAPI_MakeOffset; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_MakeOffset.hxx".}

























