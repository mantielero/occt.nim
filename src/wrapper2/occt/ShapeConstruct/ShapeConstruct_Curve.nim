##  Created on: 1998-07-14
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  ShapeConstruct_Curve* {.importcpp: "ShapeConstruct_Curve",
                         header: "ShapeConstruct_Curve.hxx", bycopy.} = object ## !
                                                                          ## Modifies a curve in order to make its bounds
                                                                          ## confused with
                                                                          ## ! given
                                                                          ## points.
                                                                          ## ! Works only on lines and
                                                                          ## B-Splines,
                                                                          ## returns True in this case,
                                                                          ## ! else
                                                                          ## returns False.
                                                                          ## ! For line
                                                                          ## considers both
                                                                          ## bounding
                                                                          ## points, for
                                                                          ## B-Splines only
                                                                          ## !
                                                                          ## specified.
                                                                          ## !
                                                                          ## !
                                                                          ## Warning : Does not check if curve should be
                                                                          ## reversed


proc AdjustCurve*(this: ShapeConstruct_Curve; C3D: handle[Geom_Curve]; P1: gp_Pnt;
                 P2: gp_Pnt; take1: Standard_Boolean = Standard_True;
                 take2: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "AdjustCurve", header: "ShapeConstruct_Curve.hxx".}
proc AdjustCurveSegment*(this: ShapeConstruct_Curve; C3D: handle[Geom_Curve];
                        P1: gp_Pnt; P2: gp_Pnt; U1: Standard_Real; U2: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "AdjustCurveSegment",
    header: "ShapeConstruct_Curve.hxx".}
proc AdjustCurve2d*(this: ShapeConstruct_Curve; C2D: handle[Geom2d_Curve];
                   P1: gp_Pnt2d; P2: gp_Pnt2d;
                   take1: Standard_Boolean = Standard_True;
                   take2: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "AdjustCurve2d", header: "ShapeConstruct_Curve.hxx".}
proc ConvertToBSpline*(this: ShapeConstruct_Curve; C: handle[Geom_Curve];
                      first: Standard_Real; last: Standard_Real; prec: Standard_Real): handle[
    Geom_BSplineCurve] {.noSideEffect, importcpp: "ConvertToBSpline",
                        header: "ShapeConstruct_Curve.hxx".}
proc ConvertToBSpline*(this: ShapeConstruct_Curve; C: handle[Geom2d_Curve];
                      first: Standard_Real; last: Standard_Real; prec: Standard_Real): handle[
    Geom2d_BSplineCurve] {.noSideEffect, importcpp: "ConvertToBSpline",
                          header: "ShapeConstruct_Curve.hxx".}
proc FixKnots*(knots: var handle[TColStd_HArray1OfReal]): Standard_Boolean {.
    importcpp: "ShapeConstruct_Curve::FixKnots(@)",
    header: "ShapeConstruct_Curve.hxx".}
proc FixKnots*(knots: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "ShapeConstruct_Curve::FixKnots(@)",
    header: "ShapeConstruct_Curve.hxx".}