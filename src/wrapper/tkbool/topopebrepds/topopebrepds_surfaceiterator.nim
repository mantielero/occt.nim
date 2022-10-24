import topopebrepds_types

##  Created on: 1994-06-07
##  Created by: Jean Yves LEBEY
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



proc newTopOpeBRepDS_SurfaceIterator*(L: TopOpeBRepDS_ListOfInterference): TopOpeBRepDS_SurfaceIterator {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_SurfaceIterator(@)", header: "TopOpeBRepDS_SurfaceIterator.hxx".}
proc current*(this: TopOpeBRepDS_SurfaceIterator): cint {.noSideEffect, cdecl,
    importcpp: "Current", header: "TopOpeBRepDS_SurfaceIterator.hxx".}
proc orientation*(this: TopOpeBRepDS_SurfaceIterator; s: TopAbsState): TopAbsOrientation {.
    noSideEffect, cdecl, importcpp: "Orientation", header: "TopOpeBRepDS_SurfaceIterator.hxx".}
