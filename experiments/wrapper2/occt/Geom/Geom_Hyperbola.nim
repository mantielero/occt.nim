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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Geom_Conic, ../Standard/Standard_Boolean, ../Standard/Standard_Integer

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
  Handle_Geom_Hyperbola* = handle[Geom_Hyperbola]

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
  Geom_Hyperbola* {.importcpp: "Geom_Hyperbola", header: "Geom_Hyperbola.hxx", bycopy.} = object of Geom_Conic ##
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


proc constructGeom_Hyperbola*(H: gp_Hypr): Geom_Hyperbola {.constructor,
    importcpp: "Geom_Hyperbola(@)", header: "Geom_Hyperbola.hxx".}
proc constructGeom_Hyperbola*(A2: gp_Ax2; MajorRadius: Standard_Real;
                             MinorRadius: Standard_Real): Geom_Hyperbola {.
    constructor, importcpp: "Geom_Hyperbola(@)", header: "Geom_Hyperbola.hxx".}
proc SetHypr*(this: var Geom_Hyperbola; H: gp_Hypr) {.importcpp: "SetHypr",
    header: "Geom_Hyperbola.hxx".}
proc SetMajorRadius*(this: var Geom_Hyperbola; MajorRadius: Standard_Real) {.
    importcpp: "SetMajorRadius", header: "Geom_Hyperbola.hxx".}
proc SetMinorRadius*(this: var Geom_Hyperbola; MinorRadius: Standard_Real) {.
    importcpp: "SetMinorRadius", header: "Geom_Hyperbola.hxx".}
proc Hypr*(this: Geom_Hyperbola): gp_Hypr {.noSideEffect, importcpp: "Hypr",
                                        header: "Geom_Hyperbola.hxx".}
proc ReversedParameter*(this: Geom_Hyperbola; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_Hyperbola.hxx".}
proc FirstParameter*(this: Geom_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_Hyperbola.hxx".}
proc LastParameter*(this: Geom_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_Hyperbola.hxx".}
proc IsClosed*(this: Geom_Hyperbola): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_Hyperbola.hxx".}
proc IsPeriodic*(this: Geom_Hyperbola): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_Hyperbola.hxx".}
proc Asymptote1*(this: Geom_Hyperbola): gp_Ax1 {.noSideEffect,
    importcpp: "Asymptote1", header: "Geom_Hyperbola.hxx".}
proc Asymptote2*(this: Geom_Hyperbola): gp_Ax1 {.noSideEffect,
    importcpp: "Asymptote2", header: "Geom_Hyperbola.hxx".}
proc ConjugateBranch1*(this: Geom_Hyperbola): gp_Hypr {.noSideEffect,
    importcpp: "ConjugateBranch1", header: "Geom_Hyperbola.hxx".}
proc ConjugateBranch2*(this: Geom_Hyperbola): gp_Hypr {.noSideEffect,
    importcpp: "ConjugateBranch2", header: "Geom_Hyperbola.hxx".}
proc Directrix1*(this: Geom_Hyperbola): gp_Ax1 {.noSideEffect,
    importcpp: "Directrix1", header: "Geom_Hyperbola.hxx".}
proc Directrix2*(this: Geom_Hyperbola): gp_Ax1 {.noSideEffect,
    importcpp: "Directrix2", header: "Geom_Hyperbola.hxx".}
proc Eccentricity*(this: Geom_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom_Hyperbola.hxx".}
proc Focal*(this: Geom_Hyperbola): Standard_Real {.noSideEffect, importcpp: "Focal",
    header: "Geom_Hyperbola.hxx".}
proc Focus1*(this: Geom_Hyperbola): gp_Pnt {.noSideEffect, importcpp: "Focus1",
    header: "Geom_Hyperbola.hxx".}
proc Focus2*(this: Geom_Hyperbola): gp_Pnt {.noSideEffect, importcpp: "Focus2",
    header: "Geom_Hyperbola.hxx".}
proc MajorRadius*(this: Geom_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "Geom_Hyperbola.hxx".}
proc MinorRadius*(this: Geom_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "MinorRadius", header: "Geom_Hyperbola.hxx".}
proc OtherBranch*(this: Geom_Hyperbola): gp_Hypr {.noSideEffect,
    importcpp: "OtherBranch", header: "Geom_Hyperbola.hxx".}
proc Parameter*(this: Geom_Hyperbola): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Geom_Hyperbola.hxx".}
proc D0*(this: Geom_Hyperbola; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_Hyperbola.hxx".}
proc D1*(this: Geom_Hyperbola; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "Geom_Hyperbola.hxx".}
proc D2*(this: Geom_Hyperbola; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2", header: "Geom_Hyperbola.hxx".}
proc D3*(this: Geom_Hyperbola; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Geom_Hyperbola.hxx".}
proc DN*(this: Geom_Hyperbola; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_Hyperbola.hxx".}
proc Transform*(this: var Geom_Hyperbola; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_Hyperbola.hxx".}
proc Copy*(this: Geom_Hyperbola): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Hyperbola.hxx".}
proc DumpJson*(this: Geom_Hyperbola; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Hyperbola.hxx".}
type
  Geom_Hyperbolabase_type* = Geom_Conic

proc get_type_name*(): cstring {.importcpp: "Geom_Hyperbola::get_type_name(@)",
                              header: "Geom_Hyperbola.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Hyperbola::get_type_descriptor(@)",
    header: "Geom_Hyperbola.hxx".}
proc DynamicType*(this: Geom_Hyperbola): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Hyperbola.hxx".}