##  Created on: 1991-10-03
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfInteger,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfInteger

discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Geom_BSplineCurve"
type
  GeomConvert_BSplineCurveKnotSplitting* {.
      importcpp: "GeomConvert_BSplineCurveKnotSplitting",
      header: "GeomConvert_BSplineCurveKnotSplitting.hxx", bycopy.} = object ## !
                                                                        ## Determines points at which the BSpline curve
                                                                        ## !
                                                                        ## BasisCurve should be split in order to obtain arcs
                                                                        ## ! with a degree of
                                                                        ## continuity equal to
                                                                        ## ContinuityRange.
                                                                        ## ! These points are knot values of
                                                                        ## BasisCurve. They
                                                                        ## ! are
                                                                        ## identified by indices in the knots table of
                                                                        ## BasisCurve.
                                                                        ## ! Use the
                                                                        ## available
                                                                        ## interrogation
                                                                        ## functions to access
                                                                        ## ! computed values, followed by the global function
                                                                        ## !
                                                                        ## SplitBSplineCurve
                                                                        ## (provided by the package
                                                                        ## GeomConvert) to split the curve.
                                                                        ## !
                                                                        ## Exceptions
                                                                        ## !
                                                                        ## Standard_RangeError if
                                                                        ## ContinuityRange is less than zero.


proc constructGeomConvert_BSplineCurveKnotSplitting*(
    BasisCurve: handle[Geom_BSplineCurve]; ContinuityRange: Standard_Integer): GeomConvert_BSplineCurveKnotSplitting {.
    constructor, importcpp: "GeomConvert_BSplineCurveKnotSplitting(@)",
    header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc NbSplits*(this: GeomConvert_BSplineCurveKnotSplitting): Standard_Integer {.
    noSideEffect, importcpp: "NbSplits",
    header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc Splitting*(this: GeomConvert_BSplineCurveKnotSplitting;
               SplitValues: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Splitting", header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc SplitValue*(this: GeomConvert_BSplineCurveKnotSplitting;
                Index: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "SplitValue", header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}