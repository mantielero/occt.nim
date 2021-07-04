##  Created on: 1993-06-16
##  Created by: Jean Yves LEBEY
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face, TopOpeBRepBuild_ShapeSet,
  ../Standard/Standard_Address, ../TopTools/TopTools_ListOfShape,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_Orientation,
  ../Standard/Standard_Integer, ../TCollection/TCollection_AsciiString

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TCollection_AsciiString"
type
  TopOpeBRepBuild_WireEdgeSet* {.importcpp: "TopOpeBRepBuild_WireEdgeSet",
                                header: "TopOpeBRepBuild_WireEdgeSet.hxx", bycopy.} = object of TopOpeBRepBuild_ShapeSet ##
                                                                                                                  ## !
                                                                                                                  ## Creates
                                                                                                                  ## a
                                                                                                                  ## WireEdgeSet
                                                                                                                  ## to
                                                                                                                  ## build
                                                                                                                  ## edges
                                                                                                                  ## connected
                                                                                                                  ## by
                                                                                                                  ## vertices
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## on
                                                                                                                  ## face
                                                                                                                  ## F.
                                                                                                                  ## Edges
                                                                                                                  ## of
                                                                                                                  ## the
                                                                                                                  ## WireEdgeSet
                                                                                                                  ## must
                                                                                                                  ## have
                                                                                                                  ## a
                                                                                                                  ## representation
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## on
                                                                                                                  ## surface
                                                                                                                  ## of
                                                                                                                  ## face
                                                                                                                  ## F.
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## Indicates
                                                                                                                  ## whether
                                                                                                                  ## vertex
                                                                                                                  ## V
                                                                                                                  ## is
                                                                                                                  ## a
                                                                                                                  ## good
                                                                                                                  ## connexity
                                                                                                                  ## vertex
                                                                                                                  ## between
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## edges
                                                                                                                  ## E1
                                                                                                                  ## and
                                                                                                                  ## E2.
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## i.e,
                                                                                                                  ## returns
                                                                                                                  ## True
                                                                                                                  ## if
                                                                                                                  ## V
                                                                                                                  ## is
                                                                                                                  ## shared
                                                                                                                  ## by
                                                                                                                  ## E1
                                                                                                                  ## and
                                                                                                                  ## E2
                                                                                                                  ## and
                                                                                                                  ## if
                                                                                                                  ## V
                                                                                                                  ## has
                                                                                                                  ## different
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## orientations
                                                                                                                  ## on
                                                                                                                  ## E1
                                                                                                                  ## and
                                                                                                                  ## E2.
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## If
                                                                                                                  ## V
                                                                                                                  ## is
                                                                                                                  ## shared
                                                                                                                  ## by
                                                                                                                  ## E1
                                                                                                                  ## and
                                                                                                                  ## E2,
                                                                                                                  ## returns
                                                                                                                  ## the
                                                                                                                  ## orientation
                                                                                                                  ## of
                                                                                                                  ## V
                                                                                                                  ## on
                                                                                                                  ## E1
                                                                                                                  ## and
                                                                                                                  ## E2


proc constructTopOpeBRepBuild_WireEdgeSet*(F: TopoDS_Shape;
    Addr: Standard_Address = nil): TopOpeBRepBuild_WireEdgeSet {.constructor,
    importcpp: "TopOpeBRepBuild_WireEdgeSet(@)",
    header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc Face*(this: TopOpeBRepBuild_WireEdgeSet): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc AddShape*(this: var TopOpeBRepBuild_WireEdgeSet; S: TopoDS_Shape) {.
    importcpp: "AddShape", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc AddStartElement*(this: var TopOpeBRepBuild_WireEdgeSet; S: TopoDS_Shape) {.
    importcpp: "AddStartElement", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc AddElement*(this: var TopOpeBRepBuild_WireEdgeSet; S: TopoDS_Shape) {.
    importcpp: "AddElement", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc InitNeighbours*(this: var TopOpeBRepBuild_WireEdgeSet; E: TopoDS_Shape) {.
    importcpp: "InitNeighbours", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc FindNeighbours*(this: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "FindNeighbours", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc MakeNeighboursList*(this: var TopOpeBRepBuild_WireEdgeSet; E: TopoDS_Shape;
                        V: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "MakeNeighboursList", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc IsUVISO*(E: TopoDS_Edge; F: TopoDS_Face; uiso: var Standard_Boolean;
             viso: var Standard_Boolean) {.importcpp: "TopOpeBRepBuild_WireEdgeSet::IsUVISO(@)", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc DumpSS*(this: var TopOpeBRepBuild_WireEdgeSet) {.importcpp: "DumpSS",
    header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc SName*(this: TopOpeBRepBuild_WireEdgeSet; S: TopoDS_Shape;
           sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SName", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc SName*(this: TopOpeBRepBuild_WireEdgeSet; S: TopTools_ListOfShape;
           sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SName", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc SNameori*(this: TopOpeBRepBuild_WireEdgeSet; S: TopoDS_Shape;
              sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SNameori", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc SNameori*(this: TopOpeBRepBuild_WireEdgeSet; S: TopTools_ListOfShape;
              sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SNameori", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}