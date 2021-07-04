##  Created on: 1993-04-14
##  Created by: Modelistation
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
  HLRBRep_Curve, ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepAdaptor/BRepAdaptor_Surface,
  ../GeomAbs/GeomAbs_SurfaceType, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColgp/TColgp_Array2OfPnt, ../GeomAbs/GeomAbs_Shape, ../gp/gp_Vec,
  ../gp/gp_Cylinder, ../gp/gp_Cone, ../gp/gp_Sphere, ../gp/gp_Torus, ../gp/gp_Ax1

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pln"
type
  HLRBRep_Surface* {.importcpp: "HLRBRep_Surface", header: "HLRBRep_Surface.hxx",
                    bycopy.} = object ## ! Creates an undefined surface with no face loaded.
                                   ## ! returns true if it is a side face


proc constructHLRBRep_Surface*(): HLRBRep_Surface {.constructor,
    importcpp: "HLRBRep_Surface(@)", header: "HLRBRep_Surface.hxx".}
proc Projector*(this: var HLRBRep_Surface; Proj: ptr HLRAlgo_Projector) {.
    importcpp: "Projector", header: "HLRBRep_Surface.hxx".}
proc Surface*(this: var HLRBRep_Surface): var BRepAdaptor_Surface {.
    importcpp: "Surface", header: "HLRBRep_Surface.hxx".}
proc Surface*(this: var HLRBRep_Surface; F: TopoDS_Face) {.importcpp: "Surface",
    header: "HLRBRep_Surface.hxx".}
proc IsSide*(this: HLRBRep_Surface; tolf: Standard_Real; toler: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsSide", header: "HLRBRep_Surface.hxx".}
proc IsAbove*(this: HLRBRep_Surface; back: Standard_Boolean; A: ptr HLRBRep_Curve;
             tolC: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsAbove", header: "HLRBRep_Surface.hxx".}
proc FirstUParameter*(this: HLRBRep_Surface): Standard_Real {.noSideEffect,
    importcpp: "FirstUParameter", header: "HLRBRep_Surface.hxx".}
proc LastUParameter*(this: HLRBRep_Surface): Standard_Real {.noSideEffect,
    importcpp: "LastUParameter", header: "HLRBRep_Surface.hxx".}
proc FirstVParameter*(this: HLRBRep_Surface): Standard_Real {.noSideEffect,
    importcpp: "FirstVParameter", header: "HLRBRep_Surface.hxx".}
proc LastVParameter*(this: HLRBRep_Surface): Standard_Real {.noSideEffect,
    importcpp: "LastVParameter", header: "HLRBRep_Surface.hxx".}
proc UContinuity*(this: HLRBRep_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "UContinuity", header: "HLRBRep_Surface.hxx".}
proc VContinuity*(this: HLRBRep_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "VContinuity", header: "HLRBRep_Surface.hxx".}
proc NbUIntervals*(this: var HLRBRep_Surface; S: GeomAbs_Shape): Standard_Integer {.
    importcpp: "NbUIntervals", header: "HLRBRep_Surface.hxx".}
proc NbVIntervals*(this: var HLRBRep_Surface; S: GeomAbs_Shape): Standard_Integer {.
    importcpp: "NbVIntervals", header: "HLRBRep_Surface.hxx".}
proc UIntervalContinuity*(this: HLRBRep_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "UIntervalContinuity", header: "HLRBRep_Surface.hxx".}
proc VIntervalContinuity*(this: HLRBRep_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "VIntervalContinuity", header: "HLRBRep_Surface.hxx".}
proc IsUClosed*(this: HLRBRep_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "HLRBRep_Surface.hxx".}
proc IsVClosed*(this: HLRBRep_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "HLRBRep_Surface.hxx".}
proc IsUPeriodic*(this: HLRBRep_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "HLRBRep_Surface.hxx".}
proc UPeriod*(this: HLRBRep_Surface): Standard_Real {.noSideEffect,
    importcpp: "UPeriod", header: "HLRBRep_Surface.hxx".}
proc IsVPeriodic*(this: HLRBRep_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "HLRBRep_Surface.hxx".}
proc VPeriod*(this: HLRBRep_Surface): Standard_Real {.noSideEffect,
    importcpp: "VPeriod", header: "HLRBRep_Surface.hxx".}
proc Value*(this: HLRBRep_Surface; U: Standard_Real; V: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "Value", header: "HLRBRep_Surface.hxx".}
proc D0*(this: HLRBRep_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "HLRBRep_Surface.hxx".}
proc D1*(this: HLRBRep_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "HLRBRep_Surface.hxx".}
proc D2*(this: HLRBRep_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "HLRBRep_Surface.hxx".}
proc D3*(this: HLRBRep_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "HLRBRep_Surface.hxx".}
proc DN*(this: HLRBRep_Surface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "HLRBRep_Surface.hxx".}
proc GetType*(this: HLRBRep_Surface): GeomAbs_SurfaceType {.noSideEffect,
    importcpp: "GetType", header: "HLRBRep_Surface.hxx".}
proc Plane*(this: HLRBRep_Surface): gp_Pln {.noSideEffect, importcpp: "Plane",
    header: "HLRBRep_Surface.hxx".}
proc Cylinder*(this: HLRBRep_Surface): gp_Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "HLRBRep_Surface.hxx".}
proc Cone*(this: HLRBRep_Surface): gp_Cone {.noSideEffect, importcpp: "Cone",
    header: "HLRBRep_Surface.hxx".}
proc Sphere*(this: HLRBRep_Surface): gp_Sphere {.noSideEffect, importcpp: "Sphere",
    header: "HLRBRep_Surface.hxx".}
proc Torus*(this: HLRBRep_Surface): gp_Torus {.noSideEffect, importcpp: "Torus",
    header: "HLRBRep_Surface.hxx".}
proc UDegree*(this: HLRBRep_Surface): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "HLRBRep_Surface.hxx".}
proc NbUPoles*(this: HLRBRep_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbUPoles", header: "HLRBRep_Surface.hxx".}
proc VDegree*(this: HLRBRep_Surface): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "HLRBRep_Surface.hxx".}
proc NbVPoles*(this: HLRBRep_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbVPoles", header: "HLRBRep_Surface.hxx".}
proc NbUKnots*(this: HLRBRep_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbUKnots", header: "HLRBRep_Surface.hxx".}
proc NbVKnots*(this: HLRBRep_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbVKnots", header: "HLRBRep_Surface.hxx".}
proc Axis*(this: HLRBRep_Surface): gp_Ax1 {.noSideEffect, importcpp: "Axis",
                                        header: "HLRBRep_Surface.hxx".}