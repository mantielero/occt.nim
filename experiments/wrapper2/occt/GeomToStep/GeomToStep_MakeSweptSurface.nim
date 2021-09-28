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

discard "forward decl of StepGeom_SweptSurface"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_SweptSurface"
type
  GeomToStepMakeSweptSurface* {.importcpp: "GeomToStep_MakeSweptSurface",
                               header: "GeomToStep_MakeSweptSurface.hxx", bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakeSweptSurface; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeSweptSurface::operator new",
    header: "GeomToStep_MakeSweptSurface.hxx".}
proc `delete`*(this: var GeomToStepMakeSweptSurface; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeSweptSurface::operator delete",
    header: "GeomToStep_MakeSweptSurface.hxx".}
proc `new[]`*(this: var GeomToStepMakeSweptSurface; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeSweptSurface::operator new[]",
    header: "GeomToStep_MakeSweptSurface.hxx".}
proc `delete[]`*(this: var GeomToStepMakeSweptSurface; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeSweptSurface::operator delete[]",
    header: "GeomToStep_MakeSweptSurface.hxx".}
proc `new`*(this: var GeomToStepMakeSweptSurface; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomToStep_MakeSweptSurface::operator new",
    header: "GeomToStep_MakeSweptSurface.hxx".}
proc `delete`*(this: var GeomToStepMakeSweptSurface; a2: pointer; a3: pointer) {.
    importcpp: "GeomToStep_MakeSweptSurface::operator delete",
    header: "GeomToStep_MakeSweptSurface.hxx".}
proc constructGeomToStepMakeSweptSurface*(s: Handle[GeomSweptSurface]): GeomToStepMakeSweptSurface {.
    constructor, importcpp: "GeomToStep_MakeSweptSurface(@)",
    header: "GeomToStep_MakeSweptSurface.hxx".}
proc value*(this: GeomToStepMakeSweptSurface): Handle[StepGeomSweptSurface] {.
    noSideEffect, importcpp: "Value", header: "GeomToStep_MakeSweptSurface.hxx".}