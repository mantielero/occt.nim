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
discard "forward decl of Geom_BSplineCurve"
type
  GeomConvertBSplineCurveKnotSplitting* {.
      importcpp: "GeomConvert_BSplineCurveKnotSplitting",
      header: "GeomConvert_BSplineCurveKnotSplitting.hxx", bycopy.} = object


proc `new`*(this: var GeomConvertBSplineCurveKnotSplitting; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_BSplineCurveKnotSplitting::operator new",
    header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc `delete`*(this: var GeomConvertBSplineCurveKnotSplitting; theAddress: pointer) {.
    importcpp: "GeomConvert_BSplineCurveKnotSplitting::operator delete",
    header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc `new[]`*(this: var GeomConvertBSplineCurveKnotSplitting; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_BSplineCurveKnotSplitting::operator new[]",
    header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc `delete[]`*(this: var GeomConvertBSplineCurveKnotSplitting; theAddress: pointer) {.
    importcpp: "GeomConvert_BSplineCurveKnotSplitting::operator delete[]",
    header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc `new`*(this: var GeomConvertBSplineCurveKnotSplitting; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomConvert_BSplineCurveKnotSplitting::operator new", header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc `delete`*(this: var GeomConvertBSplineCurveKnotSplitting; a2: pointer;
              a3: pointer) {.importcpp: "GeomConvert_BSplineCurveKnotSplitting::operator delete",
                           header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc constructGeomConvertBSplineCurveKnotSplitting*(
    basisCurve: Handle[GeomBSplineCurve]; continuityRange: int): GeomConvertBSplineCurveKnotSplitting {.
    constructor, importcpp: "GeomConvert_BSplineCurveKnotSplitting(@)",
    header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc nbSplits*(this: GeomConvertBSplineCurveKnotSplitting): int {.noSideEffect,
    importcpp: "NbSplits", header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc splitting*(this: GeomConvertBSplineCurveKnotSplitting;
               splitValues: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Splitting", header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}
proc splitValue*(this: GeomConvertBSplineCurveKnotSplitting; index: int): int {.
    noSideEffect, importcpp: "SplitValue",
    header: "GeomConvert_BSplineCurveKnotSplitting.hxx".}