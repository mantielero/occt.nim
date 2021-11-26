##  Created on: 1993-03-24
##  Created by: JCV
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Hyperbola"
type
  HandleGeom2dHyperbola* = Handle[Geom2dHyperbola]

## ! Describes a branch of a hyperbola in the plane (2D space).
## ! A hyperbola is defined by its major and minor radii
## ! and, as with any conic curve, is positioned in the
## ! plane with a coordinate system (gp_Ax22d object) where:
## ! - the origin is the center of the hyperbola,
## ! - the "X Direction" defines the major axis, and
## ! - the "Y Direction" defines the minor axis.
## ! This coordinate system is the local coordinate
## ! system of the hyperbola.
## ! The branch of the hyperbola described is the one
## ! located on the positive side of the major axis.
## ! The orientation (direct or indirect) of the local
## ! coordinate system gives an explicit orientation to the
## ! hyperbola, determining the direction in which the
## ! parameter increases along the hyperbola.
## ! The Geom2d_Hyperbola hyperbola is parameterized as follows:
## ! P(U) = O + MajRad*Cosh(U)*XDir + MinRad*Sinh(U)*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - MajRad and MinRad are the major and minor radii of the hyperbola.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the hyperbola.
## ! The parameter range is ] -infinite,+infinite [.
## ! The following diagram illustrates the respective
## ! positions, in the plane of the hyperbola, of the three
## ! branches of hyperbolas constructed using the
## ! functions OtherBranch, ConjugateBranch1 and
## ! ConjugateBranch2:
## ! ^YAxis
## ! |
## ! FirstConjugateBranch
## ! |
## ! Other         |          Main
## ! --------------------- C
## ! --------------------->XAxis
## ! Branch       |
## ! Branch
## ! |
## ! SecondConjugateBranch
## ! |
## ! Warning
## ! The value of the major radius (on the major axis) can
## ! be less than the value of the minor radius (on the minor axis).
## ! See Also
## ! GCE2d_MakeHyperbola which provides functions for
## ! more complex hyperbola constructions
## ! gp_Ax22d
## ! gp_Hypr2d for an equivalent, non-parameterized data structure

type
  Geom2dHyperbola* {.importcpp: "Geom2d_Hyperbola", header: "Geom2d_Hyperbola.hxx",
                    bycopy.} = object of Geom2dConic ## ! Creates  an Hyperbola from a non persistent one from package gp


proc newGeom2dHyperbola*(h: Hypr2d): Geom2dHyperbola {.cdecl, constructor,
    importcpp: "Geom2d_Hyperbola(@)", dynlib: tkg2d.}
proc newGeom2dHyperbola*(majorAxis: Ax2d; majorRadius: cfloat; minorRadius: cfloat;
                        sense: bool = true): Geom2dHyperbola {.cdecl, constructor,
    importcpp: "Geom2d_Hyperbola(@)", dynlib: tkg2d.}
proc newGeom2dHyperbola*(axis: Ax22d; majorRadius: cfloat; minorRadius: cfloat): Geom2dHyperbola {.
    cdecl, constructor, importcpp: "Geom2d_Hyperbola(@)", dynlib: tkg2d.}
proc setHypr2d*(this: var Geom2dHyperbola; h: Hypr2d) {.cdecl, importcpp: "SetHypr2d",
    dynlib: tkg2d.}
proc setMajorRadius*(this: var Geom2dHyperbola; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkg2d.}
proc setMinorRadius*(this: var Geom2dHyperbola; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkg2d.}
proc hypr2d*(this: Geom2dHyperbola): Hypr2d {.noSideEffect, cdecl,
    importcpp: "Hypr2d", dynlib: tkg2d.}
proc reversedParameter*(this: Geom2dHyperbola; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", dynlib: tkg2d.}
proc firstParameter*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkg2d.}
proc lastParameter*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkg2d.}
proc isClosed*(this: Geom2dHyperbola): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", dynlib: tkg2d.}
proc isPeriodic*(this: Geom2dHyperbola): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkg2d.}
proc asymptote1*(this: Geom2dHyperbola): Ax2d {.noSideEffect, cdecl,
    importcpp: "Asymptote1", dynlib: tkg2d.}
proc asymptote2*(this: Geom2dHyperbola): Ax2d {.noSideEffect, cdecl,
    importcpp: "Asymptote2", dynlib: tkg2d.}
proc conjugateBranch1*(this: Geom2dHyperbola): Hypr2d {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch1", dynlib: tkg2d.}
proc conjugateBranch2*(this: Geom2dHyperbola): Hypr2d {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch2", dynlib: tkg2d.}
proc directrix1*(this: Geom2dHyperbola): Ax2d {.noSideEffect, cdecl,
    importcpp: "Directrix1", dynlib: tkg2d.}
proc directrix2*(this: Geom2dHyperbola): Ax2d {.noSideEffect, cdecl,
    importcpp: "Directrix2", dynlib: tkg2d.}
proc eccentricity*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", dynlib: tkg2d.}
proc focal*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
    dynlib: tkg2d.}
proc focus1*(this: Geom2dHyperbola): Pnt2d {.noSideEffect, cdecl, importcpp: "Focus1",
    dynlib: tkg2d.}
proc focus2*(this: Geom2dHyperbola): Pnt2d {.noSideEffect, cdecl, importcpp: "Focus2",
    dynlib: tkg2d.}
proc majorRadius*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "MajorRadius", dynlib: tkg2d.}
proc minorRadius*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "MinorRadius", dynlib: tkg2d.}
proc otherBranch*(this: Geom2dHyperbola): Hypr2d {.noSideEffect, cdecl,
    importcpp: "OtherBranch", dynlib: tkg2d.}
proc parameter*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", dynlib: tkg2d.}
proc d0*(this: Geom2dHyperbola; u: cfloat; p: var Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg2d.}
proc d1*(this: Geom2dHyperbola; u: cfloat; p: var Pnt2d; v1: var Vec2d) {.noSideEffect,
    cdecl, importcpp: "D1", dynlib: tkg2d.}
proc d2*(this: Geom2dHyperbola; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkg2d.}
proc d3*(this: Geom2dHyperbola; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, cdecl, importcpp: "D3", dynlib: tkg2d.}
proc dn*(this: Geom2dHyperbola; u: cfloat; n: cint): Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkg2d.}
proc transform*(this: var Geom2dHyperbola; t: Trsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkg2d.}
proc copy*(this: Geom2dHyperbola): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkg2d.}
proc dumpJson*(this: Geom2dHyperbola; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg2d.}