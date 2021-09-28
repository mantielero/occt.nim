##  Created on: 1998-06-03
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
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_XYZ"
type
  ShapeAnalysisCurve* {.importcpp: "ShapeAnalysis_Curve",
                       header: "ShapeAnalysis_Curve.hxx", bycopy.} = object ## ! Projects a Point on a Curve.
                                                                       ## ! Computes the projected point and its parameter on the curve.
                                                                       ## ! <preci> is used as 3d precision (hence, 0 will produce
                                                                       ## ! reject unless exact
                                                                       ## confusion).
                                                                       ## ! The number of
                                                                       ## iterations is limited.
                                                                       ## ! If
                                                                       ## AdjustToEnds is True, point will be adjusted to the end
                                                                       ## ! of the curve if distance is less than <preci>
                                                                       ## !
                                                                       ## ! Returned value is the distance between the given point and
                                                                       ## ! computed one.


proc project*(this: ShapeAnalysisCurve; c3d: Handle[GeomCurve]; p3d: Pnt;
             preci: cfloat; proj: var Pnt; param: var cfloat; adjustToEnds: bool = true): cfloat {.
    noSideEffect, importcpp: "Project", header: "ShapeAnalysis_Curve.hxx".}
proc project*(this: ShapeAnalysisCurve; c3d: Adaptor3dCurve; p3d: Pnt; preci: cfloat;
             proj: var Pnt; param: var cfloat; adjustToEnds: bool = true): cfloat {.
    noSideEffect, importcpp: "Project", header: "ShapeAnalysis_Curve.hxx".}
proc project*(this: ShapeAnalysisCurve; c3d: Handle[GeomCurve]; p3d: Pnt;
             preci: cfloat; proj: var Pnt; param: var cfloat; cf: cfloat; cl: cfloat;
             adjustToEnds: bool = true): cfloat {.noSideEffect, importcpp: "Project",
    header: "ShapeAnalysis_Curve.hxx".}
proc projectAct*(this: ShapeAnalysisCurve; c3d: Adaptor3dCurve; p3d: Pnt;
                preci: cfloat; proj: var Pnt; param: var cfloat): cfloat {.noSideEffect,
    importcpp: "ProjectAct", header: "ShapeAnalysis_Curve.hxx".}
proc nextProject*(this: ShapeAnalysisCurve; paramPrev: cfloat;
                 c3d: Handle[GeomCurve]; p3d: Pnt; preci: cfloat; proj: var Pnt;
                 param: var cfloat; cf: cfloat; cl: cfloat; adjustToEnds: bool = true): cfloat {.
    noSideEffect, importcpp: "NextProject", header: "ShapeAnalysis_Curve.hxx".}
proc nextProject*(this: ShapeAnalysisCurve; paramPrev: cfloat; c3d: Adaptor3dCurve;
                 p3d: Pnt; preci: cfloat; proj: var Pnt; param: var cfloat): cfloat {.
    noSideEffect, importcpp: "NextProject", header: "ShapeAnalysis_Curve.hxx".}
proc validateRange*(this: ShapeAnalysisCurve; crv: Handle[GeomCurve];
                   first: var cfloat; last: var cfloat; prec: cfloat): bool {.
    noSideEffect, importcpp: "ValidateRange", header: "ShapeAnalysis_Curve.hxx".}
proc fillBndBox*(this: ShapeAnalysisCurve; c2d: Handle[Geom2dCurve]; first: cfloat;
                last: cfloat; nPoints: cint; exact: bool; box: var BndBox2d) {.
    noSideEffect, importcpp: "FillBndBox", header: "ShapeAnalysis_Curve.hxx".}
proc selectForwardSeam*(this: ShapeAnalysisCurve; c1: Handle[Geom2dCurve];
                       c2: Handle[Geom2dCurve]): cint {.noSideEffect,
    importcpp: "SelectForwardSeam", header: "ShapeAnalysis_Curve.hxx".}
proc isPlanar*(pnts: TColgpArray1OfPnt; normal: var Xyz; preci: cfloat = 0): bool {.
    importcpp: "ShapeAnalysis_Curve::IsPlanar(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc isPlanar*(curve: Handle[GeomCurve]; normal: var Xyz; preci: cfloat = 0): bool {.
    importcpp: "ShapeAnalysis_Curve::IsPlanar(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc getSamplePoints*(curve: Handle[Geom2dCurve]; first: cfloat; last: cfloat;
                     seq: var TColgpSequenceOfPnt2d): bool {.
    importcpp: "ShapeAnalysis_Curve::GetSamplePoints(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc getSamplePoints*(curve: Handle[GeomCurve]; first: cfloat; last: cfloat;
                     seq: var TColgpSequenceOfPnt): bool {.
    importcpp: "ShapeAnalysis_Curve::GetSamplePoints(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc isClosed*(curve: Handle[GeomCurve]; preci: cfloat = -1): bool {.
    importcpp: "ShapeAnalysis_Curve::IsClosed(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc isPeriodic*(curve: Handle[GeomCurve]): bool {.
    importcpp: "ShapeAnalysis_Curve::IsPeriodic(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc isPeriodic*(curve: Handle[Geom2dCurve]): bool {.
    importcpp: "ShapeAnalysis_Curve::IsPeriodic(@)",
    header: "ShapeAnalysis_Curve.hxx".}

























