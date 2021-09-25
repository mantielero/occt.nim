##  Created on: 1991-04-15
##  Created by: Philippe DAUTRY
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dGccQualifiedCurve* {.importcpp: "Geom2dGcc_QualifiedCurve",
                            header: "Geom2dGcc_QualifiedCurve.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Constructs
                                                                                 ## a
                                                                                 ## qualified
                                                                                 ## curve
                                                                                 ## by
                                                                                 ## assigning
                                                                                 ## the
                                                                                 ## qualifier
                                                                                 ##
                                                                                 ## !
                                                                                 ## Qualifier
                                                                                 ## to
                                                                                 ## the
                                                                                 ## curve
                                                                                 ## Curve.
                                                                                 ## Qualifier
                                                                                 ## may
                                                                                 ## be:
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## GccEnt_enclosing
                                                                                 ## if
                                                                                 ## the
                                                                                 ## solution
                                                                                 ## of
                                                                                 ## a
                                                                                 ## construction
                                                                                 ##
                                                                                 ## !
                                                                                 ## algorithm
                                                                                 ## using
                                                                                 ## the
                                                                                 ## qualified
                                                                                 ## curve
                                                                                 ## encloses
                                                                                 ## the
                                                                                 ## curve,
                                                                                 ## or
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## GccEnt_enclosed
                                                                                 ## if
                                                                                 ## the
                                                                                 ## solution
                                                                                 ## is
                                                                                 ## enclosed
                                                                                 ## by
                                                                                 ## the
                                                                                 ## curve,
                                                                                 ## or
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## GccEnt_outside
                                                                                 ## if
                                                                                 ## both
                                                                                 ## the
                                                                                 ## solution
                                                                                 ## and
                                                                                 ## the
                                                                                 ## curve
                                                                                 ##
                                                                                 ## !
                                                                                 ## are
                                                                                 ## external
                                                                                 ## to
                                                                                 ## one
                                                                                 ## another,
                                                                                 ## or
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## GccEnt_unqualified
                                                                                 ## if
                                                                                 ## all
                                                                                 ## solutions
                                                                                 ## apply.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Note:
                                                                                 ## The
                                                                                 ## interior
                                                                                 ## of
                                                                                 ## a
                                                                                 ## curve
                                                                                 ## is
                                                                                 ## defined
                                                                                 ## as
                                                                                 ## the
                                                                                 ## left-hand
                                                                                 ##
                                                                                 ## !
                                                                                 ## side
                                                                                 ## of
                                                                                 ## the
                                                                                 ## curve
                                                                                 ## in
                                                                                 ## relation
                                                                                 ## to
                                                                                 ## its
                                                                                 ## orientation.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Warning
                                                                                 ##
                                                                                 ## !
                                                                                 ## Curve
                                                                                 ## is
                                                                                 ## an
                                                                                 ## adapted
                                                                                 ## curve,
                                                                                 ## i.e.
                                                                                 ## an
                                                                                 ## object
                                                                                 ## which
                                                                                 ## is
                                                                                 ## an
                                                                                 ## interface
                                                                                 ## between:
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## the
                                                                                 ## services
                                                                                 ## provided
                                                                                 ## by
                                                                                 ## a
                                                                                 ## 2D
                                                                                 ## curve
                                                                                 ## from
                                                                                 ## the
                                                                                 ## package
                                                                                 ## Geom2d,
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## and
                                                                                 ## those
                                                                                 ## required
                                                                                 ## on
                                                                                 ## the
                                                                                 ## curve
                                                                                 ## by
                                                                                 ## a
                                                                                 ## computation
                                                                                 ## algorithm.
                                                                                 ##
                                                                                 ## !
                                                                                 ## The
                                                                                 ## adapted
                                                                                 ## curve
                                                                                 ## is
                                                                                 ## created
                                                                                 ## in
                                                                                 ## the
                                                                                 ## following
                                                                                 ## way:
                                                                                 ##
                                                                                 ## !
                                                                                 ## Handle(Geom2d_Curve)
                                                                                 ## mycurve
                                                                                 ## =
                                                                                 ## ...
                                                                                 ## ;
                                                                                 ##
                                                                                 ## !
                                                                                 ## Geom2dAdaptor_Curve
                                                                                 ## Curve
                                                                                 ## (
                                                                                 ## mycurve
                                                                                 ## )
                                                                                 ## ;
                                                                                 ##
                                                                                 ## !
                                                                                 ## The
                                                                                 ## qualified
                                                                                 ## curve
                                                                                 ## is
                                                                                 ## then
                                                                                 ## constructed
                                                                                 ## with
                                                                                 ## this
                                                                                 ## object:
                                                                                 ##
                                                                                 ## !
                                                                                 ## GccEnt_Position
                                                                                 ## myQualif
                                                                                 ## =
                                                                                 ## GccEnt_outside
                                                                                 ## ;
                                                                                 ##
                                                                                 ## !
                                                                                 ## Geom2dGcc_QualifiedCurve
                                                                                 ## myQCurve
                                                                                 ## (
                                                                                 ## Curve,
                                                                                 ## myQualif
                                                                                 ## );
                                                                                 ##
                                                                                 ## !
                                                                                 ## is
                                                                                 ## private;


proc constructGeom2dGccQualifiedCurve*(curve: Geom2dAdaptorCurve;
                                      qualifier: GccEntPosition): Geom2dGccQualifiedCurve {.
    constructor, importcpp: "Geom2dGcc_QualifiedCurve(@)",
    header: "Geom2dGcc_QualifiedCurve.hxx".}
proc qualified*(this: Geom2dGccQualifiedCurve): Geom2dAdaptorCurve {.noSideEffect,
    importcpp: "Qualified", header: "Geom2dGcc_QualifiedCurve.hxx".}
proc qualifier*(this: Geom2dGccQualifiedCurve): GccEntPosition {.noSideEffect,
    importcpp: "Qualifier", header: "Geom2dGcc_QualifiedCurve.hxx".}
proc isUnqualified*(this: Geom2dGccQualifiedCurve): bool {.noSideEffect,
    importcpp: "IsUnqualified", header: "Geom2dGcc_QualifiedCurve.hxx".}
proc isEnclosing*(this: Geom2dGccQualifiedCurve): bool {.noSideEffect,
    importcpp: "IsEnclosing", header: "Geom2dGcc_QualifiedCurve.hxx".}
proc isEnclosed*(this: Geom2dGccQualifiedCurve): bool {.noSideEffect,
    importcpp: "IsEnclosed", header: "Geom2dGcc_QualifiedCurve.hxx".}
proc isOutside*(this: Geom2dGccQualifiedCurve): bool {.noSideEffect,
    importcpp: "IsOutside", header: "Geom2dGcc_QualifiedCurve.hxx".}
