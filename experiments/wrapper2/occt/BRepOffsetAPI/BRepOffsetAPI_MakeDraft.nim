##  Created on: 1999-01-13
##  Created by: Philippe MANGIN
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Dir"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Shell"
type
  BRepOffsetAPI_MakeDraft* {.importcpp: "BRepOffsetAPI_MakeDraft",
                            header: "BRepOffsetAPI_MakeDraft.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                          ## !
                                                                                                          ## Constructs
                                                                                                          ## the
                                                                                                          ## draft
                                                                                                          ## surface
                                                                                                          ## object
                                                                                                          ## defined
                                                                                                          ## by
                                                                                                          ## the
                                                                                                          ## shape
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Shape,
                                                                                                          ## the
                                                                                                          ## direction
                                                                                                          ## Dir,
                                                                                                          ## and
                                                                                                          ## the
                                                                                                          ## angle
                                                                                                          ## Angle.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Shape
                                                                                                          ## must
                                                                                                          ## be
                                                                                                          ## a
                                                                                                          ## TopoDS_Wire,
                                                                                                          ## Topo_DS_Face
                                                                                                          ## or
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## TopoDS_Shell
                                                                                                          ## with
                                                                                                          ## free
                                                                                                          ## boundaries.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Exceptions
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Standard_NotDone
                                                                                                          ## if
                                                                                                          ## Shape
                                                                                                          ## is
                                                                                                          ## not
                                                                                                          ## a
                                                                                                          ## TopoDS_Wire,
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Topo_DS_Face
                                                                                                          ## or
                                                                                                          ## TopoDS_Shell
                                                                                                          ## with
                                                                                                          ## free
                                                                                                          ## boundaries.


proc constructBRepOffsetAPI_MakeDraft*(shape: TopoDS_Shape; dir: Dir; angle: cfloat): BRepOffsetAPI_MakeDraft {.
    constructor, importcpp: "BRepOffsetAPI_MakeDraft(@)",
    header: "BRepOffsetAPI_MakeDraft.hxx".}
proc setOptions*(this: var BRepOffsetAPI_MakeDraft; style: BRepBuilderAPI_TransitionMode = bRepBuilderAPI_RightCorner;
                angleMin: cfloat = 0.01; angleMax: cfloat = 3.0) {.
    importcpp: "SetOptions", header: "BRepOffsetAPI_MakeDraft.hxx".}
proc setDraft*(this: var BRepOffsetAPI_MakeDraft; isInternal: bool = false) {.
    importcpp: "SetDraft", header: "BRepOffsetAPI_MakeDraft.hxx".}
proc perform*(this: var BRepOffsetAPI_MakeDraft; lengthMax: cfloat) {.
    importcpp: "Perform", header: "BRepOffsetAPI_MakeDraft.hxx".}
proc perform*(this: var BRepOffsetAPI_MakeDraft; surface: Handle[GeomSurface];
             keepInsideSurface: bool = true) {.importcpp: "Perform",
    header: "BRepOffsetAPI_MakeDraft.hxx".}
proc perform*(this: var BRepOffsetAPI_MakeDraft; stopShape: TopoDS_Shape;
             keepOutSide: bool = true) {.importcpp: "Perform",
                                     header: "BRepOffsetAPI_MakeDraft.hxx".}
proc shell*(this: BRepOffsetAPI_MakeDraft): TopoDS_Shell {.noSideEffect,
    importcpp: "Shell", header: "BRepOffsetAPI_MakeDraft.hxx".}
proc generated*(this: var BRepOffsetAPI_MakeDraft; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_MakeDraft.hxx".}

























