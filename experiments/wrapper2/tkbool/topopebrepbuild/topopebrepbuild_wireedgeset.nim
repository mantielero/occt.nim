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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TCollection_AsciiString"
type
  TopOpeBRepBuildWireEdgeSet* {.importcpp: "TopOpeBRepBuild_WireEdgeSet",
                               header: "TopOpeBRepBuild_WireEdgeSet.hxx", bycopy.} = object of TopOpeBRepBuildShapeSet ##
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


proc newTopOpeBRepBuildWireEdgeSet*(f: TopoDS_Shape; `addr`: pointer = nil): TopOpeBRepBuildWireEdgeSet {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_WireEdgeSet(@)", dynlib: tkbool.}
proc face*(this: TopOpeBRepBuildWireEdgeSet): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", dynlib: tkbool.}
proc addShape*(this: var TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddShape", dynlib: tkbool.}
proc addStartElement*(this: var TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddStartElement", dynlib: tkbool.}
proc addElement*(this: var TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddElement", dynlib: tkbool.}
proc initNeighbours*(this: var TopOpeBRepBuildWireEdgeSet; e: TopoDS_Shape) {.cdecl,
    importcpp: "InitNeighbours", dynlib: tkbool.}
proc findNeighbours*(this: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "FindNeighbours", dynlib: tkbool.}
proc makeNeighboursList*(this: var TopOpeBRepBuildWireEdgeSet; e: TopoDS_Shape;
                        v: TopoDS_Shape): TopToolsListOfShape {.cdecl,
    importcpp: "MakeNeighboursList", dynlib: tkbool.}
proc isUVISO*(e: TopoDS_Edge; f: TopoDS_Face; uiso: var bool; viso: var bool) {.cdecl,
    importcpp: "TopOpeBRepBuild_WireEdgeSet::IsUVISO(@)", dynlib: tkbool.}
proc dumpSS*(this: var TopOpeBRepBuildWireEdgeSet) {.cdecl, importcpp: "DumpSS",
    dynlib: tkbool.}
proc sName*(this: TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape;
           sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SName", dynlib: tkbool.}
proc sName*(this: TopOpeBRepBuildWireEdgeSet; s: TopToolsListOfShape;
           sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SName", dynlib: tkbool.}
proc sNameori*(this: TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape;
              sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SNameori", dynlib: tkbool.}
proc sNameori*(this: TopOpeBRepBuildWireEdgeSet; s: TopToolsListOfShape;
              sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SNameori", dynlib: tkbool.}