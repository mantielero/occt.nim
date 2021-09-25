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

discard "forward decl of TopoDS_Face"
discard "forward decl of GeomAdaptor_Surface"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopOpeBRepTool_C2DF"
discard "forward decl of TopoDS_Vertex"
type
  TopOpeBRepToolCORRISO* {.importcpp: "TopOpeBRepTool_CORRISO",
                          header: "TopOpeBRepTool_CORRISO.hxx", bycopy.} = object


proc constructTopOpeBRepToolCORRISO*(): TopOpeBRepToolCORRISO {.constructor,
    importcpp: "TopOpeBRepTool_CORRISO(@)", header: "TopOpeBRepTool_CORRISO.hxx".}
proc constructTopOpeBRepToolCORRISO*(fRef: TopoDS_Face): TopOpeBRepToolCORRISO {.
    constructor, importcpp: "TopOpeBRepTool_CORRISO(@)",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc fref*(this: TopOpeBRepToolCORRISO): TopoDS_Face {.noSideEffect,
    importcpp: "Fref", header: "TopOpeBRepTool_CORRISO.hxx".}
proc gASref*(this: TopOpeBRepToolCORRISO): GeomAdaptorSurface {.noSideEffect,
    importcpp: "GASref", header: "TopOpeBRepTool_CORRISO.hxx".}
proc refclosed*(this: TopOpeBRepToolCORRISO; x: int; xperiod: var float): bool {.
    noSideEffect, importcpp: "Refclosed", header: "TopOpeBRepTool_CORRISO.hxx".}
proc init*(this: var TopOpeBRepToolCORRISO; s: TopoDS_Shape): bool {.importcpp: "Init",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc s*(this: TopOpeBRepToolCORRISO): TopoDS_Shape {.noSideEffect, importcpp: "S",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc eds*(this: TopOpeBRepToolCORRISO): TopToolsListOfShape {.noSideEffect,
    importcpp: "Eds", header: "TopOpeBRepTool_CORRISO.hxx".}
proc uVClosed*(this: TopOpeBRepToolCORRISO): bool {.noSideEffect,
    importcpp: "UVClosed", header: "TopOpeBRepTool_CORRISO.hxx".}
proc tol*(this: TopOpeBRepToolCORRISO; i: int; tol3d: float): float {.noSideEffect,
    importcpp: "Tol", header: "TopOpeBRepTool_CORRISO.hxx".}
proc purgeFyClosingE*(this: TopOpeBRepToolCORRISO; clEds: TopToolsListOfShape;
                     fyClEds: var TopToolsListOfShape): bool {.noSideEffect,
    importcpp: "PurgeFyClosingE", header: "TopOpeBRepTool_CORRISO.hxx".}
proc edgeOUTofBoundsUV*(this: TopOpeBRepToolCORRISO; e: TopoDS_Edge; onU: bool;
                       tolx: float; parspE: var float): int {.noSideEffect,
    importcpp: "EdgeOUTofBoundsUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc edgesOUTofBoundsUV*(this: TopOpeBRepToolCORRISO;
                        edsToCheck: TopToolsListOfShape; onU: bool; tolx: float;
                        fyEds: var TopToolsDataMapOfOrientedShapeInteger): bool {.
    noSideEffect, importcpp: "EdgesOUTofBoundsUV",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc edgeWithFaultyUV*(this: TopOpeBRepToolCORRISO; e: TopoDS_Edge; ivfaulty: var int): bool {.
    noSideEffect, importcpp: "EdgeWithFaultyUV",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc edgesWithFaultyUV*(this: TopOpeBRepToolCORRISO;
                       edsToCheck: TopToolsListOfShape; nfybounds: int;
                       fyEds: var TopToolsDataMapOfOrientedShapeInteger;
                       stopatfirst: bool = false): bool {.noSideEffect,
    importcpp: "EdgesWithFaultyUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc edgeWithFaultyUV*(this: TopOpeBRepToolCORRISO;
                      edsToCheck: TopToolsListOfShape; nfybounds: int;
                      fyE: var TopoDS_Shape; ifaulty: var int): bool {.noSideEffect,
    importcpp: "EdgeWithFaultyUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc trslUV*(this: var TopOpeBRepToolCORRISO; onU: bool;
            fyEds: TopToolsDataMapOfOrientedShapeInteger): bool {.
    importcpp: "TrslUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc getnewS*(this: TopOpeBRepToolCORRISO; newS: var TopoDS_Face): bool {.noSideEffect,
    importcpp: "GetnewS", header: "TopOpeBRepTool_CORRISO.hxx".}
proc uVRep*(this: TopOpeBRepToolCORRISO; e: TopoDS_Edge; c2df: var TopOpeBRepToolC2DF): bool {.
    noSideEffect, importcpp: "UVRep", header: "TopOpeBRepTool_CORRISO.hxx".}
proc setUVRep*(this: var TopOpeBRepToolCORRISO; e: TopoDS_Edge;
              c2df: TopOpeBRepToolC2DF): bool {.importcpp: "SetUVRep",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc connexity*(this: TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
               eds: var TopToolsListOfShape): bool {.noSideEffect,
    importcpp: "Connexity", header: "TopOpeBRepTool_CORRISO.hxx".}
proc setConnexity*(this: var TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
                  eds: TopToolsListOfShape): bool {.importcpp: "SetConnexity",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc addNewConnexity*(this: var TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
                     e: TopoDS_Edge): bool {.importcpp: "AddNewConnexity",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc removeOldConnexity*(this: var TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
                        e: TopoDS_Edge): bool {.importcpp: "RemoveOldConnexity",
    header: "TopOpeBRepTool_CORRISO.hxx".}
