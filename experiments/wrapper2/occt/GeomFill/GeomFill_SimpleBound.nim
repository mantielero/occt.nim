##  Created on: 1995-11-03
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, GeomFill_Boundary,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Law_Function"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_SimpleBound"
discard "forward decl of GeomFill_SimpleBound"
type
  Handle_GeomFill_SimpleBound* = handle[GeomFill_SimpleBound]

## ! Defines a 3d curve as a boundary for a
## ! GeomFill_ConstrainedFilling algorithm.
## ! This curve is unattached to an existing surface.D
## ! Contains fields to allow a reparametrization of curve.

type
  GeomFill_SimpleBound* {.importcpp: "GeomFill_SimpleBound",
                         header: "GeomFill_SimpleBound.hxx", bycopy.} = object of GeomFill_Boundary ##
                                                                                             ## !
                                                                                             ## Constructs
                                                                                             ## the
                                                                                             ## boundary
                                                                                             ## object
                                                                                             ## defined
                                                                                             ## by
                                                                                             ## the
                                                                                             ## 3d
                                                                                             ## curve.
                                                                                             ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## surface
                                                                                             ## to
                                                                                             ## be
                                                                                             ## built
                                                                                             ## along
                                                                                             ## this
                                                                                             ## boundary
                                                                                             ## will
                                                                                             ## be
                                                                                             ## in
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## tolerance
                                                                                             ## range
                                                                                             ## defined
                                                                                             ## by
                                                                                             ## Tol3d.
                                                                                             ##
                                                                                             ## !
                                                                                             ## This
                                                                                             ## object
                                                                                             ## is
                                                                                             ## to
                                                                                             ## be
                                                                                             ## used
                                                                                             ## as
                                                                                             ## a
                                                                                             ## boundary
                                                                                             ## for
                                                                                             ## a
                                                                                             ##
                                                                                             ## !
                                                                                             ## GeomFill_ConstrainedFilling
                                                                                             ## framework.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Dummy
                                                                                             ## is
                                                                                             ## initialized
                                                                                             ## but
                                                                                             ## has
                                                                                             ## no
                                                                                             ## function
                                                                                             ## in
                                                                                             ## this
                                                                                             ## class.
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
                                                                                             ## that
                                                                                             ## is,
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
                                                                                             ## 3D
                                                                                             ## curve
                                                                                             ## from
                                                                                             ## the
                                                                                             ## package
                                                                                             ## Geom
                                                                                             ##
                                                                                             ## !
                                                                                             ## -
                                                                                             ## and
                                                                                             ## those
                                                                                             ## required
                                                                                             ## of
                                                                                             ## the
                                                                                             ## curve
                                                                                             ## by
                                                                                             ## the
                                                                                             ## computation
                                                                                             ##
                                                                                             ## !
                                                                                             ## algorithm
                                                                                             ## which
                                                                                             ## uses
                                                                                             ## it.
                                                                                             ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## adapted
                                                                                             ## curve
                                                                                             ## is
                                                                                             ## created
                                                                                             ## in
                                                                                             ## one
                                                                                             ## of
                                                                                             ## the
                                                                                             ## following
                                                                                             ## ways:
                                                                                             ##
                                                                                             ## !
                                                                                             ## -
                                                                                             ## First
                                                                                             ## sequence:
                                                                                             ##
                                                                                             ## !
                                                                                             ## Handle(Geom_Curve)
                                                                                             ## myCurve
                                                                                             ## =
                                                                                             ## ...
                                                                                             ## ;
                                                                                             ##
                                                                                             ## !
                                                                                             ## Handle(GeomAdaptor_HCurve)
                                                                                             ##
                                                                                             ## !
                                                                                             ## Curve
                                                                                             ## =
                                                                                             ## new
                                                                                             ##
                                                                                             ## !
                                                                                             ## GeomAdaptor_HCurve(myCurve);
                                                                                             ##
                                                                                             ## !
                                                                                             ## -
                                                                                             ## Second
                                                                                             ## sequence:
                                                                                             ##
                                                                                             ## !
                                                                                             ## //
                                                                                             ## Step
                                                                                             ## 1
                                                                                             ##
                                                                                             ## !
                                                                                             ## Handle(Geom_Curve)
                                                                                             ## myCurve
                                                                                             ## =
                                                                                             ## ...
                                                                                             ## ;
                                                                                             ##
                                                                                             ## !
                                                                                             ## GeomAdaptor_Curve
                                                                                             ## Crv
                                                                                             ## (myCurve);
                                                                                             ##
                                                                                             ## !
                                                                                             ## //
                                                                                             ## Step
                                                                                             ## 2
                                                                                             ##
                                                                                             ## !
                                                                                             ## Handle(GeomAdaptor_HCurve)
                                                                                             ##
                                                                                             ## !
                                                                                             ## Curve
                                                                                             ## =
                                                                                             ## new
                                                                                             ##
                                                                                             ## !
                                                                                             ## GeomAdaptor_HCurve(Crv);
                                                                                             ##
                                                                                             ## !
                                                                                             ## You
                                                                                             ## use
                                                                                             ## the
                                                                                             ## second
                                                                                             ## part
                                                                                             ## of
                                                                                             ## this
                                                                                             ## sequence
                                                                                             ## if
                                                                                             ## you
                                                                                             ## already
                                                                                             ##
                                                                                             ## !
                                                                                             ## have
                                                                                             ## the
                                                                                             ## adapted
                                                                                             ## curve
                                                                                             ## Crv.
                                                                                             ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## boundary
                                                                                             ## is
                                                                                             ## then
                                                                                             ## constructed
                                                                                             ## with
                                                                                             ## the
                                                                                             ## Curve
                                                                                             ## object:
                                                                                             ##
                                                                                             ## !
                                                                                             ## Standard_Real
                                                                                             ## Tol
                                                                                             ## =
                                                                                             ## ...
                                                                                             ## ;
                                                                                             ##
                                                                                             ## !
                                                                                             ## Standard_Real
                                                                                             ## dummy
                                                                                             ## =
                                                                                             ## 0.
                                                                                             ## ;
                                                                                             ##
                                                                                             ## !
                                                                                             ## myBoundary
                                                                                             ## =
                                                                                             ## GeomFill_SimpleBound
                                                                                             ##
                                                                                             ## !
                                                                                             ## (Curve,Tol,dummy);


proc constructGeomFill_SimpleBound*(Curve: handle[Adaptor3d_HCurve];
                                   Tol3d: Standard_Real; Tolang: Standard_Real): GeomFill_SimpleBound {.
    constructor, importcpp: "GeomFill_SimpleBound(@)",
    header: "GeomFill_SimpleBound.hxx".}
proc Value*(this: GeomFill_SimpleBound; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "GeomFill_SimpleBound.hxx".}
proc D1*(this: GeomFill_SimpleBound; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomFill_SimpleBound.hxx".}
proc Reparametrize*(this: var GeomFill_SimpleBound; First: Standard_Real;
                   Last: Standard_Real; HasDF: Standard_Boolean;
                   HasDL: Standard_Boolean; DF: Standard_Real; DL: Standard_Real;
                   Rev: Standard_Boolean) {.importcpp: "Reparametrize",
    header: "GeomFill_SimpleBound.hxx".}
proc Bounds*(this: GeomFill_SimpleBound; First: var Standard_Real;
            Last: var Standard_Real) {.noSideEffect, importcpp: "Bounds",
                                    header: "GeomFill_SimpleBound.hxx".}
proc IsDegenerated*(this: GeomFill_SimpleBound): Standard_Boolean {.noSideEffect,
    importcpp: "IsDegenerated", header: "GeomFill_SimpleBound.hxx".}
type
  GeomFill_SimpleBoundbase_type* = GeomFill_Boundary

proc get_type_name*(): cstring {.importcpp: "GeomFill_SimpleBound::get_type_name(@)",
                              header: "GeomFill_SimpleBound.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_SimpleBound::get_type_descriptor(@)",
    header: "GeomFill_SimpleBound.hxx".}
proc DynamicType*(this: GeomFill_SimpleBound): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_SimpleBound.hxx".}