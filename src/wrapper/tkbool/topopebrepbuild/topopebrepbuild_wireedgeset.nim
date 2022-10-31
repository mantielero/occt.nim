import ../../tkernel/tcollection/tcollection_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types
import topopebrepbuild_types





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



proc newTopOpeBRepBuildWireEdgeSet*(f: TopoDS_Shape; `addr`: pointer = nil): TopOpeBRepBuildWireEdgeSet {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_WireEdgeSet(@)", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc face*(this: TopOpeBRepBuildWireEdgeSet): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc addShape*(this: var TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddShape", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc addStartElement*(this: var TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddStartElement", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc addElement*(this: var TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddElement", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc initNeighbours*(this: var TopOpeBRepBuildWireEdgeSet; e: TopoDS_Shape) {.cdecl,
    importcpp: "InitNeighbours", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc findNeighbours*(this: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "FindNeighbours", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc makeNeighboursList*(this: var TopOpeBRepBuildWireEdgeSet; e: TopoDS_Shape;
                        v: TopoDS_Shape): TopToolsListOfShape {.cdecl,
    importcpp: "MakeNeighboursList", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc isUVISO*(e: TopoDS_Edge; f: TopoDS_Face; uiso: var bool; viso: var bool) {.cdecl,
    importcpp: "TopOpeBRepBuild_WireEdgeSet::IsUVISO(@)", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc dumpSS*(this: var TopOpeBRepBuildWireEdgeSet) {.cdecl, importcpp: "DumpSS",
    header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc sName*(this: TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape;
           sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SName", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc sName*(this: TopOpeBRepBuildWireEdgeSet; s: TopToolsListOfShape;
           sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SName", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc sNameori*(this: TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape;
              sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SNameori", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc sNameori*(this: TopOpeBRepBuildWireEdgeSet; s: TopToolsListOfShape;
              sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SNameori", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}


