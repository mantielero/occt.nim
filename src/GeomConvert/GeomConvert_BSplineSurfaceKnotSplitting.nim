##  Created on: 1991-10-04
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
discard "forward decl of Geom_BSplineSurface"
type
  GeomConvertBSplineSurfaceKnotSplitting* {.
      importcpp: "GeomConvert_BSplineSurfaceKnotSplitting",
      header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx", bycopy.} = object


proc `new`*(this: var GeomConvertBSplineSurfaceKnotSplitting; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_BSplineSurfaceKnotSplitting::operator new",
    header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc `delete`*(this: var GeomConvertBSplineSurfaceKnotSplitting; theAddress: pointer) {.
    importcpp: "GeomConvert_BSplineSurfaceKnotSplitting::operator delete",
    header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc `new[]`*(this: var GeomConvertBSplineSurfaceKnotSplitting; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_BSplineSurfaceKnotSplitting::operator new[]",
    header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc `delete[]`*(this: var GeomConvertBSplineSurfaceKnotSplitting;
                theAddress: pointer) {.importcpp: "GeomConvert_BSplineSurfaceKnotSplitting::operator delete[]", header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc `new`*(this: var GeomConvertBSplineSurfaceKnotSplitting; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomConvert_BSplineSurfaceKnotSplitting::operator new", header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc `delete`*(this: var GeomConvertBSplineSurfaceKnotSplitting; a2: pointer;
              a3: pointer) {.importcpp: "GeomConvert_BSplineSurfaceKnotSplitting::operator delete", header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc constructGeomConvertBSplineSurfaceKnotSplitting*(
    basisSurface: Handle[GeomBSplineSurface]; uContinuityRange: int;
    vContinuityRange: int): GeomConvertBSplineSurfaceKnotSplitting {.constructor,
    importcpp: "GeomConvert_BSplineSurfaceKnotSplitting(@)",
    header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc nbUSplits*(this: GeomConvertBSplineSurfaceKnotSplitting): int {.noSideEffect,
    importcpp: "NbUSplits", header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc nbVSplits*(this: GeomConvertBSplineSurfaceKnotSplitting): int {.noSideEffect,
    importcpp: "NbVSplits", header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc splitting*(this: GeomConvertBSplineSurfaceKnotSplitting;
               uSplit: var TColStdArray1OfInteger;
               vSplit: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Splitting", header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc uSplitValue*(this: GeomConvertBSplineSurfaceKnotSplitting; uIndex: int): int {.
    noSideEffect, importcpp: "USplitValue",
    header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc vSplitValue*(this: GeomConvertBSplineSurfaceKnotSplitting; vIndex: int): int {.
    noSideEffect, importcpp: "VSplitValue",
    header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}