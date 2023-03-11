import brepgprop_types
import ../topods/topods_types
import ../gp/gp_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types
import ../standard/standard_types
##  Created on: 1993-04-14
##  Created by: Isabelle GRIGNON
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

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"

proc newBRepGProp_Face*(IsUseSpan: bool = false): BRepGProp_Face {.cdecl, constructor,
    importcpp: "BRepGProp_Face(@)".}
proc newBRepGProp_Face*(F: TopoDS_Face; IsUseSpan: bool = false): BRepGProp_Face {.
    cdecl, constructor, importcpp: "BRepGProp_Face(@)".}
proc Load*(this: var BRepGProp_Face; F: TopoDS_Face) {.cdecl, importcpp: "Load",
    .}
proc VIntegrationOrder*(this: BRepGProp_Face): cint {.noSideEffect, cdecl,
    importcpp: "VIntegrationOrder".}
proc NaturalRestriction*(this: BRepGProp_Face): bool {.noSideEffect, cdecl,
    importcpp: "NaturalRestriction".}
proc GetFace*(this: BRepGProp_Face): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "GetFace".}
proc Value2d*(this: BRepGProp_Face; U: cfloat): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Value2d".}
proc SIntOrder*(this: BRepGProp_Face; Eps: cfloat): cint {.noSideEffect, cdecl,
    importcpp: "SIntOrder".}
proc SVIntSubs*(this: BRepGProp_Face): cint {.noSideEffect, cdecl,
    importcpp: "SVIntSubs".}
proc SUIntSubs*(this: BRepGProp_Face): cint {.noSideEffect, cdecl,
    importcpp: "SUIntSubs".}
proc UKnots*(this: BRepGProp_Face; Knots: var TColStd_Array1OfReal) {.noSideEffect,
    cdecl, importcpp: "UKnots".}
proc VKnots*(this: BRepGProp_Face; Knots: var TColStd_Array1OfReal) {.noSideEffect,
    cdecl, importcpp: "VKnots".}
proc LIntOrder*(this: BRepGProp_Face; Eps: cfloat): cint {.noSideEffect, cdecl,
    importcpp: "LIntOrder".}
proc LIntSubs*(this: BRepGProp_Face): cint {.noSideEffect, cdecl,
    importcpp: "LIntSubs".}
proc LKnots*(this: BRepGProp_Face; Knots: var TColStd_Array1OfReal) {.noSideEffect,
    cdecl, importcpp: "LKnots".}
proc UIntegrationOrder*(this: BRepGProp_Face): cint {.noSideEffect, cdecl,
    importcpp: "UIntegrationOrder".}
proc Bounds*(this: BRepGProp_Face; U1: var cfloat; U2: var cfloat; V1: var cfloat;
            V2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds".}
proc Normal*(this: BRepGProp_Face; U: cfloat; V: cfloat; P: var gp_Pnt; VNor: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "Normal".}
proc Load*(this: var BRepGProp_Face; E: TopoDS_Edge): bool {.cdecl, importcpp: "Load",
    .}
proc FirstParameter*(this: BRepGProp_Face): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter".}
proc LastParameter*(this: BRepGProp_Face): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter".}
proc IntegrationOrder*(this: BRepGProp_Face): cint {.noSideEffect, cdecl,
    importcpp: "IntegrationOrder".}
proc D12d*(this: BRepGProp_Face; U: cfloat; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, cdecl, importcpp: "D12d".}
proc Load*(this: var BRepGProp_Face; IsFirstParam: bool; theIsoType: GeomAbs_IsoType) {.
    cdecl, importcpp: "Load".}
proc GetUKnots*(this: BRepGProp_Face; theUMin: cfloat; theUMax: cfloat;
               theUKnots: var Handle[TColStd_HArray1OfReal]) {.noSideEffect, cdecl,
    importcpp: "GetUKnots".}
proc GetTKnots*(this: BRepGProp_Face; theTMin: cfloat; theTMax: cfloat;
               theTKnots: var Handle[TColStd_HArray1OfReal]) {.noSideEffect, cdecl,
    importcpp: "GetTKnots".}