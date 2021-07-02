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
proc isSide*(this: HLRBRepSurface; tolf: StandardReal; toler: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsSide", header: "HLRBRep_Surface.hxx".}
proc isAbove*(this: HLRBRepSurface; back: StandardBoolean; a: ptr HLRBRepCurve;
             tolC: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsAbove", header: "HLRBRep_Surface.hxx".}
proc firstUParameter*(this: HLRBRepSurface): StandardReal {.noSideEffect,
    importcpp: "FirstUParameter", header: "HLRBRep_Surface.hxx".}
proc lastUParameter*(this: HLRBRepSurface): StandardReal {.noSideEffect,
    importcpp: "LastUParameter", header: "HLRBRep_Surface.hxx".}
proc firstVParameter*(this: HLRBRepSurface): StandardReal {.noSideEffect,
    importcpp: "FirstVParameter", header: "HLRBRep_Surface.hxx".}
proc lastVParameter*(this: HLRBRepSurface): StandardReal {.noSideEffect,
    importcpp: "LastVParameter", header: "HLRBRep_Surface.hxx".}
proc uContinuity*(this: HLRBRepSurface): GeomAbsShape {.noSideEffect,
    importcpp: "UContinuity", header: "HLRBRep_Surface.hxx".}
proc vContinuity*(this: HLRBRepSurface): GeomAbsShape {.noSideEffect,
    importcpp: "VContinuity", header: "HLRBRep_Surface.hxx".}
proc nbUIntervals*(this: var HLRBRepSurface; s: GeomAbsShape): StandardInteger {.
    importcpp: "NbUIntervals", header: "HLRBRep_Surface.hxx".}
proc nbVIntervals*(this: var HLRBRepSurface; s: GeomAbsShape): StandardInteger {.
    importcpp: "NbVIntervals", header: "HLRBRep_Surface.hxx".}
proc uIntervalContinuity*(this: HLRBRepSurface): GeomAbsShape {.noSideEffect,
    importcpp: "UIntervalContinuity", header: "HLRBRep_Surface.hxx".}
proc vIntervalContinuity*(this: HLRBRepSurface): GeomAbsShape {.noSideEffect,
    importcpp: "VIntervalContinuity", header: "HLRBRep_Surface.hxx".}
proc isUClosed*(this: HLRBRepSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUClosed", header: "HLRBRep_Surface.hxx".}
proc isVClosed*(this: HLRBRepSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVClosed", header: "HLRBRep_Surface.hxx".}
proc isUPeriodic*(this: HLRBRepSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "HLRBRep_Surface.hxx".}
proc uPeriod*(this: HLRBRepSurface): StandardReal {.noSideEffect,
    importcpp: "UPeriod", header: "HLRBRep_Surface.hxx".}
proc isVPeriodic*(this: HLRBRepSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "HLRBRep_Surface.hxx".}
proc vPeriod*(this: HLRBRepSurface): StandardReal {.noSideEffect,
    importcpp: "VPeriod", header: "HLRBRep_Surface.hxx".}
proc value*(this: HLRBRepSurface; u: StandardReal; v: StandardReal): GpPnt {.
    noSideEffect, importcpp: "Value", header: "HLRBRep_Surface.hxx".}
proc d0*(this: HLRBRepSurface; u: StandardReal; v: StandardReal; p: var GpPnt) {.
    noSideEffect, importcpp: "D0", header: "HLRBRep_Surface.hxx".}
proc d1*(this: HLRBRepSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec) {.noSideEffect, importcpp: "D1",
                                    header: "HLRBRep_Surface.hxx".}
proc d2*(this: HLRBRepSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec) {.
    noSideEffect, importcpp: "D2", header: "HLRBRep_Surface.hxx".}
proc d3*(this: HLRBRepSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec;
        d3u: var GpVec; d3v: var GpVec; d3uuv: var GpVec; d3uvv: var GpVec) {.noSideEffect,
    importcpp: "D3", header: "HLRBRep_Surface.hxx".}
proc dn*(this: HLRBRepSurface; u: StandardReal; v: StandardReal; nu: StandardInteger;
        nv: StandardInteger): GpVec {.noSideEffect, importcpp: "DN",
                                   header: "HLRBRep_Surface.hxx".}
proc getType*(this: HLRBRepSurface): GeomAbsSurfaceType {.noSideEffect,
    importcpp: "GetType", header: "HLRBRep_Surface.hxx".}
proc plane*(this: HLRBRepSurface): GpPln {.noSideEffect, importcpp: "Plane",
                                       header: "HLRBRep_Surface.hxx".}
proc cylinder*(this: HLRBRepSurface): GpCylinder {.noSideEffect,
    importcpp: "Cylinder", header: "HLRBRep_Surface.hxx".}
proc cone*(this: HLRBRepSurface): GpCone {.noSideEffect, importcpp: "Cone",
                                       header: "HLRBRep_Surface.hxx".}
proc sphere*(this: HLRBRepSurface): GpSphere {.noSideEffect, importcpp: "Sphere",
    header: "HLRBRep_Surface.hxx".}
proc torus*(this: HLRBRepSurface): GpTorus {.noSideEffect, importcpp: "Torus",
    header: "HLRBRep_Surface.hxx".}
proc uDegree*(this: HLRBRepSurface): StandardInteger {.noSideEffect,
    importcpp: "UDegree", header: "HLRBRep_Surface.hxx".}
proc nbUPoles*(this: HLRBRepSurface): StandardInteger {.noSideEffect,
    importcpp: "NbUPoles", header: "HLRBRep_Surface.hxx".}
proc vDegree*(this: HLRBRepSurface): StandardInteger {.noSideEffect,
    importcpp: "VDegree", header: "HLRBRep_Surface.hxx".}
proc nbVPoles*(this: HLRBRepSurface): StandardInteger {.noSideEffect,
    importcpp: "NbVPoles", header: "HLRBRep_Surface.hxx".}
proc nbUKnots*(this: HLRBRepSurface): StandardInteger {.noSideEffect,
    importcpp: "NbUKnots", header: "HLRBRep_Surface.hxx".}
proc nbVKnots*(this: HLRBRepSurface): StandardInteger {.noSideEffect,
    importcpp: "NbVKnots", header: "HLRBRep_Surface.hxx".}
proc axis*(this: HLRBRepSurface): GpAx1 {.noSideEffect, importcpp: "Axis",
                                      header: "HLRBRep_Surface.hxx".}

