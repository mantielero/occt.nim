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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HCurveOnSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of BRepFill_CurveConstraint"
discard "forward decl of BRepFill_CurveConstraint"
type
  HandleC1C1* = Handle[BRepFillCurveConstraint]

## ! same as CurveConstraint from GeomPlate
## ! with BRepAdaptor_Surface instead of
## ! GeomAdaptor_Surface

type
  BRepFillCurveConstraint* {.importcpp: "BRepFill_CurveConstraint",
                            header: "BRepFill_CurveConstraint.hxx", bycopy.} = object of GeomPlateCurveConstraint ##
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


proc constructBRepFillCurveConstraint*(boundary: Handle[Adaptor3dHCurveOnSurface];
                                      order: cint; nPt: cint = 10;
                                      tolDist: cfloat = 0.0001;
                                      tolAng: cfloat = 0.01; tolCurv: cfloat = 0.1): BRepFillCurveConstraint {.
    constructor, importcpp: "BRepFill_CurveConstraint(@)",
    header: "BRepFill_CurveConstraint.hxx".}
proc constructBRepFillCurveConstraint*(boundary: Handle[Adaptor3dHCurve];
                                      tang: cint; nPt: cint = 10;
                                      tolDist: cfloat = 0.0001): BRepFillCurveConstraint {.
    constructor, importcpp: "BRepFill_CurveConstraint(@)",
    header: "BRepFill_CurveConstraint.hxx".}
type
  BRepFillCurveConstraintbaseType* = GeomPlateCurveConstraint

proc getTypeName*(): cstring {.importcpp: "BRepFill_CurveConstraint::get_type_name(@)",
                            header: "BRepFill_CurveConstraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepFill_CurveConstraint::get_type_descriptor(@)",
    header: "BRepFill_CurveConstraint.hxx".}
proc dynamicType*(this: BRepFillCurveConstraint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepFill_CurveConstraint.hxx".}

























