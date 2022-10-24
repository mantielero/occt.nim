import topopebrepds_types

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

discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRepDS_CurvePointInterference"




proc newTopOpeBRepDS_CurvePointInterference*(t: TopOpeBRepDS_Transition;
    st: TopOpeBRepDS_Kind; s: cint; gt: TopOpeBRepDS_Kind; g: cint; p: cfloat): TopOpeBRepDS_CurvePointInterference {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_CurvePointInterference(@)",
    header: "TopOpeBRepDS_CurvePointInterference.hxx".}
proc parameter*(this: TopOpeBRepDS_CurvePointInterference): cfloat {.noSideEffect,
    cdecl, importcpp: "Parameter", header: "TopOpeBRepDS_CurvePointInterference.hxx".}
proc parameter*(this: var TopOpeBRepDS_CurvePointInterference; p: cfloat) {.cdecl,
    importcpp: "Parameter", header: "TopOpeBRepDS_CurvePointInterference.hxx".}
