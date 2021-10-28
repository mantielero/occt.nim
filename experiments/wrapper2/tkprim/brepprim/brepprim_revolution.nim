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
type
  BRepPrimRevolution* {.importcpp: "BRepPrim_Revolution",
                       header: "BRepPrim_Revolution.hxx", bycopy.} = object of BRepPrimOneAxis ##
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


proc newBRepPrimRevolution*(a: Ax2; vMin: cfloat; vMax: cfloat; m: Handle[GeomCurve];
                           pm: Handle[Geom2dCurve]): BRepPrimRevolution {.cdecl,
    constructor, importcpp: "BRepPrim_Revolution(@)", dynlib: tkprim.}
proc makeEmptyLateralFace*(this: BRepPrimRevolution): TopoDS_Face {.noSideEffect,
    cdecl, importcpp: "MakeEmptyLateralFace", dynlib: tkprim.}
proc makeEmptyMeridianEdge*(this: BRepPrimRevolution; ang: cfloat): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "MakeEmptyMeridianEdge", dynlib: tkprim.}
proc meridianValue*(this: BRepPrimRevolution; v: cfloat): Pnt2d {.noSideEffect, cdecl,
    importcpp: "MeridianValue", dynlib: tkprim.}
proc setMeridianPCurve*(this: BRepPrimRevolution; e: var TopoDS_Edge; f: TopoDS_Face) {.
    noSideEffect, cdecl, importcpp: "SetMeridianPCurve", dynlib: tkprim.}