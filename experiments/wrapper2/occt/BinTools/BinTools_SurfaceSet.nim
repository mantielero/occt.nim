##  Created on: 2004-05-20
##  Created by: Sergey ZARITCHNY <szy@opencascade.com>
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_IStream, ../Message/Message_ProgressRange

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Surface"
type
  BinTools_SurfaceSet* {.importcpp: "BinTools_SurfaceSet",
                        header: "BinTools_SurfaceSet.hxx", bycopy.} = object ## ! Returns an empty set of
                                                                        ## Surfaces.


proc constructBinTools_SurfaceSet*(): BinTools_SurfaceSet {.constructor,
    importcpp: "BinTools_SurfaceSet(@)", header: "BinTools_SurfaceSet.hxx".}
proc Clear*(this: var BinTools_SurfaceSet) {.importcpp: "Clear",
    header: "BinTools_SurfaceSet.hxx".}
proc Add*(this: var BinTools_SurfaceSet; S: handle[Geom_Surface]): Standard_Integer {.
    importcpp: "Add", header: "BinTools_SurfaceSet.hxx".}
proc Surface*(this: BinTools_SurfaceSet; I: Standard_Integer): handle[Geom_Surface] {.
    noSideEffect, importcpp: "Surface", header: "BinTools_SurfaceSet.hxx".}
proc Index*(this: BinTools_SurfaceSet; S: handle[Geom_Surface]): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "BinTools_SurfaceSet.hxx".}
proc Write*(this: BinTools_SurfaceSet; OS: var Standard_OStream;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "BinTools_SurfaceSet.hxx".}
proc Read*(this: var BinTools_SurfaceSet; IS: var Standard_IStream;
          therange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "BinTools_SurfaceSet.hxx".}
proc WriteSurface*(S: handle[Geom_Surface]; OS: var Standard_OStream) {.
    importcpp: "BinTools_SurfaceSet::WriteSurface(@)",
    header: "BinTools_SurfaceSet.hxx".}
proc ReadSurface*(IS: var Standard_IStream; S: var handle[Geom_Surface]): var Standard_IStream {.
    importcpp: "BinTools_SurfaceSet::ReadSurface(@)",
    header: "BinTools_SurfaceSet.hxx".}