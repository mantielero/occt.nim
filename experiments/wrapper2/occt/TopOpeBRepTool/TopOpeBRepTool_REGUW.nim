##  Created on: 1998-12-08
##  Created by: Xuan PHAM PHU
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, TopOpeBRepTool_CORRISO,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  TopOpeBRepTool_IndexedDataMapOfShapeconnexity, ../TopTools/TopTools_MapOfShape,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TopoDS/TopoDS_Vertex, ../gp/gp_Pnt2d,
  ../TopoDS/TopoDS_Edge, ../gp/gp_Dir2d

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopOpeBRepTool_connexity"
type
  TopOpeBRepTool_REGUW* {.importcpp: "TopOpeBRepTool_REGUW",
                         header: "TopOpeBRepTool_REGUW.hxx", bycopy.} = object


proc constructTopOpeBRepTool_REGUW*(FRef: TopoDS_Face): TopOpeBRepTool_REGUW {.
    constructor, importcpp: "TopOpeBRepTool_REGUW(@)",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc Fref*(this: TopOpeBRepTool_REGUW): TopoDS_Face {.noSideEffect,
    importcpp: "Fref", header: "TopOpeBRepTool_REGUW.hxx".}
proc SetEsplits*(this: var TopOpeBRepTool_REGUW;
                Esplits: var TopTools_DataMapOfShapeListOfShape) {.
    importcpp: "SetEsplits", header: "TopOpeBRepTool_REGUW.hxx".}
proc GetEsplits*(this: TopOpeBRepTool_REGUW;
                Esplits: var TopTools_DataMapOfShapeListOfShape) {.noSideEffect,
    importcpp: "GetEsplits", header: "TopOpeBRepTool_REGUW.hxx".}
proc SetOwNw*(this: var TopOpeBRepTool_REGUW;
             OwNw: var TopTools_DataMapOfShapeListOfShape) {.importcpp: "SetOwNw",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc GetOwNw*(this: TopOpeBRepTool_REGUW;
             OwNw: var TopTools_DataMapOfShapeListOfShape) {.noSideEffect,
    importcpp: "GetOwNw", header: "TopOpeBRepTool_REGUW.hxx".}
proc SplitEds*(this: var TopOpeBRepTool_REGUW): Standard_Boolean {.
    importcpp: "SplitEds", header: "TopOpeBRepTool_REGUW.hxx".}
proc Init*(this: var TopOpeBRepTool_REGUW; S: TopoDS_Shape) {.importcpp: "Init",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc S*(this: TopOpeBRepTool_REGUW): TopoDS_Shape {.noSideEffect, importcpp: "S",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc HasInit*(this: TopOpeBRepTool_REGUW): Standard_Boolean {.noSideEffect,
    importcpp: "HasInit", header: "TopOpeBRepTool_REGUW.hxx".}
proc MapS*(this: var TopOpeBRepTool_REGUW): Standard_Boolean {.importcpp: "MapS",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc REGU*(this: var TopOpeBRepTool_REGUW; istep: Standard_Integer;
          Scur: TopoDS_Shape; Splits: var TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "REGU", header: "TopOpeBRepTool_REGUW.hxx".}
proc REGU*(this: var TopOpeBRepTool_REGUW): Standard_Boolean {.importcpp: "REGU",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc GetSplits*(this: TopOpeBRepTool_REGUW; Splits: var TopTools_ListOfShape): Standard_Boolean {.
    noSideEffect, importcpp: "GetSplits", header: "TopOpeBRepTool_REGUW.hxx".}
proc InitBlock*(this: var TopOpeBRepTool_REGUW): Standard_Boolean {.
    importcpp: "InitBlock", header: "TopOpeBRepTool_REGUW.hxx".}
proc NextinBlock*(this: var TopOpeBRepTool_REGUW): Standard_Boolean {.
    importcpp: "NextinBlock", header: "TopOpeBRepTool_REGUW.hxx".}
proc NearestE*(this: TopOpeBRepTool_REGUW; loe: TopTools_ListOfShape;
              efound: var TopoDS_Edge): Standard_Boolean {.noSideEffect,
    importcpp: "NearestE", header: "TopOpeBRepTool_REGUW.hxx".}
proc Connexity*(this: TopOpeBRepTool_REGUW; v: TopoDS_Vertex;
               co: var TopOpeBRepTool_connexity): Standard_Boolean {.noSideEffect,
    importcpp: "Connexity", header: "TopOpeBRepTool_REGUW.hxx".}
proc AddNewConnexity*(this: var TopOpeBRepTool_REGUW; v: TopoDS_Vertex;
                     OriKey: Standard_Integer; e: TopoDS_Edge): Standard_Boolean {.
    importcpp: "AddNewConnexity", header: "TopOpeBRepTool_REGUW.hxx".}
proc RemoveOldConnexity*(this: var TopOpeBRepTool_REGUW; v: TopoDS_Vertex;
                        OriKey: Standard_Integer; e: TopoDS_Edge): Standard_Boolean {.
    importcpp: "RemoveOldConnexity", header: "TopOpeBRepTool_REGUW.hxx".}
proc UpdateMultiple*(this: var TopOpeBRepTool_REGUW; v: TopoDS_Vertex): Standard_Boolean {.
    importcpp: "UpdateMultiple", header: "TopOpeBRepTool_REGUW.hxx".}