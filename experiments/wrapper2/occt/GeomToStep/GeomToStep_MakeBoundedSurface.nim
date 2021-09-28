##  Created on: 1993-06-22
##  Created by: Martine LANGLOIS
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of StepGeom_BoundedSurface"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_BoundedSurface"
type
  GeomToStepMakeBoundedSurface* {.importcpp: "GeomToStep_MakeBoundedSurface",
                                 header: "GeomToStep_MakeBoundedSurface.hxx",
                                 bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakeBoundedSurface; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeBoundedSurface::operator new",
    header: "GeomToStep_MakeBoundedSurface.hxx".}
proc `delete`*(this: var GeomToStepMakeBoundedSurface; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeBoundedSurface::operator delete",
    header: "GeomToStep_MakeBoundedSurface.hxx".}
proc `new[]`*(this: var GeomToStepMakeBoundedSurface; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeBoundedSurface::operator new[]",
    header: "GeomToStep_MakeBoundedSurface.hxx".}
proc `delete[]`*(this: var GeomToStepMakeBoundedSurface; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeBoundedSurface::operator delete[]",
    header: "GeomToStep_MakeBoundedSurface.hxx".}
proc `new`*(this: var GeomToStepMakeBoundedSurface; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomToStep_MakeBoundedSurface::operator new",
    header: "GeomToStep_MakeBoundedSurface.hxx".}
proc `delete`*(this: var GeomToStepMakeBoundedSurface; a2: pointer; a3: pointer) {.
    importcpp: "GeomToStep_MakeBoundedSurface::operator delete",
    header: "GeomToStep_MakeBoundedSurface.hxx".}
proc constructGeomToStepMakeBoundedSurface*(c: Handle[GeomBoundedSurface]): GeomToStepMakeBoundedSurface {.
    constructor, importcpp: "GeomToStep_MakeBoundedSurface(@)",
    header: "GeomToStep_MakeBoundedSurface.hxx".}
proc value*(this: GeomToStepMakeBoundedSurface): Handle[StepGeomBoundedSurface] {.
    noSideEffect, importcpp: "Value", header: "GeomToStep_MakeBoundedSurface.hxx".}