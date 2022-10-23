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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Law_Function"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_SimpleBound"
type
  HandleGeomFillSimpleBound* = Handle[GeomFillSimpleBound]

## ! Defines a 3d curve as a boundary for a
## ! GeomFill_ConstrainedFilling algorithm.
## ! This curve is unattached to an existing surface.D
## ! Contains fields to allow a reparametrization of curve.

type
  GeomFillSimpleBound* {.importcpp: "GeomFill_SimpleBound",
                        header: "GeomFill_SimpleBound.hxx", bycopy.} = object of GeomFillBoundary ##
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


proc newGeomFillSimpleBound*(curve: Handle[Adaptor3dHCurve]; tol3d: cfloat;
                            tolang: cfloat): GeomFillSimpleBound {.cdecl,
    constructor, importcpp: "GeomFill_SimpleBound(@)", header: "GeomFill_SimpleBound.hxx".}
proc value*(this: GeomFillSimpleBound; u: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "GeomFill_SimpleBound.hxx".}
proc d1*(this: GeomFillSimpleBound; u: cfloat; p: var PntObj; v: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "GeomFill_SimpleBound.hxx".}
proc reparametrize*(this: var GeomFillSimpleBound; first: cfloat; last: cfloat;
                   hasDF: bool; hasDL: bool; df: cfloat; dl: cfloat; rev: bool) {.cdecl,
    importcpp: "Reparametrize", header: "GeomFill_SimpleBound.hxx".}
proc bounds*(this: GeomFillSimpleBound; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Bounds", header: "GeomFill_SimpleBound.hxx".}
proc isDegenerated*(this: GeomFillSimpleBound): bool {.noSideEffect, cdecl,
    importcpp: "IsDegenerated", header: "GeomFill_SimpleBound.hxx".}