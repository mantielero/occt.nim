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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, FairCurve_Batten,
  ../Standard/Standard_Boolean, FairCurve_AnalysisCode,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_NullValue"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  FairCurve_MinimalVariation* {.importcpp: "FairCurve_MinimalVariation",
                               header: "FairCurve_MinimalVariation.hxx", bycopy.} = object of FairCurve_Batten ##
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


proc constructFairCurve_MinimalVariation*(P1: gp_Pnt2d; P2: gp_Pnt2d;
    Heigth: Standard_Real; Slope: Standard_Real = 0; PhysicalRatio: Standard_Real = 0): FairCurve_MinimalVariation {.
    constructor, importcpp: "FairCurve_MinimalVariation(@)",
    header: "FairCurve_MinimalVariation.hxx".}
proc SetCurvature1*(this: var FairCurve_MinimalVariation; Curvature: Standard_Real) {.
    importcpp: "SetCurvature1", header: "FairCurve_MinimalVariation.hxx".}
proc SetCurvature2*(this: var FairCurve_MinimalVariation; Curvature: Standard_Real) {.
    importcpp: "SetCurvature2", header: "FairCurve_MinimalVariation.hxx".}
proc SetPhysicalRatio*(this: var FairCurve_MinimalVariation; Ratio: Standard_Real) {.
    importcpp: "SetPhysicalRatio", header: "FairCurve_MinimalVariation.hxx".}
proc Compute*(this: var FairCurve_MinimalVariation;
             ACode: var FairCurve_AnalysisCode;
             NbIterations: Standard_Integer = 50; Tolerance: Standard_Real = 1.0e-3): Standard_Boolean {.
    importcpp: "Compute", header: "FairCurve_MinimalVariation.hxx".}
proc GetCurvature1*(this: FairCurve_MinimalVariation): Standard_Real {.noSideEffect,
    importcpp: "GetCurvature1", header: "FairCurve_MinimalVariation.hxx".}
proc GetCurvature2*(this: FairCurve_MinimalVariation): Standard_Real {.noSideEffect,
    importcpp: "GetCurvature2", header: "FairCurve_MinimalVariation.hxx".}
proc GetPhysicalRatio*(this: FairCurve_MinimalVariation): Standard_Real {.
    noSideEffect, importcpp: "GetPhysicalRatio",
    header: "FairCurve_MinimalVariation.hxx".}
proc Dump*(this: FairCurve_MinimalVariation; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "FairCurve_MinimalVariation.hxx".}