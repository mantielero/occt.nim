##  Created on: 1997-01-17
##  Created by: Philippe MANGIN
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfInteger,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfInteger

discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Law_BSpline"
type
  Law_BSplineKnotSplitting* {.importcpp: "Law_BSplineKnotSplitting",
                             header: "Law_BSplineKnotSplitting.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Locates
                                                                                  ## the
                                                                                  ## knot
                                                                                  ## values
                                                                                  ## which
                                                                                  ## correspond
                                                                                  ## to
                                                                                  ## the
                                                                                  ## segmentation
                                                                                  ## of
                                                                                  ##
                                                                                  ## !
                                                                                  ## the
                                                                                  ## curve
                                                                                  ## into
                                                                                  ## arcs
                                                                                  ## with
                                                                                  ## a
                                                                                  ## continuity
                                                                                  ## equal
                                                                                  ## to
                                                                                  ## ContinuityRange.
                                                                                  ##
                                                                                  ## !
                                                                                  ##
                                                                                  ## !
                                                                                  ## Raised
                                                                                  ## if
                                                                                  ## ContinuityRange
                                                                                  ## is
                                                                                  ## not
                                                                                  ## greater
                                                                                  ## or
                                                                                  ## equal
                                                                                  ## zero.


proc constructLaw_BSplineKnotSplitting*(BasisLaw: handle[Law_BSpline];
                                       ContinuityRange: Standard_Integer): Law_BSplineKnotSplitting {.
    constructor, importcpp: "Law_BSplineKnotSplitting(@)",
    header: "Law_BSplineKnotSplitting.hxx".}
proc NbSplits*(this: Law_BSplineKnotSplitting): Standard_Integer {.noSideEffect,
    importcpp: "NbSplits", header: "Law_BSplineKnotSplitting.hxx".}
proc Splitting*(this: Law_BSplineKnotSplitting;
               SplitValues: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Splitting", header: "Law_BSplineKnotSplitting.hxx".}
proc SplitValue*(this: Law_BSplineKnotSplitting; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "SplitValue", header: "Law_BSplineKnotSplitting.hxx".}