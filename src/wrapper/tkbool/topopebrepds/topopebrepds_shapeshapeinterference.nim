import topopebrepds_types



##  Created on: 1994-08-30
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





proc newTopOpeBRepDS_ShapeShapeInterference*(t: TopOpeBRepDS_Transition;
    st: TopOpeBRepDS_Kind; s: cint; gt: TopOpeBRepDS_Kind; g: cint; gBound: bool;
    c: TopOpeBRepDS_Config): TopOpeBRepDS_ShapeShapeInterference {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_ShapeShapeInterference(@)",
    header: "TopOpeBRepDS_ShapeShapeInterference.hxx".}
proc config*(this: TopOpeBRepDS_ShapeShapeInterference): TopOpeBRepDS_Config {.
    noSideEffect, cdecl, importcpp: "Config", header: "TopOpeBRepDS_ShapeShapeInterference.hxx".}
proc gBound*(this: TopOpeBRepDS_ShapeShapeInterference): bool {.noSideEffect, cdecl,
    importcpp: "GBound", header: "TopOpeBRepDS_ShapeShapeInterference.hxx".}
proc setGBound*(this: var TopOpeBRepDS_ShapeShapeInterference; b: bool) {.cdecl,
    importcpp: "SetGBound", header: "TopOpeBRepDS_ShapeShapeInterference.hxx".}

