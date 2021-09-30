##  Created on: 1994-03-17
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of gp_Pln"
discard "forward decl of GeomAPI_ProjectPointOnCurve"
discard "forward decl of GeomAPI_ProjectPointOnSurf"
discard "forward decl of GeomAPI_ExtremaCurveCurve"
discard "forward decl of GeomAPI_ExtremaCurveSurface"
discard "forward decl of GeomAPI_ExtremaSurfaceSurface"
discard "forward decl of GeomAPI_PointsToBSpline"
discard "forward decl of GeomAPI_PointsToBSplineSurface"
discard "forward decl of GeomAPI_Interpolate"
discard "forward decl of GeomAPI_IntSS"
discard "forward decl of GeomAPI_IntCS"
type
  GeomAPI* {.importcpp: "GeomAPI", header: "GeomAPI.hxx", bycopy.} = object


proc `new`*(this: var GeomAPI; theSize: csize_t): pointer {.
    importcpp: "GeomAPI::operator new", header: "GeomAPI.hxx".}
proc `delete`*(this: var GeomAPI; theAddress: pointer) {.
    importcpp: "GeomAPI::operator delete", header: "GeomAPI.hxx".}
proc `new[]`*(this: var GeomAPI; theSize: csize_t): pointer {.
    importcpp: "GeomAPI::operator new[]", header: "GeomAPI.hxx".}
proc `delete[]`*(this: var GeomAPI; theAddress: pointer) {.
    importcpp: "GeomAPI::operator delete[]", header: "GeomAPI.hxx".}
proc `new`*(this: var GeomAPI; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomAPI::operator new", header: "GeomAPI.hxx".}
proc `delete`*(this: var GeomAPI; a2: pointer; a3: pointer) {.
    importcpp: "GeomAPI::operator delete", header: "GeomAPI.hxx".}
proc to2d*(c: Handle[GeomCurve]; p: Pln): Handle[Geom2dCurve] {.
    importcpp: "GeomAPI::To2d(@)", header: "GeomAPI.hxx".}
proc to3d*(c: Handle[Geom2dCurve]; p: Pln): Handle[GeomCurve] {.
    importcpp: "GeomAPI::To3d(@)", header: "GeomAPI.hxx".}