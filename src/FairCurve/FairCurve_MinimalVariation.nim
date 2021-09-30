##  Created on: 1996-02-26
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_NullValue"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  FairCurveMinimalVariation* {.importcpp: "FairCurve_MinimalVariation",
                              header: "FairCurve_MinimalVariation.hxx", bycopy.} = object of FairCurveBatten ##
                                                                                                      ## !
                                                                                                      ## Constructs
                                                                                                      ## the
                                                                                                      ## two
                                                                                                      ## contact
                                                                                                      ## points
                                                                                                      ## P1
                                                                                                      ## and
                                                                                                      ## P2
                                                                                                      ## and
                                                                                                      ## the
                                                                                                      ## geometrical
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## characteristics
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## batten
                                                                                                      ## (elastic
                                                                                                      ## beam)
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## These
                                                                                                      ## include
                                                                                                      ## the
                                                                                                      ## real
                                                                                                      ## number
                                                                                                      ## values
                                                                                                      ## for
                                                                                                      ## height
                                                                                                      ## of
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## deformation
                                                                                                      ## Height,
                                                                                                      ## slope
                                                                                                      ## value
                                                                                                      ## Slope,
                                                                                                      ## and
                                                                                                      ## kind
                                                                                                      ## of
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## energy
                                                                                                      ## PhysicalRatio.
                                                                                                      ## The
                                                                                                      ## kinds
                                                                                                      ## of
                                                                                                      ## energy
                                                                                                      ## include:
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## Jerk
                                                                                                      ## (0)
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## Sagging
                                                                                                      ## (1).
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Note
                                                                                                      ## that
                                                                                                      ## the
                                                                                                      ## default
                                                                                                      ## setting
                                                                                                      ## for
                                                                                                      ## Physical
                                                                                                      ## Ration
                                                                                                      ## is
                                                                                                      ## in
                                                                                                      ## FairCurve_Batten
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Other
                                                                                                      ## parameters
                                                                                                      ## are
                                                                                                      ## initialized
                                                                                                      ## as
                                                                                                      ## follow
                                                                                                      ## :
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## FreeSliding
                                                                                                      ## =
                                                                                                      ## False
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## ConstraintOrder1
                                                                                                      ## =
                                                                                                      ## 1
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## ConstraintOrder2
                                                                                                      ## =
                                                                                                      ## 1
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## Angle1
                                                                                                      ## =
                                                                                                      ## 0
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## Angle2
                                                                                                      ## =
                                                                                                      ## 0
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## Curvature1
                                                                                                      ## =
                                                                                                      ## 0
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## Curvature2
                                                                                                      ## =
                                                                                                      ## 0
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## SlidingFactor
                                                                                                      ## =
                                                                                                      ## 1
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Warning
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## If
                                                                                                      ## PhysicalRatio
                                                                                                      ## equals
                                                                                                      ## 1,
                                                                                                      ## you
                                                                                                      ## cannot
                                                                                                      ## impose
                                                                                                      ## constraints
                                                                                                      ## on
                                                                                                      ## curvature.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Exceptions
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## NegativeValue
                                                                                                      ## if
                                                                                                      ## Height
                                                                                                      ## is
                                                                                                      ## less
                                                                                                      ## than
                                                                                                      ## or
                                                                                                      ## equal
                                                                                                      ## to
                                                                                                      ## 0.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## NullValue
                                                                                                      ## if
                                                                                                      ## the
                                                                                                      ## distance
                                                                                                      ## between
                                                                                                      ## P1
                                                                                                      ## and
                                                                                                      ## P2
                                                                                                      ## is
                                                                                                      ## less
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## than
                                                                                                      ## or
                                                                                                      ## equal
                                                                                                      ## to
                                                                                                      ## the
                                                                                                      ## tolerance
                                                                                                      ## value
                                                                                                      ## for
                                                                                                      ## distance
                                                                                                      ## in
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Precision::Confusion:
                                                                                                      ## P1.IsEqual(P2,
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Precision::Confusion()).
                                                                                                      ## The
                                                                                                      ## function
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## gp_Pnt2d::IsEqual
                                                                                                      ## tests
                                                                                                      ## to
                                                                                                      ## see
                                                                                                      ## if
                                                                                                      ## this
                                                                                                      ## is
                                                                                                      ## the
                                                                                                      ## case.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Definition
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## geometricals
                                                                                                      ## constraints
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## compute
                                                                                                      ## the
                                                                                                      ## curve
                                                                                                      ## with
                                                                                                      ## respect
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## delta-constraints.


proc constructFairCurveMinimalVariation*(p1: Pnt2d; p2: Pnt2d; heigth: cfloat;
                                        slope: cfloat = 0; physicalRatio: cfloat = 0): FairCurveMinimalVariation {.
    constructor, importcpp: "FairCurve_MinimalVariation(@)",
    header: "FairCurve_MinimalVariation.hxx".}
proc setCurvature1*(this: var FairCurveMinimalVariation; curvature: cfloat) {.
    importcpp: "SetCurvature1", header: "FairCurve_MinimalVariation.hxx".}
proc setCurvature2*(this: var FairCurveMinimalVariation; curvature: cfloat) {.
    importcpp: "SetCurvature2", header: "FairCurve_MinimalVariation.hxx".}
proc setPhysicalRatio*(this: var FairCurveMinimalVariation; ratio: cfloat) {.
    importcpp: "SetPhysicalRatio", header: "FairCurve_MinimalVariation.hxx".}
proc compute*(this: var FairCurveMinimalVariation; aCode: var FairCurveAnalysisCode;
             nbIterations: cint = 50; tolerance: cfloat = 1.0e-3): bool {.
    importcpp: "Compute", header: "FairCurve_MinimalVariation.hxx".}
proc getCurvature1*(this: FairCurveMinimalVariation): cfloat {.noSideEffect,
    importcpp: "GetCurvature1", header: "FairCurve_MinimalVariation.hxx".}
proc getCurvature2*(this: FairCurveMinimalVariation): cfloat {.noSideEffect,
    importcpp: "GetCurvature2", header: "FairCurve_MinimalVariation.hxx".}
proc getPhysicalRatio*(this: FairCurveMinimalVariation): cfloat {.noSideEffect,
    importcpp: "GetPhysicalRatio", header: "FairCurve_MinimalVariation.hxx".}
proc dump*(this: FairCurveMinimalVariation; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "FairCurve_MinimalVariation.hxx".}

























