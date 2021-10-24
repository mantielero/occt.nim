##  Created on: 1993-03-10
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
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Hyperbola"
type
  HandleGeomHyperbola* = Handle[GeomHyperbola]

## ! Describes a branch of a hyperbola in 3D space.
## ! A hyperbola is defined by its major and minor radii
## ! and, as with any conic curve, is positioned in space
## ! with a right-handed coordinate system (gp_Ax2 object) where:
## ! - the origin is the center of the hyperbola,
## ! - the "X Direction" defines the major axis, and
## ! - the "Y Direction" defines the minor axis.
## ! The origin, "X Direction" and "Y Direction" of this
## ! coordinate system define the plane of the hyperbola.
## ! The coordinate system is the local coordinate
## ! system of the hyperbola.
## ! The branch of the hyperbola described is the one
## ! located on the positive side of the major axis.
## ! The "main Direction" of the local coordinate system is
## ! a vector normal to the plane of the hyperbola. The
## ! axis, of which the origin and unit vector are
## ! respectively the origin and "main Direction" of the
## ! local coordinate system, is termed the "Axis" or "main
## ! Axis" of the hyperbola.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the hyperbola,
## ! determining the direction in which the parameter
## ! increases along the hyperbola.
## ! The Geom_Hyperbola hyperbola is parameterized as follows:
## ! P(U) = O + MajRad*Cosh(U)*XDir + MinRad*Sinh(U)*YDir, where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - MajRad and MinRad are the major and minor radii of the hyperbola.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the hyperbola.
## ! The parameter range is ] -infinite, +infinite [.
## ! The following diagram illustrates the respective
## ! positions, in the plane of the hyperbola, of the three
## ! branches of hyperbolas constructed using the
## ! functions OtherBranch, ConjugateBranch1 and
## ! ConjugateBranch2: Defines the main branch of an hyperbola.
## ! ^YAxis
## ! |
## ! FirstConjugateBranch
## ! |
## ! Other            |                Main
## ! --------------------- C ------------------------------>XAxis
## ! Branch           |                Branch
## ! |
## ! SecondConjugateBranch
## ! |
## ! Warning
## ! The value of the major radius (on the major axis) can
## ! be less than the value of the minor radius (on the minor axis).

type
  GeomHyperbola* {.importcpp: "Geom_Hyperbola", header: "Geom_Hyperbola.hxx", bycopy.} = object of GeomConic ##
                                                                                                   ## !
                                                                                                   ## Constructs
                                                                                                   ## a
                                                                                                   ## hyperbola
                                                                                                   ## by
                                                                                                   ## conversion
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## gp_Hypr
                                                                                                   ## hyperbola
                                                                                                   ## H.


proc newGeomHyperbola*(h: Hypr): GeomHyperbola {.cdecl, constructor,
    importcpp: "Geom_Hyperbola(@)", dynlib: tkg3d.}
proc newGeomHyperbola*(a2: Ax2; majorRadius: cfloat; minorRadius: cfloat): GeomHyperbola {.
    cdecl, constructor, importcpp: "Geom_Hyperbola(@)", dynlib: tkg3d.}
proc setHypr*(this: var GeomHyperbola; h: Hypr) {.cdecl, importcpp: "SetHypr",
    dynlib: tkg3d.}
proc setMajorRadius*(this: var GeomHyperbola; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkg3d.}
proc setMinorRadius*(this: var GeomHyperbola; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkg3d.}
proc hypr*(this: GeomHyperbola): Hypr {.noSideEffect, cdecl, importcpp: "Hypr",
                                    dynlib: tkg3d.}
proc reversedParameter*(this: GeomHyperbola; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", dynlib: tkg3d.}
proc firstParameter*(this: GeomHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkg3d.}
proc lastParameter*(this: GeomHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkg3d.}
proc isClosed*(this: GeomHyperbola): bool {.noSideEffect, cdecl,
                                        importcpp: "IsClosed", dynlib: tkg3d.}
proc isPeriodic*(this: GeomHyperbola): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkg3d.}
proc asymptote1*(this: GeomHyperbola): Ax1 {.noSideEffect, cdecl,
    importcpp: "Asymptote1", dynlib: tkg3d.}
proc asymptote2*(this: GeomHyperbola): Ax1 {.noSideEffect, cdecl,
    importcpp: "Asymptote2", dynlib: tkg3d.}
proc conjugateBranch1*(this: GeomHyperbola): Hypr {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch1", dynlib: tkg3d.}
proc conjugateBranch2*(this: GeomHyperbola): Hypr {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch2", dynlib: tkg3d.}
proc directrix1*(this: GeomHyperbola): Ax1 {.noSideEffect, cdecl,
    importcpp: "Directrix1", dynlib: tkg3d.}
proc directrix2*(this: GeomHyperbola): Ax1 {.noSideEffect, cdecl,
    importcpp: "Directrix2", dynlib: tkg3d.}
proc eccentricity*(this: GeomHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", dynlib: tkg3d.}
proc focal*(this: GeomHyperbola): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                       dynlib: tkg3d.}
proc focus1*(this: GeomHyperbola): Pnt {.noSideEffect, cdecl, importcpp: "Focus1",
                                     dynlib: tkg3d.}
proc focus2*(this: GeomHyperbola): Pnt {.noSideEffect, cdecl, importcpp: "Focus2",
                                     dynlib: tkg3d.}
proc majorRadius*(this: GeomHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "MajorRadius", dynlib: tkg3d.}
proc minorRadius*(this: GeomHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "MinorRadius", dynlib: tkg3d.}
proc otherBranch*(this: GeomHyperbola): Hypr {.noSideEffect, cdecl,
    importcpp: "OtherBranch", dynlib: tkg3d.}
proc parameter*(this: GeomHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", dynlib: tkg3d.}
proc d0*(this: GeomHyperbola; u: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg3d.}
proc d1*(this: GeomHyperbola; u: cfloat; p: var Pnt; v1: var Vec) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: GeomHyperbola; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.noSideEffect,
    cdecl, importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: GeomHyperbola; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, cdecl, importcpp: "D3", dynlib: tkg3d.}
proc dn*(this: GeomHyperbola; u: cfloat; n: cint): Vec {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkg3d.}
proc transform*(this: var GeomHyperbola; t: Trsf) {.cdecl, importcpp: "Transform",
    dynlib: tkg3d.}
proc copy*(this: GeomHyperbola): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkg3d.}
proc dumpJson*(this: GeomHyperbola; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg3d.}