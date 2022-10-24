import brepprim_types

##  Created on: 1992-11-05
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"


proc newBRepPrimRevolution*(a: Ax2Obj; vMin: cfloat; vMax: cfloat; m: Handle[GeomCurve];
                           pm: Handle[Geom2dCurve]): BRepPrimRevolution {.cdecl,
    constructor, importcpp: "BRepPrim_Revolution(@)", header: "BRepPrim_Revolution.hxx".}
proc makeEmptyLateralFace*(this: BRepPrimRevolution): TopoDS_Face {.noSideEffect,
    cdecl, importcpp: "MakeEmptyLateralFace", header: "BRepPrim_Revolution.hxx".}
proc makeEmptyMeridianEdge*(this: BRepPrimRevolution; ang: cfloat): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "MakeEmptyMeridianEdge", header: "BRepPrim_Revolution.hxx".}
proc meridianValue*(this: BRepPrimRevolution; v: cfloat): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "MeridianValue", header: "BRepPrim_Revolution.hxx".}
proc setMeridianPCurve*(this: BRepPrimRevolution; e: var TopoDS_Edge; f: TopoDS_Face) {.
    noSideEffect, cdecl, importcpp: "SetMeridianPCurve", header: "BRepPrim_Revolution.hxx".}
