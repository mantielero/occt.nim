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

discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Law_BSpline"
type
  LawBSplineKnotSplitting* {.importcpp: "Law_BSplineKnotSplitting",
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


proc constructLawBSplineKnotSplitting*(basisLaw: Handle[LawBSpline];
                                      continuityRange: cint): LawBSplineKnotSplitting {.
    constructor, importcpp: "Law_BSplineKnotSplitting(@)",
    header: "Law_BSplineKnotSplitting.hxx".}
proc nbSplits*(this: LawBSplineKnotSplitting): cint {.noSideEffect,
    importcpp: "NbSplits", header: "Law_BSplineKnotSplitting.hxx".}
proc splitting*(this: LawBSplineKnotSplitting;
               splitValues: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Splitting", header: "Law_BSplineKnotSplitting.hxx".}
proc splitValue*(this: LawBSplineKnotSplitting; index: cint): cint {.noSideEffect,
    importcpp: "SplitValue", header: "Law_BSplineKnotSplitting.hxx".}

























