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


proc newTopOpeBRepToolCORRISO*(): TopOpeBRepToolCORRISO {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_CORRISO(@)", dynlib: tkbool.}
proc newTopOpeBRepToolCORRISO*(fRef: TopoDS_Face): TopOpeBRepToolCORRISO {.cdecl,
    constructor, importcpp: "TopOpeBRepTool_CORRISO(@)", dynlib: tkbool.}
proc fref*(this: TopOpeBRepToolCORRISO): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Fref", dynlib: tkbool.}
proc gASref*(this: TopOpeBRepToolCORRISO): GeomAdaptorSurface {.noSideEffect, cdecl,
    importcpp: "GASref", dynlib: tkbool.}
proc refclosed*(this: TopOpeBRepToolCORRISO; x: cint; xperiod: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "Refclosed", dynlib: tkbool.}
proc init*(this: var TopOpeBRepToolCORRISO; s: TopoDS_Shape): bool {.cdecl,
    importcpp: "Init", dynlib: tkbool.}
proc s*(this: TopOpeBRepToolCORRISO): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "S", dynlib: tkbool.}
proc eds*(this: TopOpeBRepToolCORRISO): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "Eds", dynlib: tkbool.}
proc uVClosed*(this: TopOpeBRepToolCORRISO): bool {.noSideEffect, cdecl,
    importcpp: "UVClosed", dynlib: tkbool.}
proc tol*(this: TopOpeBRepToolCORRISO; i: cint; tol3d: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "Tol", dynlib: tkbool.}
proc purgeFyClosingE*(this: TopOpeBRepToolCORRISO; clEds: TopToolsListOfShape;
                     fyClEds: var TopToolsListOfShape): bool {.noSideEffect, cdecl,
    importcpp: "PurgeFyClosingE", dynlib: tkbool.}
proc edgeOUTofBoundsUV*(this: TopOpeBRepToolCORRISO; e: TopoDS_Edge; onU: bool;
                       tolx: cfloat; parspE: var cfloat): cint {.noSideEffect, cdecl,
    importcpp: "EdgeOUTofBoundsUV", dynlib: tkbool.}
proc edgesOUTofBoundsUV*(this: TopOpeBRepToolCORRISO;
                        edsToCheck: TopToolsListOfShape; onU: bool; tolx: cfloat;
                        fyEds: var TopToolsDataMapOfOrientedShapeInteger): bool {.
    noSideEffect, cdecl, importcpp: "EdgesOUTofBoundsUV", dynlib: tkbool.}
proc edgeWithFaultyUV*(this: TopOpeBRepToolCORRISO; e: TopoDS_Edge;
                      ivfaulty: var cint): bool {.noSideEffect, cdecl,
    importcpp: "EdgeWithFaultyUV", dynlib: tkbool.}
proc edgesWithFaultyUV*(this: TopOpeBRepToolCORRISO;
                       edsToCheck: TopToolsListOfShape; nfybounds: cint;
                       fyEds: var TopToolsDataMapOfOrientedShapeInteger;
                       stopatfirst: bool = false): bool {.noSideEffect, cdecl,
    importcpp: "EdgesWithFaultyUV", dynlib: tkbool.}
proc edgeWithFaultyUV*(this: TopOpeBRepToolCORRISO;
                      edsToCheck: TopToolsListOfShape; nfybounds: cint;
                      fyE: var TopoDS_Shape; ifaulty: var cint): bool {.noSideEffect,
    cdecl, importcpp: "EdgeWithFaultyUV", dynlib: tkbool.}
proc trslUV*(this: var TopOpeBRepToolCORRISO; onU: bool;
            fyEds: TopToolsDataMapOfOrientedShapeInteger): bool {.cdecl,
    importcpp: "TrslUV", dynlib: tkbool.}
proc getnewS*(this: TopOpeBRepToolCORRISO; newS: var TopoDS_Face): bool {.noSideEffect,
    cdecl, importcpp: "GetnewS", dynlib: tkbool.}
proc uVRep*(this: TopOpeBRepToolCORRISO; e: TopoDS_Edge; c2df: var TopOpeBRepToolC2DF): bool {.
    noSideEffect, cdecl, importcpp: "UVRep", dynlib: tkbool.}
proc setUVRep*(this: var TopOpeBRepToolCORRISO; e: TopoDS_Edge;
              c2df: TopOpeBRepToolC2DF): bool {.cdecl, importcpp: "SetUVRep",
    dynlib: tkbool.}
proc connexity*(this: TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
               eds: var TopToolsListOfShape): bool {.noSideEffect, cdecl,
    importcpp: "Connexity", dynlib: tkbool.}
proc setConnexity*(this: var TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
                  eds: TopToolsListOfShape): bool {.cdecl,
    importcpp: "SetConnexity", dynlib: tkbool.}
proc addNewConnexity*(this: var TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
                     e: TopoDS_Edge): bool {.cdecl, importcpp: "AddNewConnexity",
    dynlib: tkbool.}
proc removeOldConnexity*(this: var TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
                        e: TopoDS_Edge): bool {.cdecl,
    importcpp: "RemoveOldConnexity", dynlib: tkbool.}