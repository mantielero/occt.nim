import brepoffset_types
import ../topods/topods_types
import ../gp/gp_types
import ../brepbuilderapi/brepbuilderapi_types
import ../standard/standard_types
import ../geom/geom_types
import ../toptools/toptools_types
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

# discard "forward decl of TopoDS_Shape"
# discard "forward decl of DirObj"
# discard "forward decl of Geom_Surface"
# discard "forward decl of TopoDS_Shell"
#                                                                                                   ## draft
#                                                                                                           ## surface
#                                                                                                           ## object
#                                                                                                           ## defined
#                                                                                                           ## by
#                                                                                                           ## the
#                                                                                                           ## shape
#                                                                                                           ##
#                                                                                                           ## !
#                                                                                                           ## Shape,
#                                                                                                           ## the
#                                                                                                           ## direction
#                                                                                                           ## Dir,
#                                                                                                           ## and
#                                                                                                           ## the
#                                                                                                           ## angle
#                                                                                                           ## Angle.
#                                                                                                           ##
#                                                                                                           ## !
#                                                                                                           ## Shape
#                                                                                                           ## must
#                                                                                                           ## be
#                                                                                                           ## a
#                                                                                                           ## TopoDS_Wire,
#                                                                                                           ## Topo_DS_Face
#                                                                                                           ## or
#                                                                                                           ##
#                                                                                                           ## !
#                                                                                                           ## TopoDS_Shell
#                                                                                                           ## with
#                                                                                                           ## free
#                                                                                                           ## boundaries.
#                                                                                                           ##
#                                                                                                           ## !
#                                                                                                           ## Exceptions
#                                                                                                           ##
#                                                                                                           ## !
#                                                                                                           ## Standard_NotDone
#                                                                                                           ## if
#                                                                                                           ## Shape
#                                                                                                           ## is
#                                                                                                           ## not
#                                                                                                           ## a
#                                                                                                           ## TopoDS_Wire,
#                                                                                                           ##
#                                                                                                           ## !
#                                                                                                           ## Topo_DS_Face
#                                                                                                           ## or
#                                                                                                           ## TopoDS_Shell
#                                                                                                           ## with
#                                                                                                           ## free
#                                                                                                           ## boundaries.


proc newBRepOffsetAPI_MakeDraft*(Shape: TopoDS_Shape; Dir: DirObj; Angle: cfloat): BRepOffsetAPI_MakeDraft {.
    cdecl, constructor, importcpp: "BRepOffsetAPI_MakeDraft(@)".}
proc SetOptions*(this: var BRepOffsetAPI_MakeDraft; Style: BRepBuilderAPI_TransitionMode = BRepBuilderAPI_RightCorner;
                AngleMin: cfloat = 0.01; AngleMax: cfloat = 3.0) {.cdecl,
    importcpp: "SetOptions".}
proc SetDraft*(this: var BRepOffsetAPI_MakeDraft; IsInternal: bool = false) {.cdecl,
    importcpp: "SetDraft".}
proc Perform*(this: var BRepOffsetAPI_MakeDraft; LengthMax: cfloat) {.cdecl,
    importcpp: "Perform".}
proc Perform*(this: var BRepOffsetAPI_MakeDraft; Surface: Handle[Geom_Surface];
             KeepInsideSurface: bool = true) {.cdecl, importcpp: "Perform",
    .}
proc Perform*(this: var BRepOffsetAPI_MakeDraft; StopShape: TopoDS_Shape;
             KeepOutSide: bool = true) {.cdecl, importcpp: "Perform".}
proc Shell*(this: BRepOffsetAPI_MakeDraft): TopoDS_Shell {.noSideEffect, cdecl,
    importcpp: "Shell".}
proc Generated*(this: var BRepOffsetAPI_MakeDraft; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Generated".}