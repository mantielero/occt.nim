##  Created on: 1993-01-21
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Vertex, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_MapOfShape, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../TopAbs/TopAbs_Orientation

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRepTools_WireExplorer* {.importcpp: "BRepTools_WireExplorer",
                           header: "BRepTools_WireExplorer.hxx", bycopy.} = object ## !
                                                                              ## Constructs an
                                                                              ## empty
                                                                              ## explorer
                                                                              ## (which
                                                                              ## can be
                                                                              ## initialized
                                                                              ## using
                                                                              ## Init)


proc constructBRepTools_WireExplorer*(): BRepTools_WireExplorer {.constructor,
    importcpp: "BRepTools_WireExplorer(@)", header: "BRepTools_WireExplorer.hxx".}
proc constructBRepTools_WireExplorer*(W: TopoDS_Wire): BRepTools_WireExplorer {.
    constructor, importcpp: "BRepTools_WireExplorer(@)",
    header: "BRepTools_WireExplorer.hxx".}
proc constructBRepTools_WireExplorer*(W: TopoDS_Wire; F: TopoDS_Face): BRepTools_WireExplorer {.
    constructor, importcpp: "BRepTools_WireExplorer(@)",
    header: "BRepTools_WireExplorer.hxx".}
proc Init*(this: var BRepTools_WireExplorer; W: TopoDS_Wire) {.importcpp: "Init",
    header: "BRepTools_WireExplorer.hxx".}
proc Init*(this: var BRepTools_WireExplorer; W: TopoDS_Wire; F: TopoDS_Face) {.
    importcpp: "Init", header: "BRepTools_WireExplorer.hxx".}
proc Init*(this: var BRepTools_WireExplorer; W: TopoDS_Wire; F: TopoDS_Face;
          UMin: Standard_Real; UMax: Standard_Real; VMin: Standard_Real;
          VMax: Standard_Real) {.importcpp: "Init",
                               header: "BRepTools_WireExplorer.hxx".}
proc More*(this: BRepTools_WireExplorer): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "BRepTools_WireExplorer.hxx".}
proc Next*(this: var BRepTools_WireExplorer) {.importcpp: "Next",
    header: "BRepTools_WireExplorer.hxx".}
proc Current*(this: BRepTools_WireExplorer): TopoDS_Edge {.noSideEffect,
    importcpp: "Current", header: "BRepTools_WireExplorer.hxx".}
proc Orientation*(this: BRepTools_WireExplorer): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "BRepTools_WireExplorer.hxx".}
proc CurrentVertex*(this: BRepTools_WireExplorer): TopoDS_Vertex {.noSideEffect,
    importcpp: "CurrentVertex", header: "BRepTools_WireExplorer.hxx".}
proc Clear*(this: var BRepTools_WireExplorer) {.importcpp: "Clear",
    header: "BRepTools_WireExplorer.hxx".}