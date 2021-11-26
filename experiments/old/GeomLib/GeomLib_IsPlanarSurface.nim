##  Created on: 1998-11-23
##  Created by: Philippe MANGIN
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pln"
type
  GeomLibIsPlanarSurface* {.importcpp: "GeomLib_IsPlanarSurface",
                           header: "GeomLib_IsPlanarSurface.hxx", bycopy.} = object


proc `new`*(this: var GeomLibIsPlanarSurface; theSize: csize_t): pointer {.
    importcpp: "GeomLib_IsPlanarSurface::operator new",
    header: "GeomLib_IsPlanarSurface.hxx".}
proc `delete`*(this: var GeomLibIsPlanarSurface; theAddress: pointer) {.
    importcpp: "GeomLib_IsPlanarSurface::operator delete",
    header: "GeomLib_IsPlanarSurface.hxx".}
proc `new[]`*(this: var GeomLibIsPlanarSurface; theSize: csize_t): pointer {.
    importcpp: "GeomLib_IsPlanarSurface::operator new[]",
    header: "GeomLib_IsPlanarSurface.hxx".}
proc `delete[]`*(this: var GeomLibIsPlanarSurface; theAddress: pointer) {.
    importcpp: "GeomLib_IsPlanarSurface::operator delete[]",
    header: "GeomLib_IsPlanarSurface.hxx".}
proc `new`*(this: var GeomLibIsPlanarSurface; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomLib_IsPlanarSurface::operator new",
    header: "GeomLib_IsPlanarSurface.hxx".}
proc `delete`*(this: var GeomLibIsPlanarSurface; a2: pointer; a3: pointer) {.
    importcpp: "GeomLib_IsPlanarSurface::operator delete",
    header: "GeomLib_IsPlanarSurface.hxx".}
proc constructGeomLibIsPlanarSurface*(s: Handle[GeomSurface];
                                     tol: StandardReal = 1.0e-7): GeomLibIsPlanarSurface {.
    constructor, importcpp: "GeomLib_IsPlanarSurface(@)",
    header: "GeomLib_IsPlanarSurface.hxx".}
proc isPlanar*(this: GeomLibIsPlanarSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsPlanar", header: "GeomLib_IsPlanarSurface.hxx".}
proc plan*(this: GeomLibIsPlanarSurface): Pln {.noSideEffect, importcpp: "Plan",
    header: "GeomLib_IsPlanarSurface.hxx".}