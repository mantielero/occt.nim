##  Created on: 1998-05-05
##  Created by: Stepan MISHIN
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Geom_Surface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Geom_OsculatingSurface"
discard "forward decl of Geom_OsculatingSurface"
type
  HandleC1C1* = Handle[GeomOsculatingSurface]
  GeomOsculatingSurface* {.importcpp: "Geom_OsculatingSurface",
                          header: "Geom_OsculatingSurface.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## returns
                                                                                                ## False
                                                                                                ## if
                                                                                                ## the
                                                                                                ## osculating
                                                                                                ## surface
                                                                                                ## can't
                                                                                                ## be
                                                                                                ## built


proc `new`*(this: var GeomOsculatingSurface; theSize: csize_t): pointer {.
    importcpp: "Geom_OsculatingSurface::operator new",
    header: "Geom_OsculatingSurface.hxx".}
proc `delete`*(this: var GeomOsculatingSurface; theAddress: pointer) {.
    importcpp: "Geom_OsculatingSurface::operator delete",
    header: "Geom_OsculatingSurface.hxx".}
proc `new[]`*(this: var GeomOsculatingSurface; theSize: csize_t): pointer {.
    importcpp: "Geom_OsculatingSurface::operator new[]",
    header: "Geom_OsculatingSurface.hxx".}
proc `delete[]`*(this: var GeomOsculatingSurface; theAddress: pointer) {.
    importcpp: "Geom_OsculatingSurface::operator delete[]",
    header: "Geom_OsculatingSurface.hxx".}
proc `new`*(this: var GeomOsculatingSurface; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom_OsculatingSurface::operator new",
    header: "Geom_OsculatingSurface.hxx".}
proc `delete`*(this: var GeomOsculatingSurface; a2: pointer; a3: pointer) {.
    importcpp: "Geom_OsculatingSurface::operator delete",
    header: "Geom_OsculatingSurface.hxx".}
proc constructGeomOsculatingSurface*(): GeomOsculatingSurface {.constructor,
    importcpp: "Geom_OsculatingSurface(@)", header: "Geom_OsculatingSurface.hxx".}
proc constructGeomOsculatingSurface*(bs: Handle[GeomSurface]; tol: StandardReal): GeomOsculatingSurface {.
    constructor, importcpp: "Geom_OsculatingSurface(@)",
    header: "Geom_OsculatingSurface.hxx".}
proc init*(this: var GeomOsculatingSurface; bs: Handle[GeomSurface]; tol: StandardReal) {.
    importcpp: "Init", header: "Geom_OsculatingSurface.hxx".}
proc basisSurface*(this: GeomOsculatingSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "BasisSurface", header: "Geom_OsculatingSurface.hxx".}
proc tolerance*(this: GeomOsculatingSurface): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "Geom_OsculatingSurface.hxx".}
proc uOscSurf*(this: GeomOsculatingSurface; u: StandardReal; v: StandardReal;
              t: var StandardBoolean; L: var Handle[GeomBSplineSurface]): StandardBoolean {.
    noSideEffect, importcpp: "UOscSurf", header: "Geom_OsculatingSurface.hxx".}
proc vOscSurf*(this: GeomOsculatingSurface; u: StandardReal; v: StandardReal;
              t: var StandardBoolean; L: var Handle[GeomBSplineSurface]): StandardBoolean {.
    noSideEffect, importcpp: "VOscSurf", header: "Geom_OsculatingSurface.hxx".}
proc dumpJson*(this: GeomOsculatingSurface; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom_OsculatingSurface.hxx".}
type
  GeomOsculatingSurfacebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Geom_OsculatingSurface::get_type_name(@)",
                            header: "Geom_OsculatingSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_OsculatingSurface::get_type_descriptor(@)",
    header: "Geom_OsculatingSurface.hxx".}
proc dynamicType*(this: GeomOsculatingSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_OsculatingSurface.hxx".}