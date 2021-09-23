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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_SequenceOfPnt2d,
  ../TColgp/TColgp_SequenceOfPnt

discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_XYZ"
type
  ShapeAnalysis_Curve* {.importcpp: "ShapeAnalysis_Curve",
                        header: "ShapeAnalysis_Curve.hxx", bycopy.} = object ## ! Projects a Point on a Curve.
                                                                        ## ! Computes the
                                                                        ## projected point and its
                                                                        ## parameter on the curve.
                                                                        ## ! <preci> is used as 3d
                                                                        ## precision (hence, 0 will produce
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


proc Project*(this: ShapeAnalysis_Curve; C3D: handle[Geom_Curve]; P3D: gp_Pnt;
             preci: Standard_Real; proj: var gp_Pnt; param: var Standard_Real;
             AdjustToEnds: Standard_Boolean = Standard_True): Standard_Real {.
    noSideEffect, importcpp: "Project", header: "ShapeAnalysis_Curve.hxx".}
proc Project*(this: ShapeAnalysis_Curve; C3D: Adaptor3d_Curve; P3D: gp_Pnt;
             preci: Standard_Real; proj: var gp_Pnt; param: var Standard_Real;
             AdjustToEnds: Standard_Boolean = Standard_True): Standard_Real {.
    noSideEffect, importcpp: "Project", header: "ShapeAnalysis_Curve.hxx".}
proc Project*(this: ShapeAnalysis_Curve; C3D: handle[Geom_Curve]; P3D: gp_Pnt;
             preci: Standard_Real; proj: var gp_Pnt; param: var Standard_Real;
             cf: Standard_Real; cl: Standard_Real;
             AdjustToEnds: Standard_Boolean = Standard_True): Standard_Real {.
    noSideEffect, importcpp: "Project", header: "ShapeAnalysis_Curve.hxx".}
proc ProjectAct*(this: ShapeAnalysis_Curve; C3D: Adaptor3d_Curve; P3D: gp_Pnt;
                preci: Standard_Real; proj: var gp_Pnt; param: var Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ProjectAct", header: "ShapeAnalysis_Curve.hxx".}
proc NextProject*(this: ShapeAnalysis_Curve; paramPrev: Standard_Real;
                 C3D: handle[Geom_Curve]; P3D: gp_Pnt; preci: Standard_Real;
                 proj: var gp_Pnt; param: var Standard_Real; cf: Standard_Real;
                 cl: Standard_Real; AdjustToEnds: Standard_Boolean = Standard_True): Standard_Real {.
    noSideEffect, importcpp: "NextProject", header: "ShapeAnalysis_Curve.hxx".}
proc NextProject*(this: ShapeAnalysis_Curve; paramPrev: Standard_Real;
                 C3D: Adaptor3d_Curve; P3D: gp_Pnt; preci: Standard_Real;
                 proj: var gp_Pnt; param: var Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "NextProject", header: "ShapeAnalysis_Curve.hxx".}
proc ValidateRange*(this: ShapeAnalysis_Curve; Crv: handle[Geom_Curve];
                   First: var Standard_Real; Last: var Standard_Real;
                   prec: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "ValidateRange", header: "ShapeAnalysis_Curve.hxx".}
proc FillBndBox*(this: ShapeAnalysis_Curve; C2d: handle[Geom2d_Curve];
                First: Standard_Real; Last: Standard_Real;
                NPoints: Standard_Integer; Exact: Standard_Boolean;
                Box: var Bnd_Box2d) {.noSideEffect, importcpp: "FillBndBox",
                                   header: "ShapeAnalysis_Curve.hxx".}
proc SelectForwardSeam*(this: ShapeAnalysis_Curve; C1: handle[Geom2d_Curve];
                       C2: handle[Geom2d_Curve]): Standard_Integer {.noSideEffect,
    importcpp: "SelectForwardSeam", header: "ShapeAnalysis_Curve.hxx".}
proc IsPlanar*(pnts: TColgp_Array1OfPnt; Normal: var gp_XYZ; preci: Standard_Real = 0): Standard_Boolean {.
    importcpp: "ShapeAnalysis_Curve::IsPlanar(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc IsPlanar*(curve: handle[Geom_Curve]; Normal: var gp_XYZ; preci: Standard_Real = 0): Standard_Boolean {.
    importcpp: "ShapeAnalysis_Curve::IsPlanar(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc GetSamplePoints*(curve: handle[Geom2d_Curve]; first: Standard_Real;
                     last: Standard_Real; seq: var TColgp_SequenceOfPnt2d): Standard_Boolean {.
    importcpp: "ShapeAnalysis_Curve::GetSamplePoints(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc GetSamplePoints*(curve: handle[Geom_Curve]; first: Standard_Real;
                     last: Standard_Real; seq: var TColgp_SequenceOfPnt): Standard_Boolean {.
    importcpp: "ShapeAnalysis_Curve::GetSamplePoints(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc IsClosed*(curve: handle[Geom_Curve]; preci: Standard_Real = -1): Standard_Boolean {.
    importcpp: "ShapeAnalysis_Curve::IsClosed(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc IsPeriodic*(curve: handle[Geom_Curve]): Standard_Boolean {.
    importcpp: "ShapeAnalysis_Curve::IsPeriodic(@)",
    header: "ShapeAnalysis_Curve.hxx".}
proc IsPeriodic*(curve: handle[Geom2d_Curve]): Standard_Boolean {.
    importcpp: "ShapeAnalysis_Curve::IsPeriodic(@)",
    header: "ShapeAnalysis_Curve.hxx".}