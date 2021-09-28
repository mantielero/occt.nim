##  Created on: 1996-03-12
##  Created by: Bruno DUMORTIER
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

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BezierSurface"
type
  GeomConvertBSplineSurfaceToBezierSurface* {.
      importcpp: "GeomConvert_BSplineSurfaceToBezierSurface",
      header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx", bycopy.} = object


proc `new`*(this: var GeomConvertBSplineSurfaceToBezierSurface; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_BSplineSurfaceToBezierSurface::operator new",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc `delete`*(this: var GeomConvertBSplineSurfaceToBezierSurface;
              theAddress: pointer) {.importcpp: "GeomConvert_BSplineSurfaceToBezierSurface::operator delete", header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc `new[]`*(this: var GeomConvertBSplineSurfaceToBezierSurface; theSize: csize_t): pointer {.
    importcpp: "GeomConvert_BSplineSurfaceToBezierSurface::operator new[]",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc `delete[]`*(this: var GeomConvertBSplineSurfaceToBezierSurface;
                theAddress: pointer) {.importcpp: "GeomConvert_BSplineSurfaceToBezierSurface::operator delete[]", header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc `new`*(this: var GeomConvertBSplineSurfaceToBezierSurface; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomConvert_BSplineSurfaceToBezierSurface::operator new", header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc `delete`*(this: var GeomConvertBSplineSurfaceToBezierSurface; a2: pointer;
              a3: pointer) {.importcpp: "GeomConvert_BSplineSurfaceToBezierSurface::operator delete", header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc constructGeomConvertBSplineSurfaceToBezierSurface*(
    basisSurface: Handle[GeomBSplineSurface]): GeomConvertBSplineSurfaceToBezierSurface {.
    constructor, importcpp: "GeomConvert_BSplineSurfaceToBezierSurface(@)",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc constructGeomConvertBSplineSurfaceToBezierSurface*(
    basisSurface: Handle[GeomBSplineSurface]; u1: StandardReal; u2: StandardReal;
    v1: StandardReal; v2: StandardReal; parametricTolerance: StandardReal): GeomConvertBSplineSurfaceToBezierSurface {.
    constructor, importcpp: "GeomConvert_BSplineSurfaceToBezierSurface(@)",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc patch*(this: var GeomConvertBSplineSurfaceToBezierSurface; uIndex: int;
           vIndex: int): Handle[GeomBezierSurface] {.importcpp: "Patch",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc patches*(this: var GeomConvertBSplineSurfaceToBezierSurface;
             surfaces: var TColGeomArray2OfBezierSurface) {.importcpp: "Patches",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc uKnots*(this: GeomConvertBSplineSurfaceToBezierSurface;
            tKnots: var TColStdArray1OfReal) {.noSideEffect, importcpp: "UKnots",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc vKnots*(this: GeomConvertBSplineSurfaceToBezierSurface;
            tKnots: var TColStdArray1OfReal) {.noSideEffect, importcpp: "VKnots",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc nbUPatches*(this: GeomConvertBSplineSurfaceToBezierSurface): int {.
    noSideEffect, importcpp: "NbUPatches",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc nbVPatches*(this: GeomConvertBSplineSurfaceToBezierSurface): int {.
    noSideEffect, importcpp: "NbVPatches",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}