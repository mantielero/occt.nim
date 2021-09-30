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
discard "forward decl of Geom2d_Hyperbola"

type
  Geom2dHyperbola* {.importcpp: "Geom2d_Hyperbola", header: "Geom2d_Hyperbola.hxx",
                    bycopy.} = object of Geom2dConic ## ! Creates  an Hyperbola from a non persistent one from package gp



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
  Geom2dHyperbolabaseType* = Geom2dConic

proc constructGeom2dHyperbola*(h: Hypr2d): Geom2dHyperbola {.constructor,
    importcpp: "Geom2d_Hyperbola(@)", header: "Geom2d_Hyperbola.hxx".}
proc constructGeom2dHyperbola*(majorAxis: Ax2d; majorRadius: StandardReal;
                              minorRadius: StandardReal;
                              sense: StandardBoolean = true): Geom2dHyperbola {.
    constructor, importcpp: "Geom2d_Hyperbola(@)", header: "Geom2d_Hyperbola.hxx".}
proc constructGeom2dHyperbola*(axis: Ax22d; majorRadius: StandardReal;
                              minorRadius: StandardReal): Geom2dHyperbola {.
    constructor, importcpp: "Geom2d_Hyperbola(@)", header: "Geom2d_Hyperbola.hxx".}
proc setHypr2d*(this: var Geom2dHyperbola; h: Hypr2d) {.importcpp: "SetHypr2d",
    header: "Geom2d_Hyperbola.hxx".}
proc setMajorRadius*(this: var Geom2dHyperbola; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: "Geom2d_Hyperbola.hxx".}
proc setMinorRadius*(this: var Geom2dHyperbola; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: "Geom2d_Hyperbola.hxx".}
proc hypr2d*(this: Geom2dHyperbola): Hypr2d {.noSideEffect, importcpp: "Hypr2d",
    header: "Geom2d_Hyperbola.hxx".}
proc reversedParameter*(this: Geom2dHyperbola; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_Hyperbola.hxx".}
proc firstParameter*(this: Geom2dHyperbola): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_Hyperbola.hxx".}
proc lastParameter*(this: Geom2dHyperbola): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_Hyperbola.hxx".}
proc isClosed*(this: Geom2dHyperbola): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_Hyperbola.hxx".}
proc isPeriodic*(this: Geom2dHyperbola): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_Hyperbola.hxx".}
proc asymptote1*(this: Geom2dHyperbola): Ax2d {.noSideEffect,
    importcpp: "Asymptote1", header: "Geom2d_Hyperbola.hxx".}
proc asymptote2*(this: Geom2dHyperbola): Ax2d {.noSideEffect,
    importcpp: "Asymptote2", header: "Geom2d_Hyperbola.hxx".}
proc conjugateBranch1*(this: Geom2dHyperbola): Hypr2d {.noSideEffect,
    importcpp: "ConjugateBranch1", header: "Geom2d_Hyperbola.hxx".}
proc conjugateBranch2*(this: Geom2dHyperbola): Hypr2d {.noSideEffect,
    importcpp: "ConjugateBranch2", header: "Geom2d_Hyperbola.hxx".}
proc directrix1*(this: Geom2dHyperbola): Ax2d {.noSideEffect,
    importcpp: "Directrix1", header: "Geom2d_Hyperbola.hxx".}
proc directrix2*(this: Geom2dHyperbola): Ax2d {.noSideEffect,
    importcpp: "Directrix2", header: "Geom2d_Hyperbola.hxx".}
proc eccentricity*(this: Geom2dHyperbola): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom2d_Hyperbola.hxx".}
proc focal*(this: Geom2dHyperbola): StandardReal {.noSideEffect, importcpp: "Focal",
    header: "Geom2d_Hyperbola.hxx".}
proc focus1*(this: Geom2dHyperbola): Pnt2d {.noSideEffect, importcpp: "Focus1",
    header: "Geom2d_Hyperbola.hxx".}
proc focus2*(this: Geom2dHyperbola): Pnt2d {.noSideEffect, importcpp: "Focus2",
    header: "Geom2d_Hyperbola.hxx".}
proc majorRadius*(this: Geom2dHyperbola): StandardReal {.noSideEffect,
    importcpp: "MajorRadius", header: "Geom2d_Hyperbola.hxx".}
proc minorRadius*(this: Geom2dHyperbola): StandardReal {.noSideEffect,
    importcpp: "MinorRadius", header: "Geom2d_Hyperbola.hxx".}
proc otherBranch*(this: Geom2dHyperbola): Hypr2d {.noSideEffect,
    importcpp: "OtherBranch", header: "Geom2d_Hyperbola.hxx".}
proc parameter*(this: Geom2dHyperbola): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "Geom2d_Hyperbola.hxx".}
proc d0*(this: Geom2dHyperbola; u: StandardReal; p: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_Hyperbola.hxx".}
proc d1*(this: Geom2dHyperbola; u: StandardReal; p: var Pnt2d; v1: var Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_Hyperbola.hxx".}
proc d2*(this: Geom2dHyperbola; u: StandardReal; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "Geom2d_Hyperbola.hxx".}
proc d3*(this: Geom2dHyperbola; u: StandardReal; p: var Pnt2d; v1: var Vec2d;
        v2: var Vec2d; v3: var Vec2d) {.noSideEffect, importcpp: "D3",
                                  header: "Geom2d_Hyperbola.hxx".}
proc dn*(this: Geom2dHyperbola; u: StandardReal; n: int): Vec2d {.noSideEffect,
    importcpp: "DN", header: "Geom2d_Hyperbola.hxx".}
proc transform*(this: var Geom2dHyperbola; t: Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_Hyperbola.hxx".}
proc copy*(this: Geom2dHyperbola): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Hyperbola.hxx".}
proc dumpJson*(this: Geom2dHyperbola; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom2d_Hyperbola.hxx".}

#[ 
proc getTypeName*(): cstring {.importcpp: "Geom2d_Hyperbola::get_type_name(@)",
                            header: "Geom2d_Hyperbola.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_Hyperbola::get_type_descriptor(@)",
    header: "Geom2d_Hyperbola.hxx".}
proc dynamicType*(this: Geom2dHyperbola): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Hyperbola.hxx".} ]#