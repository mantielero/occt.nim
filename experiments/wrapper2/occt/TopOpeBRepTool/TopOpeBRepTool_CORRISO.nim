##  Created on: 1998-11-25
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face,
  ../GeomAdaptor/GeomAdaptor_Surface, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_ListOfShape, TopOpeBRepTool_DataMapOfOrientedShapeC2DF,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../Standard/Standard_Integer,
  ../TopTools/TopTools_DataMapOfOrientedShapeInteger

discard "forward decl of TopoDS_Face"
discard "forward decl of GeomAdaptor_Surface"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopOpeBRepTool_C2DF"
discard "forward decl of TopoDS_Vertex"
type
  TopOpeBRepTool_CORRISO* {.importcpp: "TopOpeBRepTool_CORRISO",
                           header: "TopOpeBRepTool_CORRISO.hxx", bycopy.} = object


proc constructTopOpeBRepTool_CORRISO*(): TopOpeBRepTool_CORRISO {.constructor,
    importcpp: "TopOpeBRepTool_CORRISO(@)", header: "TopOpeBRepTool_CORRISO.hxx".}
proc constructTopOpeBRepTool_CORRISO*(FRef: TopoDS_Face): TopOpeBRepTool_CORRISO {.
    constructor, importcpp: "TopOpeBRepTool_CORRISO(@)",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc Fref*(this: TopOpeBRepTool_CORRISO): TopoDS_Face {.noSideEffect,
    importcpp: "Fref", header: "TopOpeBRepTool_CORRISO.hxx".}
proc GASref*(this: TopOpeBRepTool_CORRISO): GeomAdaptor_Surface {.noSideEffect,
    importcpp: "GASref", header: "TopOpeBRepTool_CORRISO.hxx".}
proc Refclosed*(this: TopOpeBRepTool_CORRISO; x: Standard_Integer;
               xperiod: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "Refclosed", header: "TopOpeBRepTool_CORRISO.hxx".}
proc Init*(this: var TopOpeBRepTool_CORRISO; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "Init", header: "TopOpeBRepTool_CORRISO.hxx".}
proc S*(this: TopOpeBRepTool_CORRISO): TopoDS_Shape {.noSideEffect, importcpp: "S",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc Eds*(this: TopOpeBRepTool_CORRISO): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Eds", header: "TopOpeBRepTool_CORRISO.hxx".}
proc UVClosed*(this: TopOpeBRepTool_CORRISO): Standard_Boolean {.noSideEffect,
    importcpp: "UVClosed", header: "TopOpeBRepTool_CORRISO.hxx".}
proc Tol*(this: TopOpeBRepTool_CORRISO; I: Standard_Integer; tol3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Tol", header: "TopOpeBRepTool_CORRISO.hxx".}
proc PurgeFyClosingE*(this: TopOpeBRepTool_CORRISO; ClEds: TopTools_ListOfShape;
                     fyClEds: var TopTools_ListOfShape): Standard_Boolean {.
    noSideEffect, importcpp: "PurgeFyClosingE",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc EdgeOUTofBoundsUV*(this: TopOpeBRepTool_CORRISO; E: TopoDS_Edge;
                       onU: Standard_Boolean; tolx: Standard_Real;
                       parspE: var Standard_Real): Standard_Integer {.noSideEffect,
    importcpp: "EdgeOUTofBoundsUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc EdgesOUTofBoundsUV*(this: TopOpeBRepTool_CORRISO;
                        EdsToCheck: TopTools_ListOfShape; onU: Standard_Boolean;
                        tolx: Standard_Real;
                        FyEds: var TopTools_DataMapOfOrientedShapeInteger): Standard_Boolean {.
    noSideEffect, importcpp: "EdgesOUTofBoundsUV",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc EdgeWithFaultyUV*(this: TopOpeBRepTool_CORRISO; E: TopoDS_Edge;
                      Ivfaulty: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "EdgeWithFaultyUV",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc EdgesWithFaultyUV*(this: TopOpeBRepTool_CORRISO;
                       EdsToCheck: TopTools_ListOfShape;
                       nfybounds: Standard_Integer;
                       FyEds: var TopTools_DataMapOfOrientedShapeInteger;
                       stopatfirst: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "EdgesWithFaultyUV",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc EdgeWithFaultyUV*(this: TopOpeBRepTool_CORRISO;
                      EdsToCheck: TopTools_ListOfShape;
                      nfybounds: Standard_Integer; fyE: var TopoDS_Shape;
                      Ifaulty: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "EdgeWithFaultyUV",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc TrslUV*(this: var TopOpeBRepTool_CORRISO; onU: Standard_Boolean;
            FyEds: TopTools_DataMapOfOrientedShapeInteger): Standard_Boolean {.
    importcpp: "TrslUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc GetnewS*(this: TopOpeBRepTool_CORRISO; newS: var TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "GetnewS", header: "TopOpeBRepTool_CORRISO.hxx".}
proc UVRep*(this: TopOpeBRepTool_CORRISO; E: TopoDS_Edge;
           C2DF: var TopOpeBRepTool_C2DF): Standard_Boolean {.noSideEffect,
    importcpp: "UVRep", header: "TopOpeBRepTool_CORRISO.hxx".}
proc SetUVRep*(this: var TopOpeBRepTool_CORRISO; E: TopoDS_Edge;
              C2DF: TopOpeBRepTool_C2DF): Standard_Boolean {.importcpp: "SetUVRep",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc Connexity*(this: TopOpeBRepTool_CORRISO; V: TopoDS_Vertex;
               Eds: var TopTools_ListOfShape): Standard_Boolean {.noSideEffect,
    importcpp: "Connexity", header: "TopOpeBRepTool_CORRISO.hxx".}
proc SetConnexity*(this: var TopOpeBRepTool_CORRISO; V: TopoDS_Vertex;
                  Eds: TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "SetConnexity", header: "TopOpeBRepTool_CORRISO.hxx".}
proc AddNewConnexity*(this: var TopOpeBRepTool_CORRISO; V: TopoDS_Vertex;
                     E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "AddNewConnexity", header: "TopOpeBRepTool_CORRISO.hxx".}
proc RemoveOldConnexity*(this: var TopOpeBRepTool_CORRISO; V: TopoDS_Vertex;
                        E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "RemoveOldConnexity", header: "TopOpeBRepTool_CORRISO.hxx".}