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

discard "forward decl of StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_BSplineSurface"
type
  GeomToStepMakeBSplineSurfaceWithKnotsAndRationalBSplineSurface* {.importcpp: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface", header: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx",
      bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakeBSplineSurfaceWithKnotsAndRationalBSplineSurface;
           theSize: csize_t): pointer {.importcpp: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface::operator new", header: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc `delete`*(this: var GeomToStepMakeBSplineSurfaceWithKnotsAndRationalBSplineSurface;
              theAddress: pointer) {.importcpp: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface::operator delete", header: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc `new[]`*(this: var GeomToStepMakeBSplineSurfaceWithKnotsAndRationalBSplineSurface;
             theSize: csize_t): pointer {.importcpp: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface::operator new[]", header: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc `delete[]`*(this: var GeomToStepMakeBSplineSurfaceWithKnotsAndRationalBSplineSurface;
                theAddress: pointer) {.importcpp: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface::operator delete[]", header: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc `new`*(this: var GeomToStepMakeBSplineSurfaceWithKnotsAndRationalBSplineSurface;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface::operator new", header: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc `delete`*(this: var GeomToStepMakeBSplineSurfaceWithKnotsAndRationalBSplineSurface;
              a2: pointer; a3: pointer) {.importcpp: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface::operator delete", header: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc constructGeomToStepMakeBSplineSurfaceWithKnotsAndRationalBSplineSurface*(
    bsplin: Handle[GeomBSplineSurface]): GeomToStepMakeBSplineSurfaceWithKnotsAndRationalBSplineSurface {.
    constructor, importcpp: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface(@)", header: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc value*(this: GeomToStepMakeBSplineSurfaceWithKnotsAndRationalBSplineSurface): Handle[
    StepGeomBSplineSurfaceWithKnotsAndRationalBSplineSurface] {.noSideEffect,
    importcpp: "Value", header: "GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}