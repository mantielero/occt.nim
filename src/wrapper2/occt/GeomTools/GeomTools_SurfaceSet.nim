##  Created on: 1993-07-19
##  Created by: Remi LEQUETTE
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_IndexedMapOfTransient,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Standard/Standard_IStream, ../Standard/Standard_Boolean,
  ../Message/Message_ProgressRange

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Surface"
type
  GeomTools_SurfaceSet* {.importcpp: "GeomTools_SurfaceSet",
                         header: "GeomTools_SurfaceSet.hxx", bycopy.} = object ## !
                                                                          ## Returns an empty set of
                                                                          ## Surfaces.


proc constructGeomTools_SurfaceSet*(): GeomTools_SurfaceSet {.constructor,
    importcpp: "GeomTools_SurfaceSet(@)", header: "GeomTools_SurfaceSet.hxx".}
proc Clear*(this: var GeomTools_SurfaceSet) {.importcpp: "Clear",
    header: "GeomTools_SurfaceSet.hxx".}
proc Add*(this: var GeomTools_SurfaceSet; S: handle[Geom_Surface]): Standard_Integer {.
    importcpp: "Add", header: "GeomTools_SurfaceSet.hxx".}
proc Surface*(this: GeomTools_SurfaceSet; I: Standard_Integer): handle[Geom_Surface] {.
    noSideEffect, importcpp: "Surface", header: "GeomTools_SurfaceSet.hxx".}
proc Index*(this: GeomTools_SurfaceSet; S: handle[Geom_Surface]): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "GeomTools_SurfaceSet.hxx".}
proc Dump*(this: GeomTools_SurfaceSet; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "GeomTools_SurfaceSet.hxx".}
proc Write*(this: GeomTools_SurfaceSet; OS: var Standard_OStream;
           theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "GeomTools_SurfaceSet.hxx".}
proc Read*(this: var GeomTools_SurfaceSet; IS: var Standard_IStream;
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "GeomTools_SurfaceSet.hxx".}
proc PrintSurface*(S: handle[Geom_Surface]; OS: var Standard_OStream;
                  compact: Standard_Boolean = Standard_False) {.
    importcpp: "GeomTools_SurfaceSet::PrintSurface(@)",
    header: "GeomTools_SurfaceSet.hxx".}
proc ReadSurface*(IS: var Standard_IStream): handle[Geom_Surface] {.
    importcpp: "GeomTools_SurfaceSet::ReadSurface(@)",
    header: "GeomTools_SurfaceSet.hxx".}