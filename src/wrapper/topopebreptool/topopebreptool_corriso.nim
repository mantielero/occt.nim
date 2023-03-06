import topopebreptool_types
import ../../tkg3d/geomadaptor/geomadaptor_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types





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



proc newTopOpeBRepToolCORRISO*(): TopOpeBRepToolCORRISO {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_CORRISO(@)", header: "TopOpeBRepTool_CORRISO.hxx".}
proc newTopOpeBRepToolCORRISO*(fRef: TopoDS_Face): TopOpeBRepToolCORRISO {.cdecl,
    constructor, importcpp: "TopOpeBRepTool_CORRISO(@)", header: "TopOpeBRepTool_CORRISO.hxx".}
proc fref*(this: TopOpeBRepToolCORRISO): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Fref", header: "TopOpeBRepTool_CORRISO.hxx".}
proc gASref*(this: TopOpeBRepToolCORRISO): GeomAdaptorSurface {.noSideEffect, cdecl,
    importcpp: "GASref", header: "TopOpeBRepTool_CORRISO.hxx".}
proc refclosed*(this: TopOpeBRepToolCORRISO; x: cint; xperiod: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "Refclosed", header: "TopOpeBRepTool_CORRISO.hxx".}
proc init*(this: var TopOpeBRepToolCORRISO; s: TopoDS_Shape): bool {.cdecl,
    importcpp: "Init", header: "TopOpeBRepTool_CORRISO.hxx".}
proc s*(this: TopOpeBRepToolCORRISO): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "S", header: "TopOpeBRepTool_CORRISO.hxx".}
proc eds*(this: TopOpeBRepToolCORRISO): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "Eds", header: "TopOpeBRepTool_CORRISO.hxx".}
proc uVClosed*(this: TopOpeBRepToolCORRISO): bool {.noSideEffect, cdecl,
    importcpp: "UVClosed", header: "TopOpeBRepTool_CORRISO.hxx".}
proc tol*(this: TopOpeBRepToolCORRISO; i: cint; tol3d: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "Tol", header: "TopOpeBRepTool_CORRISO.hxx".}
proc purgeFyClosingE*(this: TopOpeBRepToolCORRISO; clEds: TopToolsListOfShape;
                     fyClEds: var TopToolsListOfShape): bool {.noSideEffect, cdecl,
    importcpp: "PurgeFyClosingE", header: "TopOpeBRepTool_CORRISO.hxx".}
proc edgeOUTofBoundsUV*(this: TopOpeBRepToolCORRISO; e: TopoDS_Edge; onU: bool;
                       tolx: cfloat; parspE: var cfloat): cint {.noSideEffect, cdecl,
    importcpp: "EdgeOUTofBoundsUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc edgesOUTofBoundsUV*(this: TopOpeBRepToolCORRISO;
                        edsToCheck: TopToolsListOfShape; onU: bool; tolx: cfloat;
                        fyEds: var TopToolsDataMapOfOrientedShapeInteger): bool {.
    noSideEffect, cdecl, importcpp: "EdgesOUTofBoundsUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc edgeWithFaultyUV*(this: TopOpeBRepToolCORRISO; e: TopoDS_Edge;
                      ivfaulty: var cint): bool {.noSideEffect, cdecl,
    importcpp: "EdgeWithFaultyUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc edgesWithFaultyUV*(this: TopOpeBRepToolCORRISO;
                       edsToCheck: TopToolsListOfShape; nfybounds: cint;
                       fyEds: var TopToolsDataMapOfOrientedShapeInteger;
                       stopatfirst: bool = false): bool {.noSideEffect, cdecl,
    importcpp: "EdgesWithFaultyUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc edgeWithFaultyUV*(this: TopOpeBRepToolCORRISO;
                      edsToCheck: TopToolsListOfShape; nfybounds: cint;
                      fyE: var TopoDS_Shape; ifaulty: var cint): bool {.noSideEffect,
    cdecl, importcpp: "EdgeWithFaultyUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc trslUV*(this: var TopOpeBRepToolCORRISO; onU: bool;
            fyEds: TopToolsDataMapOfOrientedShapeInteger): bool {.cdecl,
    importcpp: "TrslUV", header: "TopOpeBRepTool_CORRISO.hxx".}
proc getnewS*(this: TopOpeBRepToolCORRISO; newS: var TopoDS_Face): bool {.noSideEffect,
    cdecl, importcpp: "GetnewS", header: "TopOpeBRepTool_CORRISO.hxx".}
proc uVRep*(this: TopOpeBRepToolCORRISO; e: TopoDS_Edge; c2df: var TopOpeBRepToolC2DF): bool {.
    noSideEffect, cdecl, importcpp: "UVRep", header: "TopOpeBRepTool_CORRISO.hxx".}
proc setUVRep*(this: var TopOpeBRepToolCORRISO; e: TopoDS_Edge;
              c2df: TopOpeBRepToolC2DF): bool {.cdecl, importcpp: "SetUVRep",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc connexity*(this: TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
               eds: var TopToolsListOfShape): bool {.noSideEffect, cdecl,
    importcpp: "Connexity", header: "TopOpeBRepTool_CORRISO.hxx".}
proc setConnexity*(this: var TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
                  eds: TopToolsListOfShape): bool {.cdecl,
    importcpp: "SetConnexity", header: "TopOpeBRepTool_CORRISO.hxx".}
proc addNewConnexity*(this: var TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
                     e: TopoDS_Edge): bool {.cdecl, importcpp: "AddNewConnexity",
    header: "TopOpeBRepTool_CORRISO.hxx".}
proc removeOldConnexity*(this: var TopOpeBRepToolCORRISO; v: TopoDS_Vertex;
                        e: TopoDS_Edge): bool {.cdecl,
    importcpp: "RemoveOldConnexity", header: "TopOpeBRepTool_CORRISO.hxx".}


