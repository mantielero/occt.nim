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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Geom2d_Conic, ../Standard/Standard_Boolean, ../Standard/Standard_Integer

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
  Handle_Geom2d_Hyperbola* = handle[Geom2d_Hyperbola]

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
  Geom2d_Hyperbola* {.importcpp: "Geom2d_Hyperbola",
                     header: "Geom2d_Hyperbola.hxx", bycopy.} = object of Geom2d_Conic ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## an
                                                                                ## Hyperbola
                                                                                ## from
                                                                                ## a
                                                                                ## non
                                                                                ## persistent
                                                                                ## one
                                                                                ## from
                                                                                ## package
                                                                                ## gp


proc constructGeom2d_Hyperbola*(H: gp_Hypr2d): Geom2d_Hyperbola {.constructor,
    importcpp: "Geom2d_Hyperbola(@)", header: "Geom2d_Hyperbola.hxx".}
proc constructGeom2d_Hyperbola*(MajorAxis: gp_Ax2d; MajorRadius: Standard_Real;
                               MinorRadius: Standard_Real;
                               Sense: Standard_Boolean = Standard_True): Geom2d_Hyperbola {.
    constructor, importcpp: "Geom2d_Hyperbola(@)", header: "Geom2d_Hyperbola.hxx".}
proc constructGeom2d_Hyperbola*(Axis: gp_Ax22d; MajorRadius: Standard_Real;
                               MinorRadius: Standard_Real): Geom2d_Hyperbola {.
    constructor, importcpp: "Geom2d_Hyperbola(@)", header: "Geom2d_Hyperbola.hxx".}
proc SetHypr2d*(this: var Geom2d_Hyperbola; H: gp_Hypr2d) {.importcpp: "SetHypr2d",
    header: "Geom2d_Hyperbola.hxx".}
proc SetMajorRadius*(this: var Geom2d_Hyperbola; MajorRadius: Standard_Real) {.
    importcpp: "SetMajorRadius", header: "Geom2d_Hyperbola.hxx".}
proc SetMinorRadius*(this: var Geom2d_Hyperbola; MinorRadius: Standard_Real) {.
    importcpp: "SetMinorRadius", header: "Geom2d_Hyperbola.hxx".}
proc Hypr2d*(this: Geom2d_Hyperbola): gp_Hypr2d {.noSideEffect, importcpp: "Hypr2d",
    header: "Geom2d_Hyperbola.hxx".}
proc ReversedParameter*(this: Geom2d_Hyperbola; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_Hyperbola.hxx".}
proc FirstParameter*(this: Geom2d_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_Hyperbola.hxx".}
proc LastParameter*(this: Geom2d_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_Hyperbola.hxx".}
proc IsClosed*(this: Geom2d_Hyperbola): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_Hyperbola.hxx".}
proc IsPeriodic*(this: Geom2d_Hyperbola): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_Hyperbola.hxx".}
proc Asymptote1*(this: Geom2d_Hyperbola): gp_Ax2d {.noSideEffect,
    importcpp: "Asymptote1", header: "Geom2d_Hyperbola.hxx".}
proc Asymptote2*(this: Geom2d_Hyperbola): gp_Ax2d {.noSideEffect,
    importcpp: "Asymptote2", header: "Geom2d_Hyperbola.hxx".}
proc ConjugateBranch1*(this: Geom2d_Hyperbola): gp_Hypr2d {.noSideEffect,
    importcpp: "ConjugateBranch1", header: "Geom2d_Hyperbola.hxx".}
proc ConjugateBranch2*(this: Geom2d_Hyperbola): gp_Hypr2d {.noSideEffect,
    importcpp: "ConjugateBranch2", header: "Geom2d_Hyperbola.hxx".}
proc Directrix1*(this: Geom2d_Hyperbola): gp_Ax2d {.noSideEffect,
    importcpp: "Directrix1", header: "Geom2d_Hyperbola.hxx".}
proc Directrix2*(this: Geom2d_Hyperbola): gp_Ax2d {.noSideEffect,
    importcpp: "Directrix2", header: "Geom2d_Hyperbola.hxx".}
proc Eccentricity*(this: Geom2d_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom2d_Hyperbola.hxx".}
proc Focal*(this: Geom2d_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "Focal", header: "Geom2d_Hyperbola.hxx".}
proc Focus1*(this: Geom2d_Hyperbola): gp_Pnt2d {.noSideEffect, importcpp: "Focus1",
    header: "Geom2d_Hyperbola.hxx".}
proc Focus2*(this: Geom2d_Hyperbola): gp_Pnt2d {.noSideEffect, importcpp: "Focus2",
    header: "Geom2d_Hyperbola.hxx".}
proc MajorRadius*(this: Geom2d_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "Geom2d_Hyperbola.hxx".}
proc MinorRadius*(this: Geom2d_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "MinorRadius", header: "Geom2d_Hyperbola.hxx".}
proc OtherBranch*(this: Geom2d_Hyperbola): gp_Hypr2d {.noSideEffect,
    importcpp: "OtherBranch", header: "Geom2d_Hyperbola.hxx".}
proc Parameter*(this: Geom2d_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Geom2d_Hyperbola.hxx".}
proc D0*(this: Geom2d_Hyperbola; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_Hyperbola.hxx".}
proc D1*(this: Geom2d_Hyperbola; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_Hyperbola.hxx".}
proc D2*(this: Geom2d_Hyperbola; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Geom2d_Hyperbola.hxx".}
proc D3*(this: Geom2d_Hyperbola; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2d_Hyperbola.hxx".}
proc DN*(this: Geom2d_Hyperbola; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2d_Hyperbola.hxx".}
proc Transform*(this: var Geom2d_Hyperbola; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_Hyperbola.hxx".}
proc Copy*(this: Geom2d_Hyperbola): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Hyperbola.hxx".}
proc DumpJson*(this: Geom2d_Hyperbola; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_Hyperbola.hxx".}
type
  Geom2d_Hyperbolabase_type* = Geom2d_Conic

proc get_type_name*(): cstring {.importcpp: "Geom2d_Hyperbola::get_type_name(@)",
                              header: "Geom2d_Hyperbola.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_Hyperbola::get_type_descriptor(@)",
    header: "Geom2d_Hyperbola.hxx".}
proc DynamicType*(this: Geom2d_Hyperbola): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Hyperbola.hxx".}