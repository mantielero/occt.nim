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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepFill/BRepFill_Draft,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../Standard/Standard_Real,
  ../BRepBuilderAPI/BRepBuilderAPI_TransitionMode, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_ListOfShape

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


proc constructBRepOffsetAPI_MakeDraft*(Shape: TopoDS_Shape; Dir: gp_Dir;
                                      Angle: Standard_Real): BRepOffsetAPI_MakeDraft {.
    constructor, importcpp: "BRepOffsetAPI_MakeDraft(@)",
    header: "BRepOffsetAPI_MakeDraft.hxx".}
proc SetOptions*(this: var BRepOffsetAPI_MakeDraft; Style: BRepBuilderAPI_TransitionMode = BRepBuilderAPI_RightCorner;
                AngleMin: Standard_Real = 0.01; AngleMax: Standard_Real = 3.0) {.
    importcpp: "SetOptions", header: "BRepOffsetAPI_MakeDraft.hxx".}
proc SetDraft*(this: var BRepOffsetAPI_MakeDraft;
              IsInternal: Standard_Boolean = Standard_False) {.
    importcpp: "SetDraft", header: "BRepOffsetAPI_MakeDraft.hxx".}
proc Perform*(this: var BRepOffsetAPI_MakeDraft; LengthMax: Standard_Real) {.
    importcpp: "Perform", header: "BRepOffsetAPI_MakeDraft.hxx".}
proc Perform*(this: var BRepOffsetAPI_MakeDraft; Surface: handle[Geom_Surface];
             KeepInsideSurface: Standard_Boolean = Standard_True) {.
    importcpp: "Perform", header: "BRepOffsetAPI_MakeDraft.hxx".}
proc Perform*(this: var BRepOffsetAPI_MakeDraft; StopShape: TopoDS_Shape;
             KeepOutSide: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "BRepOffsetAPI_MakeDraft.hxx".}
proc Shell*(this: BRepOffsetAPI_MakeDraft): TopoDS_Shell {.noSideEffect,
    importcpp: "Shell", header: "BRepOffsetAPI_MakeDraft.hxx".}
proc Generated*(this: var BRepOffsetAPI_MakeDraft; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_MakeDraft.hxx".}