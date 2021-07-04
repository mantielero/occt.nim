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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepPrim_OneAxis, ../Standard/Standard_Real

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
type
  BRepPrim_Revolution* {.importcpp: "BRepPrim_Revolution",
                        header: "BRepPrim_Revolution.hxx", bycopy.} = object of BRepPrim_OneAxis ##
                                                                                          ## !
                                                                                          ## Create
                                                                                          ## a
                                                                                          ## revolution
                                                                                          ## body
                                                                                          ## <M>
                                                                                          ## is
                                                                                          ## the
                                                                                          ## meridian
                                                                                          ## nd
                                                                                          ##
                                                                                          ## !
                                                                                          ## must
                                                                                          ## be
                                                                                          ## in
                                                                                          ## the
                                                                                          ## XZ
                                                                                          ## plane
                                                                                          ## of
                                                                                          ## <A>.
                                                                                          ## <PM>
                                                                                          ## is
                                                                                          ## the
                                                                                          ##
                                                                                          ## !
                                                                                          ## meridian
                                                                                          ## in
                                                                                          ## the
                                                                                          ## XZ
                                                                                          ## plane.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Create
                                                                                          ## a
                                                                                          ## revolution
                                                                                          ## body.
                                                                                          ## The
                                                                                          ## meridian
                                                                                          ## is
                                                                                          ## set
                                                                                          ##
                                                                                          ## !
                                                                                          ## later.
                                                                                          ## Reserved
                                                                                          ## for
                                                                                          ## derivated
                                                                                          ## classes.


proc constructBRepPrim_Revolution*(A: gp_Ax2; VMin: Standard_Real;
                                  VMax: Standard_Real; M: handle[Geom_Curve];
                                  PM: handle[Geom2d_Curve]): BRepPrim_Revolution {.
    constructor, importcpp: "BRepPrim_Revolution(@)",
    header: "BRepPrim_Revolution.hxx".}
proc MakeEmptyLateralFace*(this: BRepPrim_Revolution): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: "BRepPrim_Revolution.hxx".}
proc MakeEmptyMeridianEdge*(this: BRepPrim_Revolution; Ang: Standard_Real): TopoDS_Edge {.
    noSideEffect, importcpp: "MakeEmptyMeridianEdge",
    header: "BRepPrim_Revolution.hxx".}
proc MeridianValue*(this: BRepPrim_Revolution; V: Standard_Real): gp_Pnt2d {.
    noSideEffect, importcpp: "MeridianValue", header: "BRepPrim_Revolution.hxx".}
proc SetMeridianPCurve*(this: BRepPrim_Revolution; E: var TopoDS_Edge; F: TopoDS_Face) {.
    noSideEffect, importcpp: "SetMeridianPCurve", header: "BRepPrim_Revolution.hxx".}