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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Surface"
type
  BinToolsSurfaceSet* {.importcpp: "BinTools_SurfaceSet",
                       header: "BinTools_SurfaceSet.hxx", bycopy.} = object ## ! Returns an empty set of Surfaces.


proc constructBinToolsSurfaceSet*(): BinToolsSurfaceSet {.constructor,
    importcpp: "BinTools_SurfaceSet(@)", header: "BinTools_SurfaceSet.hxx".}
proc clear*(this: var BinToolsSurfaceSet) {.importcpp: "Clear",
                                        header: "BinTools_SurfaceSet.hxx".}
proc add*(this: var BinToolsSurfaceSet; s: Handle[GeomSurface]): int {.
    importcpp: "Add", header: "BinTools_SurfaceSet.hxx".}
proc surface*(this: BinToolsSurfaceSet; i: int): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "BinTools_SurfaceSet.hxx".}
proc index*(this: BinToolsSurfaceSet; s: Handle[GeomSurface]): int {.noSideEffect,
    importcpp: "Index", header: "BinTools_SurfaceSet.hxx".}
proc write*(this: BinToolsSurfaceSet; os: var StandardOStream;
           theRange: MessageProgressRange = messageProgressRange()) {.noSideEffect,
    importcpp: "Write", header: "BinTools_SurfaceSet.hxx".}
proc read*(this: var BinToolsSurfaceSet; `is`: var StandardIStream;
          therange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "BinTools_SurfaceSet.hxx".}
proc writeSurface*(s: Handle[GeomSurface]; os: var StandardOStream) {.
    importcpp: "BinTools_SurfaceSet::WriteSurface(@)",
    header: "BinTools_SurfaceSet.hxx".}
proc readSurface*(`is`: var StandardIStream; s: var Handle[GeomSurface]): var StandardIStream {.
    importcpp: "BinTools_SurfaceSet::ReadSurface(@)",
    header: "BinTools_SurfaceSet.hxx".}
