##  Created on: 1993-07-08
##  Created by: Remi LEQUETTE
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
  ../Standard/Standard_Handle, ../BRepLib/BRepLib_MakeWire,
  BRepBuilderAPI_MakeShape, ../TopTools/TopTools_ListOfShape,
  ../Standard/Standard_Boolean, BRepBuilderAPI_WireError

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"
type
  BRepBuilderAPI_MakeWire* {.importcpp: "BRepBuilderAPI_MakeWire",
                            header: "BRepBuilderAPI_MakeWire.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                          ## !
                                                                                                          ## Constructs
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## wire
                                                                                                          ## framework,
                                                                                                          ## to
                                                                                                          ## which
                                                                                                          ## edges
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## are
                                                                                                          ## added
                                                                                                          ## using
                                                                                                          ## the
                                                                                                          ## Add
                                                                                                          ## function.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## As
                                                                                                          ## soon
                                                                                                          ## as
                                                                                                          ## the
                                                                                                          ## wire
                                                                                                          ## contains
                                                                                                          ## one
                                                                                                          ## edge,
                                                                                                          ## it
                                                                                                          ## can
                                                                                                          ## return
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## with
                                                                                                          ## the
                                                                                                          ## use
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## function
                                                                                                          ## Wire.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Warning
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## The
                                                                                                          ## function
                                                                                                          ## Error
                                                                                                          ## will
                                                                                                          ## return
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## BRepBuilderAPI_EmptyWire
                                                                                                          ## if
                                                                                                          ## it
                                                                                                          ## is
                                                                                                          ## called
                                                                                                          ## before
                                                                                                          ## at
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## least
                                                                                                          ## one
                                                                                                          ## edge
                                                                                                          ## is
                                                                                                          ## added
                                                                                                          ## to
                                                                                                          ## the
                                                                                                          ## wire
                                                                                                          ## under
                                                                                                          ## construction.


proc constructBRepBuilderAPI_MakeWire*(): BRepBuilderAPI_MakeWire {.constructor,
    importcpp: "BRepBuilderAPI_MakeWire(@)", header: "BRepBuilderAPI_MakeWire.hxx".}
proc constructBRepBuilderAPI_MakeWire*(E: TopoDS_Edge): BRepBuilderAPI_MakeWire {.
    constructor, importcpp: "BRepBuilderAPI_MakeWire(@)",
    header: "BRepBuilderAPI_MakeWire.hxx".}
proc constructBRepBuilderAPI_MakeWire*(E1: TopoDS_Edge; E2: TopoDS_Edge): BRepBuilderAPI_MakeWire {.
    constructor, importcpp: "BRepBuilderAPI_MakeWire(@)",
    header: "BRepBuilderAPI_MakeWire.hxx".}
proc constructBRepBuilderAPI_MakeWire*(E1: TopoDS_Edge; E2: TopoDS_Edge;
                                      E3: TopoDS_Edge): BRepBuilderAPI_MakeWire {.
    constructor, importcpp: "BRepBuilderAPI_MakeWire(@)",
    header: "BRepBuilderAPI_MakeWire.hxx".}
proc constructBRepBuilderAPI_MakeWire*(E1: TopoDS_Edge; E2: TopoDS_Edge;
                                      E3: TopoDS_Edge; E4: TopoDS_Edge): BRepBuilderAPI_MakeWire {.
    constructor, importcpp: "BRepBuilderAPI_MakeWire(@)",
    header: "BRepBuilderAPI_MakeWire.hxx".}
proc constructBRepBuilderAPI_MakeWire*(W: TopoDS_Wire): BRepBuilderAPI_MakeWire {.
    constructor, importcpp: "BRepBuilderAPI_MakeWire(@)",
    header: "BRepBuilderAPI_MakeWire.hxx".}
proc constructBRepBuilderAPI_MakeWire*(W: TopoDS_Wire; E: TopoDS_Edge): BRepBuilderAPI_MakeWire {.
    constructor, importcpp: "BRepBuilderAPI_MakeWire(@)",
    header: "BRepBuilderAPI_MakeWire.hxx".}
proc Add*(this: var BRepBuilderAPI_MakeWire; E: TopoDS_Edge) {.importcpp: "Add",
    header: "BRepBuilderAPI_MakeWire.hxx".}
proc Add*(this: var BRepBuilderAPI_MakeWire; W: TopoDS_Wire) {.importcpp: "Add",
    header: "BRepBuilderAPI_MakeWire.hxx".}
proc Add*(this: var BRepBuilderAPI_MakeWire; L: TopTools_ListOfShape) {.
    importcpp: "Add", header: "BRepBuilderAPI_MakeWire.hxx".}
proc IsDone*(this: BRepBuilderAPI_MakeWire): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeWire.hxx".}
proc Error*(this: BRepBuilderAPI_MakeWire): BRepBuilderAPI_WireError {.noSideEffect,
    importcpp: "Error", header: "BRepBuilderAPI_MakeWire.hxx".}
proc Wire*(this: var BRepBuilderAPI_MakeWire): TopoDS_Wire {.importcpp: "Wire",
    header: "BRepBuilderAPI_MakeWire.hxx".}
converter `TopoDS_Wire`*(this: var BRepBuilderAPI_MakeWire): TopoDS_Wire {.
    importcpp: "BRepBuilderAPI_MakeWire::operator TopoDS_Wire",
    header: "BRepBuilderAPI_MakeWire.hxx".}
proc Edge*(this: BRepBuilderAPI_MakeWire): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "BRepBuilderAPI_MakeWire.hxx".}
proc Vertex*(this: BRepBuilderAPI_MakeWire): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "BRepBuilderAPI_MakeWire.hxx".}