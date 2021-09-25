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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pln"
type
  HLRBRepSurface* {.importcpp: "HLRBRep_Surface", header: "HLRBRep_Surface.hxx",
                   bycopy.} = object ## ! Creates an undefined surface with no face loaded.
                                  ## ! returns true if it is a side face


proc constructHLRBRepSurface*(): HLRBRepSurface {.constructor,
    importcpp: "HLRBRep_Surface(@)", header: "HLRBRep_Surface.hxx".}
proc projector*(this: var HLRBRepSurface; proj: ptr HLRAlgoProjector) {.
    importcpp: "Projector", header: "HLRBRep_Surface.hxx".}
proc surface*(this: var HLRBRepSurface): var BRepAdaptorSurface {.
    importcpp: "Surface", header: "HLRBRep_Surface.hxx".}
proc surface*(this: var HLRBRepSurface; f: TopoDS_Face) {.importcpp: "Surface",
    header: "HLRBRep_Surface.hxx".}
proc isSide*(this: HLRBRepSurface; tolf: float; toler: float): bool {.noSideEffect,
    importcpp: "IsSide", header: "HLRBRep_Surface.hxx".}
proc isAbove*(this: HLRBRepSurface; back: bool; a: ptr HLRBRepCurve; tolC: float): bool {.
    noSideEffect, importcpp: "IsAbove", header: "HLRBRep_Surface.hxx".}
proc firstUParameter*(this: HLRBRepSurface): float {.noSideEffect,
    importcpp: "FirstUParameter", header: "HLRBRep_Surface.hxx".}
proc lastUParameter*(this: HLRBRepSurface): float {.noSideEffect,
    importcpp: "LastUParameter", header: "HLRBRep_Surface.hxx".}
proc firstVParameter*(this: HLRBRepSurface): float {.noSideEffect,
    importcpp: "FirstVParameter", header: "HLRBRep_Surface.hxx".}
proc lastVParameter*(this: HLRBRepSurface): float {.noSideEffect,
    importcpp: "LastVParameter", header: "HLRBRep_Surface.hxx".}
proc uContinuity*(this: HLRBRepSurface): GeomAbsShape {.noSideEffect,
    importcpp: "UContinuity", header: "HLRBRep_Surface.hxx".}
proc vContinuity*(this: HLRBRepSurface): GeomAbsShape {.noSideEffect,
    importcpp: "VContinuity", header: "HLRBRep_Surface.hxx".}
proc nbUIntervals*(this: var HLRBRepSurface; s: GeomAbsShape): int {.
    importcpp: "NbUIntervals", header: "HLRBRep_Surface.hxx".}
proc nbVIntervals*(this: var HLRBRepSurface; s: GeomAbsShape): int {.
    importcpp: "NbVIntervals", header: "HLRBRep_Surface.hxx".}
proc uIntervalContinuity*(this: HLRBRepSurface): GeomAbsShape {.noSideEffect,
    importcpp: "UIntervalContinuity", header: "HLRBRep_Surface.hxx".}
proc vIntervalContinuity*(this: HLRBRepSurface): GeomAbsShape {.noSideEffect,
    importcpp: "VIntervalContinuity", header: "HLRBRep_Surface.hxx".}
proc isUClosed*(this: HLRBRepSurface): bool {.noSideEffect, importcpp: "IsUClosed",
    header: "HLRBRep_Surface.hxx".}
proc isVClosed*(this: HLRBRepSurface): bool {.noSideEffect, importcpp: "IsVClosed",
    header: "HLRBRep_Surface.hxx".}
proc isUPeriodic*(this: HLRBRepSurface): bool {.noSideEffect,
    importcpp: "IsUPeriodic", header: "HLRBRep_Surface.hxx".}
proc uPeriod*(this: HLRBRepSurface): float {.noSideEffect, importcpp: "UPeriod",
    header: "HLRBRep_Surface.hxx".}
proc isVPeriodic*(this: HLRBRepSurface): bool {.noSideEffect,
    importcpp: "IsVPeriodic", header: "HLRBRep_Surface.hxx".}
proc vPeriod*(this: HLRBRepSurface): float {.noSideEffect, importcpp: "VPeriod",
    header: "HLRBRep_Surface.hxx".}
proc value*(this: HLRBRepSurface; u: float; v: float): Pnt {.noSideEffect,
    importcpp: "Value", header: "HLRBRep_Surface.hxx".}
proc d0*(this: HLRBRepSurface; u: float; v: float; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "HLRBRep_Surface.hxx".}
proc d1*(this: HLRBRepSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, importcpp: "D1", header: "HLRBRep_Surface.hxx".}
proc d2*(this: HLRBRepSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, importcpp: "D2",
    header: "HLRBRep_Surface.hxx".}
proc d3*(this: HLRBRepSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec; d3uuv: var Vec;
        d3uvv: var Vec) {.noSideEffect, importcpp: "D3", header: "HLRBRep_Surface.hxx".}
proc dn*(this: HLRBRepSurface; u: float; v: float; nu: int; nv: int): Vec {.noSideEffect,
    importcpp: "DN", header: "HLRBRep_Surface.hxx".}
proc getType*(this: HLRBRepSurface): GeomAbsSurfaceType {.noSideEffect,
    importcpp: "GetType", header: "HLRBRep_Surface.hxx".}
proc plane*(this: HLRBRepSurface): Pln {.noSideEffect, importcpp: "Plane",
                                     header: "HLRBRep_Surface.hxx".}
proc cylinder*(this: HLRBRepSurface): Cylinder {.noSideEffect, importcpp: "Cylinder",
    header: "HLRBRep_Surface.hxx".}
proc cone*(this: HLRBRepSurface): Cone {.noSideEffect, importcpp: "Cone",
                                     header: "HLRBRep_Surface.hxx".}
proc sphere*(this: HLRBRepSurface): Sphere {.noSideEffect, importcpp: "Sphere",
    header: "HLRBRep_Surface.hxx".}
proc torus*(this: HLRBRepSurface): Torus {.noSideEffect, importcpp: "Torus",
                                       header: "HLRBRep_Surface.hxx".}
proc uDegree*(this: HLRBRepSurface): int {.noSideEffect, importcpp: "UDegree",
                                       header: "HLRBRep_Surface.hxx".}
proc nbUPoles*(this: HLRBRepSurface): int {.noSideEffect, importcpp: "NbUPoles",
                                        header: "HLRBRep_Surface.hxx".}
proc vDegree*(this: HLRBRepSurface): int {.noSideEffect, importcpp: "VDegree",
                                       header: "HLRBRep_Surface.hxx".}
proc nbVPoles*(this: HLRBRepSurface): int {.noSideEffect, importcpp: "NbVPoles",
                                        header: "HLRBRep_Surface.hxx".}
proc nbUKnots*(this: HLRBRepSurface): int {.noSideEffect, importcpp: "NbUKnots",
                                        header: "HLRBRep_Surface.hxx".}
proc nbVKnots*(this: HLRBRepSurface): int {.noSideEffect, importcpp: "NbVKnots",
                                        header: "HLRBRep_Surface.hxx".}
proc axis*(this: HLRBRepSurface): Ax1 {.noSideEffect, importcpp: "Axis",
                                    header: "HLRBRep_Surface.hxx".}
