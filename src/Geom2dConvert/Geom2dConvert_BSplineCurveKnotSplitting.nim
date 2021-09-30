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

discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Geom2d_BSplineCurve"
type
  Geom2dConvertBSplineCurveKnotSplitting* {.
      importcpp: "Geom2dConvert_BSplineCurveKnotSplitting",
      header: "Geom2dConvert_BSplineCurveKnotSplitting.hxx", bycopy.} = object


proc `new`*(this: var Geom2dConvertBSplineCurveKnotSplitting; theSize: csize_t): pointer {.
    importcpp: "Geom2dConvert_BSplineCurveKnotSplitting::operator new",
    header: "Geom2dConvert_BSplineCurveKnotSplitting.hxx".}
proc `delete`*(this: var Geom2dConvertBSplineCurveKnotSplitting; theAddress: pointer) {.
    importcpp: "Geom2dConvert_BSplineCurveKnotSplitting::operator delete",
    header: "Geom2dConvert_BSplineCurveKnotSplitting.hxx".}
proc `new[]`*(this: var Geom2dConvertBSplineCurveKnotSplitting; theSize: csize_t): pointer {.
    importcpp: "Geom2dConvert_BSplineCurveKnotSplitting::operator new[]",
    header: "Geom2dConvert_BSplineCurveKnotSplitting.hxx".}
proc `delete[]`*(this: var Geom2dConvertBSplineCurveKnotSplitting;
                theAddress: pointer) {.importcpp: "Geom2dConvert_BSplineCurveKnotSplitting::operator delete[]", header: "Geom2dConvert_BSplineCurveKnotSplitting.hxx".}
proc `new`*(this: var Geom2dConvertBSplineCurveKnotSplitting; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "Geom2dConvert_BSplineCurveKnotSplitting::operator new", header: "Geom2dConvert_BSplineCurveKnotSplitting.hxx".}
proc `delete`*(this: var Geom2dConvertBSplineCurveKnotSplitting; a2: pointer;
              a3: pointer) {.importcpp: "Geom2dConvert_BSplineCurveKnotSplitting::operator delete", header: "Geom2dConvert_BSplineCurveKnotSplitting.hxx".}
proc constructGeom2dConvertBSplineCurveKnotSplitting*(
    basisCurve: Handle[Geom2dBSplineCurve]; continuityRange: int): Geom2dConvertBSplineCurveKnotSplitting {.
    constructor, importcpp: "Geom2dConvert_BSplineCurveKnotSplitting(@)",
    header: "Geom2dConvert_BSplineCurveKnotSplitting.hxx".}
proc nbSplits*(this: Geom2dConvertBSplineCurveKnotSplitting): int {.noSideEffect,
    importcpp: "NbSplits", header: "Geom2dConvert_BSplineCurveKnotSplitting.hxx".}
proc splitting*(this: Geom2dConvertBSplineCurveKnotSplitting;
               splitValues: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Splitting", header: "Geom2dConvert_BSplineCurveKnotSplitting.hxx".}
proc splitValue*(this: Geom2dConvertBSplineCurveKnotSplitting; index: int): int {.
    noSideEffect, importcpp: "SplitValue",
    header: "Geom2dConvert_BSplineCurveKnotSplitting.hxx".}