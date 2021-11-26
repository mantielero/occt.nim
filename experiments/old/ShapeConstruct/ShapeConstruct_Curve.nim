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

discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  ShapeConstructCurve* {.importcpp: "ShapeConstruct_Curve",
                        header: "ShapeConstruct_Curve.hxx", bycopy.} = object ## !
                                                                         ## Modifies a curve in order to make its bounds
                                                                         ## confused with
                                                                         ## ! given points.
                                                                         ## ! Works only on lines and
                                                                         ## B-Splines, returns True in this case,
                                                                         ## ! else returns False.
                                                                         ## ! For line
                                                                         ## considers both
                                                                         ## bounding points, for
                                                                         ## B-Splines only
                                                                         ## !
                                                                         ## specified.
                                                                         ## !
                                                                         ## ! Warning : Does not check if curve should be
                                                                         ## reversed


proc adjustCurve*(this: ShapeConstructCurve; c3d: Handle[GeomCurve]; p1: Pnt; p2: Pnt;
                 take1: bool = true; take2: bool = true): bool {.noSideEffect,
    importcpp: "AdjustCurve", header: "ShapeConstruct_Curve.hxx".}
proc adjustCurveSegment*(this: ShapeConstructCurve; c3d: Handle[GeomCurve]; p1: Pnt;
                        p2: Pnt; u1: cfloat; u2: cfloat): bool {.noSideEffect,
    importcpp: "AdjustCurveSegment", header: "ShapeConstruct_Curve.hxx".}
proc adjustCurve2d*(this: ShapeConstructCurve; c2d: Handle[Geom2dCurve]; p1: Pnt2d;
                   p2: Pnt2d; take1: bool = true; take2: bool = true): bool {.noSideEffect,
    importcpp: "AdjustCurve2d", header: "ShapeConstruct_Curve.hxx".}
proc convertToBSpline*(this: ShapeConstructCurve; c: Handle[GeomCurve];
                      first: cfloat; last: cfloat; prec: cfloat): Handle[
    GeomBSplineCurve] {.noSideEffect, importcpp: "ConvertToBSpline",
                       header: "ShapeConstruct_Curve.hxx".}
proc convertToBSpline*(this: ShapeConstructCurve; c: Handle[Geom2dCurve];
                      first: cfloat; last: cfloat; prec: cfloat): Handle[
    Geom2dBSplineCurve] {.noSideEffect, importcpp: "ConvertToBSpline",
                         header: "ShapeConstruct_Curve.hxx".}
proc fixKnots*(knots: var Handle[TColStdHArray1OfReal]): bool {.
    importcpp: "ShapeConstruct_Curve::FixKnots(@)",
    header: "ShapeConstruct_Curve.hxx".}
proc fixKnots*(knots: var TColStdArray1OfReal): bool {.
    importcpp: "ShapeConstruct_Curve::FixKnots(@)",
    header: "ShapeConstruct_Curve.hxx".}

























