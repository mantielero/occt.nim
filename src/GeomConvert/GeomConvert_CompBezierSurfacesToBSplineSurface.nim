##  Created on: 1996-06-06
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_ConstructionError"
type
  GeomConvertCompBezierSurfacesToBSplineSurface* {.
      importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface",
      header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## It
                                                                                 ## used
                                                                                 ## internaly
                                                                                 ## by
                                                                                 ## the
                                                                                 ## constructors.


proc `new`*(this: var GeomConvertCompBezierSurfacesToBSplineSurface;
           theSize: csize_t): pointer {.importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface::operator new", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc `delete`*(this: var GeomConvertCompBezierSurfacesToBSplineSurface;
              theAddress: pointer) {.importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface::operator delete", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc `new[]`*(this: var GeomConvertCompBezierSurfacesToBSplineSurface;
             theSize: csize_t): pointer {.importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface::operator new[]", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc `delete[]`*(this: var GeomConvertCompBezierSurfacesToBSplineSurface;
                theAddress: pointer) {.importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface::operator delete[]", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc `new`*(this: var GeomConvertCompBezierSurfacesToBSplineSurface; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface::operator new", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc `delete`*(this: var GeomConvertCompBezierSurfacesToBSplineSurface; a2: pointer;
              a3: pointer) {.importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface::operator delete", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc constructGeomConvertCompBezierSurfacesToBSplineSurface*(
    beziers: TColGeomArray2OfBezierSurface): GeomConvertCompBezierSurfacesToBSplineSurface {.
    constructor, importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface(@)",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc constructGeomConvertCompBezierSurfacesToBSplineSurface*(
    beziers: TColGeomArray2OfBezierSurface; tolerance: StandardReal;
    removeKnots: StandardBoolean = true): GeomConvertCompBezierSurfacesToBSplineSurface {.
    constructor, importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface(@)",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc constructGeomConvertCompBezierSurfacesToBSplineSurface*(
    beziers: TColGeomArray2OfBezierSurface; uKnots: TColStdArray1OfReal;
    vKnots: TColStdArray1OfReal; uContinuity: GeomAbsShape = geomAbsC0;
    vContinuity: GeomAbsShape = geomAbsC0; tolerance: StandardReal = 1.0e-4): GeomConvertCompBezierSurfacesToBSplineSurface {.
    constructor, importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface(@)",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc nbUKnots*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "NbUKnots",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc nbUPoles*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "NbUPoles",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc nbVKnots*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "NbVKnots",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc nbVPoles*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "NbVPoles",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc poles*(this: GeomConvertCompBezierSurfacesToBSplineSurface): Handle[
    TColgpHArray2OfPnt] {.noSideEffect, importcpp: "Poles", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc uKnots*(this: GeomConvertCompBezierSurfacesToBSplineSurface): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "UKnots", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc uDegree*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "UDegree",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc vKnots*(this: GeomConvertCompBezierSurfacesToBSplineSurface): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "VKnots", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc vDegree*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "VDegree",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc uMultiplicities*(this: GeomConvertCompBezierSurfacesToBSplineSurface): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "UMultiplicities", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc vMultiplicities*(this: GeomConvertCompBezierSurfacesToBSplineSurface): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "VMultiplicities", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc isDone*(this: GeomConvertCompBezierSurfacesToBSplineSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}