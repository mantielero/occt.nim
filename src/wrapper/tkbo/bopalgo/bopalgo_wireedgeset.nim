##  Created by: Peter KURNEV
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
##  Copyright (c) 2007-2010 CEA/DEN, EDF R&D, OPEN CASCADE
##  Copyright (c) 2003-2007 OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN, CEDRAT,
##                          EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
type
  BOPAlgoWireEdgeSet* {.importcpp: "BOPAlgo_WireEdgeSet",
                       header: "BOPAlgo_WireEdgeSet.hxx", bycopy.} = object


proc newBOPAlgoWireEdgeSet*(): BOPAlgoWireEdgeSet {.cdecl, constructor,
    importcpp: "BOPAlgo_WireEdgeSet(@)", dynlib: tkbo.}
proc destroyBOPAlgoWireEdgeSet*(this: var BOPAlgoWireEdgeSet) {.cdecl,
    importcpp: "#.~BOPAlgo_WireEdgeSet()", dynlib: tkbo.}
proc newBOPAlgoWireEdgeSet*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoWireEdgeSet {.
    cdecl, constructor, importcpp: "BOPAlgo_WireEdgeSet(@)", dynlib: tkbo.}
proc clear*(this: var BOPAlgoWireEdgeSet) {.cdecl, importcpp: "Clear", dynlib: tkbo.}
proc setFace*(this: var BOPAlgoWireEdgeSet; aF: TopoDS_Face) {.cdecl,
    importcpp: "SetFace", dynlib: tkbo.}
proc face*(this: BOPAlgoWireEdgeSet): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", dynlib: tkbo.}
proc addStartElement*(this: var BOPAlgoWireEdgeSet; sS: TopoDS_Shape) {.cdecl,
    importcpp: "AddStartElement", dynlib: tkbo.}
proc startElements*(this: BOPAlgoWireEdgeSet): TopToolsListOfShape {.noSideEffect,
    cdecl, importcpp: "StartElements", dynlib: tkbo.}
proc addShape*(this: var BOPAlgoWireEdgeSet; sS: TopoDS_Shape) {.cdecl,
    importcpp: "AddShape", dynlib: tkbo.}
proc shapes*(this: BOPAlgoWireEdgeSet): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "Shapes", dynlib: tkbo.}