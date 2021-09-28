##  Created on: 1993-06-23
##  Created by: Jean Yves LEBEY
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

discard "forward decl of Geom_Surface"
type
  TopOpeBRepDS_Surface* {.importcpp: "TopOpeBRepDS_Surface",
                         header: "TopOpeBRepDS_Surface.hxx", bycopy.} = object


proc constructTopOpeBRepDS_Surface*(): TopOpeBRepDS_Surface {.constructor,
    importcpp: "TopOpeBRepDS_Surface(@)", header: "TopOpeBRepDS_Surface.hxx".}
proc constructTopOpeBRepDS_Surface*(p: Handle[GeomSurface]; t: cfloat): TopOpeBRepDS_Surface {.
    constructor, importcpp: "TopOpeBRepDS_Surface(@)",
    header: "TopOpeBRepDS_Surface.hxx".}
proc constructTopOpeBRepDS_Surface*(other: TopOpeBRepDS_Surface): TopOpeBRepDS_Surface {.
    constructor, importcpp: "TopOpeBRepDS_Surface(@)",
    header: "TopOpeBRepDS_Surface.hxx".}
proc assign*(this: var TopOpeBRepDS_Surface; other: TopOpeBRepDS_Surface) {.
    importcpp: "Assign", header: "TopOpeBRepDS_Surface.hxx".}
proc surface*(this: TopOpeBRepDS_Surface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "TopOpeBRepDS_Surface.hxx".}
proc tolerance*(this: TopOpeBRepDS_Surface): cfloat {.noSideEffect,
    importcpp: "Tolerance", header: "TopOpeBRepDS_Surface.hxx".}
proc tolerance*(this: var TopOpeBRepDS_Surface; theTol: cfloat) {.
    importcpp: "Tolerance", header: "TopOpeBRepDS_Surface.hxx".}
proc keep*(this: TopOpeBRepDS_Surface): bool {.noSideEffect, importcpp: "Keep",
    header: "TopOpeBRepDS_Surface.hxx".}
proc changeKeep*(this: var TopOpeBRepDS_Surface; theToKeep: bool) {.
    importcpp: "ChangeKeep", header: "TopOpeBRepDS_Surface.hxx".}

























