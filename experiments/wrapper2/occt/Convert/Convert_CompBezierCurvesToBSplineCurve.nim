##  Created on: 1993-10-20
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, Convert_SequenceOfArray1OfPoles,
  ../TColgp/TColgp_SequenceOfPnt, ../TColStd/TColStd_SequenceOfReal,
  ../TColStd/TColStd_SequenceOfInteger, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_Array1OfPnt, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_Array1OfInteger

discard "forward decl of Standard_ConstructionError"
type
  Convert_CompBezierCurvesToBSplineCurve* {.
      importcpp: "Convert_CompBezierCurvesToBSplineCurve",
      header: "Convert_CompBezierCurvesToBSplineCurve.hxx", bycopy.} = object ## !
                                                                         ## Constructs a
                                                                         ## framework for
                                                                         ## converting a
                                                                         ## sequence of
                                                                         ## !
                                                                         ## adjacent
                                                                         ## non-rational Bezier curves into a BSpline curve.
                                                                         ## ! Knots will be created on the
                                                                         ## computed BSpline curve at
                                                                         ## ! each
                                                                         ## junction point of two
                                                                         ## consecutive Bezier curves. The
                                                                         ## ! degree of
                                                                         ## continuity of the BSpline curve will be
                                                                         ## increased at
                                                                         ## ! the
                                                                         ## junction point of two
                                                                         ## consecutive Bezier curves if their
                                                                         ## ! tangent vectors at this point are
                                                                         ## parallel.
                                                                         ## AngularTolerance
                                                                         ## ! (given in
                                                                         ## radians, and
                                                                         ## defaulted to 1.0 e-4) will be used
                                                                         ## ! to check the
                                                                         ## parallelism of the two tangent
                                                                         ## vectors.
                                                                         ## ! Use the
                                                                         ## following
                                                                         ## functions:
                                                                         ## ! -
                                                                         ## AddCurve to define in
                                                                         ## sequence the
                                                                         ## adjacent Bezier
                                                                         ## ! curves to be
                                                                         ## converted,
                                                                         ## ! -   Perform to compute the data needed to build the BSpline curve,
                                                                         ## ! -   and the
                                                                         ## available
                                                                         ## consultation
                                                                         ## functions to access the
                                                                         ## !
                                                                         ## computed data. This data may be used to
                                                                         ## construct the BSpline curve.


proc constructConvert_CompBezierCurvesToBSplineCurve*(
    AngularTolerance: Standard_Real = 1.0e-4): Convert_CompBezierCurvesToBSplineCurve {.
    constructor, importcpp: "Convert_CompBezierCurvesToBSplineCurve(@)",
    header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc AddCurve*(this: var Convert_CompBezierCurvesToBSplineCurve;
              Poles: TColgp_Array1OfPnt) {.importcpp: "AddCurve",
    header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc Perform*(this: var Convert_CompBezierCurvesToBSplineCurve) {.
    importcpp: "Perform", header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc Degree*(this: Convert_CompBezierCurvesToBSplineCurve): Standard_Integer {.
    noSideEffect, importcpp: "Degree",
    header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc NbPoles*(this: Convert_CompBezierCurvesToBSplineCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbPoles",
    header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc Poles*(this: Convert_CompBezierCurvesToBSplineCurve;
           Poles: var TColgp_Array1OfPnt) {.noSideEffect, importcpp: "Poles",
    header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc NbKnots*(this: Convert_CompBezierCurvesToBSplineCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbKnots",
    header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc KnotsAndMults*(this: Convert_CompBezierCurvesToBSplineCurve;
                   Knots: var TColStd_Array1OfReal;
                   Mults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "KnotsAndMults",
    header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}