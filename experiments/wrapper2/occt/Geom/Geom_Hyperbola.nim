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


proc constructGeomHyperbola*(h: Hypr): GeomHyperbola {.constructor,
    importcpp: "Geom_Hyperbola(@)", header: "Geom_Hyperbola.hxx".}
proc constructGeomHyperbola*(a2: Ax2; majorRadius: float; minorRadius: float): GeomHyperbola {.
    constructor, importcpp: "Geom_Hyperbola(@)", header: "Geom_Hyperbola.hxx".}
proc setHypr*(this: var GeomHyperbola; h: Hypr) {.importcpp: "SetHypr",
    header: "Geom_Hyperbola.hxx".}
proc setMajorRadius*(this: var GeomHyperbola; majorRadius: float) {.
    importcpp: "SetMajorRadius", header: "Geom_Hyperbola.hxx".}
proc setMinorRadius*(this: var GeomHyperbola; minorRadius: float) {.
    importcpp: "SetMinorRadius", header: "Geom_Hyperbola.hxx".}
proc hypr*(this: GeomHyperbola): Hypr {.noSideEffect, importcpp: "Hypr",
                                    header: "Geom_Hyperbola.hxx".}
proc reversedParameter*(this: GeomHyperbola; u: float): float {.noSideEffect,
    importcpp: "ReversedParameter", header: "Geom_Hyperbola.hxx".}
proc firstParameter*(this: GeomHyperbola): float {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_Hyperbola.hxx".}
proc lastParameter*(this: GeomHyperbola): float {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_Hyperbola.hxx".}
proc isClosed*(this: GeomHyperbola): bool {.noSideEffect, importcpp: "IsClosed",
                                        header: "Geom_Hyperbola.hxx".}
proc isPeriodic*(this: GeomHyperbola): bool {.noSideEffect, importcpp: "IsPeriodic",
    header: "Geom_Hyperbola.hxx".}
proc asymptote1*(this: GeomHyperbola): Ax1 {.noSideEffect, importcpp: "Asymptote1",
    header: "Geom_Hyperbola.hxx".}
proc asymptote2*(this: GeomHyperbola): Ax1 {.noSideEffect, importcpp: "Asymptote2",
    header: "Geom_Hyperbola.hxx".}
proc conjugateBranch1*(this: GeomHyperbola): Hypr {.noSideEffect,
    importcpp: "ConjugateBranch1", header: "Geom_Hyperbola.hxx".}
proc conjugateBranch2*(this: GeomHyperbola): Hypr {.noSideEffect,
    importcpp: "ConjugateBranch2", header: "Geom_Hyperbola.hxx".}
proc directrix1*(this: GeomHyperbola): Ax1 {.noSideEffect, importcpp: "Directrix1",
    header: "Geom_Hyperbola.hxx".}
proc directrix2*(this: GeomHyperbola): Ax1 {.noSideEffect, importcpp: "Directrix2",
    header: "Geom_Hyperbola.hxx".}
proc eccentricity*(this: GeomHyperbola): float {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom_Hyperbola.hxx".}
proc focal*(this: GeomHyperbola): float {.noSideEffect, importcpp: "Focal",
                                      header: "Geom_Hyperbola.hxx".}
proc focus1*(this: GeomHyperbola): Pnt {.noSideEffect, importcpp: "Focus1",
                                     header: "Geom_Hyperbola.hxx".}
proc focus2*(this: GeomHyperbola): Pnt {.noSideEffect, importcpp: "Focus2",
                                     header: "Geom_Hyperbola.hxx".}
proc majorRadius*(this: GeomHyperbola): float {.noSideEffect,
    importcpp: "MajorRadius", header: "Geom_Hyperbola.hxx".}
proc minorRadius*(this: GeomHyperbola): float {.noSideEffect,
    importcpp: "MinorRadius", header: "Geom_Hyperbola.hxx".}
proc otherBranch*(this: GeomHyperbola): Hypr {.noSideEffect,
    importcpp: "OtherBranch", header: "Geom_Hyperbola.hxx".}
proc parameter*(this: GeomHyperbola): float {.noSideEffect, importcpp: "Parameter",
    header: "Geom_Hyperbola.hxx".}
proc d0*(this: GeomHyperbola; u: float; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "Geom_Hyperbola.hxx".}
proc d1*(this: GeomHyperbola; u: float; p: var Pnt; v1: var Vec) {.noSideEffect,
    importcpp: "D1", header: "Geom_Hyperbola.hxx".}
proc d2*(this: GeomHyperbola; u: float; p: var Pnt; v1: var Vec; v2: var Vec) {.noSideEffect,
    importcpp: "D2", header: "Geom_Hyperbola.hxx".}
proc d3*(this: GeomHyperbola; u: float; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, importcpp: "D3", header: "Geom_Hyperbola.hxx".}
proc dn*(this: GeomHyperbola; u: float; n: int): Vec {.noSideEffect, importcpp: "DN",
    header: "Geom_Hyperbola.hxx".}
proc transform*(this: var GeomHyperbola; t: Trsf) {.importcpp: "Transform",
    header: "Geom_Hyperbola.hxx".}
proc copy*(this: GeomHyperbola): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Hyperbola.hxx".}
proc dumpJson*(this: GeomHyperbola; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom_Hyperbola.hxx".}
type
  GeomHyperbolabaseType* = GeomConic

proc getTypeName*(): cstring {.importcpp: "Geom_Hyperbola::get_type_name(@)",
                            header: "Geom_Hyperbola.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Hyperbola::get_type_descriptor(@)",
    header: "Geom_Hyperbola.hxx".}
proc dynamicType*(this: GeomHyperbola): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Hyperbola.hxx".}
