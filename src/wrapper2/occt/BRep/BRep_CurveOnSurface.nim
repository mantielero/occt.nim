##  Created on: 1993-07-06
##  Created by: Remi LEQUETTE
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt2d, BRep_GCurve,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveOnSurface"
discard "forward decl of BRep_CurveOnSurface"
type
  Handle_BRep_CurveOnSurface* = handle[BRep_CurveOnSurface]

## ! Representation  of a  curve   by a   curve  in the
## ! parametric space of a surface.

type
  BRep_CurveOnSurface* {.importcpp: "BRep_CurveOnSurface",
                        header: "BRep_CurveOnSurface.hxx", bycopy.} = object of BRep_GCurve


proc constructBRep_CurveOnSurface*(PC: handle[Geom2d_Curve];
                                  S: handle[Geom_Surface]; L: TopLoc_Location): BRep_CurveOnSurface {.
    constructor, importcpp: "BRep_CurveOnSurface(@)",
    header: "BRep_CurveOnSurface.hxx".}
proc SetUVPoints*(this: var BRep_CurveOnSurface; P1: gp_Pnt2d; P2: gp_Pnt2d) {.
    importcpp: "SetUVPoints", header: "BRep_CurveOnSurface.hxx".}
proc UVPoints*(this: BRep_CurveOnSurface; P1: var gp_Pnt2d; P2: var gp_Pnt2d) {.
    noSideEffect, importcpp: "UVPoints", header: "BRep_CurveOnSurface.hxx".}
proc D0*(this: BRep_CurveOnSurface; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "BRep_CurveOnSurface.hxx".}
proc IsCurveOnSurface*(this: BRep_CurveOnSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsCurveOnSurface", header: "BRep_CurveOnSurface.hxx".}
proc IsCurveOnSurface*(this: BRep_CurveOnSurface; S: handle[Geom_Surface];
                      L: TopLoc_Location): Standard_Boolean {.noSideEffect,
    importcpp: "IsCurveOnSurface", header: "BRep_CurveOnSurface.hxx".}
proc Surface*(this: BRep_CurveOnSurface): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "BRep_CurveOnSurface.hxx".}
proc PCurve*(this: BRep_CurveOnSurface): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "PCurve", header: "BRep_CurveOnSurface.hxx".}
proc PCurve*(this: var BRep_CurveOnSurface; C: handle[Geom2d_Curve]) {.
    importcpp: "PCurve", header: "BRep_CurveOnSurface.hxx".}
proc Copy*(this: BRep_CurveOnSurface): handle[BRep_CurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: "BRep_CurveOnSurface.hxx".}
proc Update*(this: var BRep_CurveOnSurface) {.importcpp: "Update",
    header: "BRep_CurveOnSurface.hxx".}
proc DumpJson*(this: BRep_CurveOnSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_CurveOnSurface.hxx".}
type
  BRep_CurveOnSurfacebase_type* = BRep_GCurve

proc get_type_name*(): cstring {.importcpp: "BRep_CurveOnSurface::get_type_name(@)",
                              header: "BRep_CurveOnSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_CurveOnSurface::get_type_descriptor(@)",
    header: "BRep_CurveOnSurface.hxx".}
proc DynamicType*(this: BRep_CurveOnSurface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_CurveOnSurface.hxx".}