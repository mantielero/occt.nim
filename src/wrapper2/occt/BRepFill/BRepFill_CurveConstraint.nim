##  Created on: 1997-10-31
##  Created by: Joelle CHAUVET
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../GeomPlate/GeomPlate_CurveConstraint, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HCurveOnSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of BRepFill_CurveConstraint"
discard "forward decl of BRepFill_CurveConstraint"
type
  Handle_BRepFill_CurveConstraint* = handle[BRepFill_CurveConstraint]

## ! same as CurveConstraint from GeomPlate
## ! with BRepAdaptor_Surface instead of
## ! GeomAdaptor_Surface

type
  BRepFill_CurveConstraint* {.importcpp: "BRepFill_CurveConstraint",
                             header: "BRepFill_CurveConstraint.hxx", bycopy.} = object of GeomPlate_CurveConstraint ##
                                                                                                             ## !
                                                                                                             ## Create
                                                                                                             ## a
                                                                                                             ## constraint
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Order
                                                                                                             ## is
                                                                                                             ## the
                                                                                                             ## order
                                                                                                             ## of
                                                                                                             ## the
                                                                                                             ## constraint.
                                                                                                             ## The
                                                                                                             ## possible
                                                                                                             ## values
                                                                                                             ## for
                                                                                                             ## order
                                                                                                             ## are
                                                                                                             ## -1,0,1,2.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Order
                                                                                                             ## i
                                                                                                             ## means
                                                                                                             ## constraints
                                                                                                             ## Gi
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Npt
                                                                                                             ## is
                                                                                                             ## the
                                                                                                             ## number
                                                                                                             ## of
                                                                                                             ## points
                                                                                                             ## associated
                                                                                                             ## with
                                                                                                             ## the
                                                                                                             ## constraint.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## TolDist
                                                                                                             ## is
                                                                                                             ## the
                                                                                                             ## maximum
                                                                                                             ## error
                                                                                                             ## to
                                                                                                             ## satisfy
                                                                                                             ## for
                                                                                                             ## G0
                                                                                                             ## constraints
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## TolAng
                                                                                                             ## is
                                                                                                             ## the
                                                                                                             ## maximum
                                                                                                             ## error
                                                                                                             ## to
                                                                                                             ## satisfy
                                                                                                             ## for
                                                                                                             ## G1
                                                                                                             ## constraints
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## TolCurv
                                                                                                             ## is
                                                                                                             ## the
                                                                                                             ## maximum
                                                                                                             ## error
                                                                                                             ## to
                                                                                                             ## satisfy
                                                                                                             ## for
                                                                                                             ## G2
                                                                                                             ## constraints
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## These
                                                                                                             ## errors
                                                                                                             ## can
                                                                                                             ## be
                                                                                                             ## replaced
                                                                                                             ## by
                                                                                                             ## laws
                                                                                                             ## of
                                                                                                             ## criterion.


proc constructBRepFill_CurveConstraint*(Boundary: handle[Adaptor3d_HCurveOnSurface];
                                       Order: Standard_Integer;
                                       NPt: Standard_Integer = 10;
                                       TolDist: Standard_Real = 0.0001;
                                       TolAng: Standard_Real = 0.01;
                                       TolCurv: Standard_Real = 0.1): BRepFill_CurveConstraint {.
    constructor, importcpp: "BRepFill_CurveConstraint(@)",
    header: "BRepFill_CurveConstraint.hxx".}
proc constructBRepFill_CurveConstraint*(Boundary: handle[Adaptor3d_HCurve];
                                       Tang: Standard_Integer;
                                       NPt: Standard_Integer = 10;
                                       TolDist: Standard_Real = 0.0001): BRepFill_CurveConstraint {.
    constructor, importcpp: "BRepFill_CurveConstraint(@)",
    header: "BRepFill_CurveConstraint.hxx".}
type
  BRepFill_CurveConstraintbase_type* = GeomPlate_CurveConstraint

proc get_type_name*(): cstring {.importcpp: "BRepFill_CurveConstraint::get_type_name(@)",
                              header: "BRepFill_CurveConstraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepFill_CurveConstraint::get_type_descriptor(@)",
    header: "BRepFill_CurveConstraint.hxx".}
proc DynamicType*(this: BRepFill_CurveConstraint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepFill_CurveConstraint.hxx".}