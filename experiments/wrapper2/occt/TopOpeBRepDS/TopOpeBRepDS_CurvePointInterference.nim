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
discard "forward decl of TopOpeBRepDS_CurvePointInterference"
type
  HandleC1C1* = Handle[TopOpeBRepDS_CurvePointInterference]

## ! An interference with a parameter.

type
  TopOpeBRepDS_CurvePointInterference* {.importcpp: "TopOpeBRepDS_CurvePointInterference", header: "TopOpeBRepDS_CurvePointInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_Interference


proc constructTopOpeBRepDS_CurvePointInterference*(t: TopOpeBRepDS_Transition;
    st: TopOpeBRepDS_Kind; s: cint; gt: TopOpeBRepDS_Kind; g: cint; p: cfloat): TopOpeBRepDS_CurvePointInterference {.
    constructor, importcpp: "TopOpeBRepDS_CurvePointInterference(@)",
    header: "TopOpeBRepDS_CurvePointInterference.hxx".}
proc parameter*(this: TopOpeBRepDS_CurvePointInterference): cfloat {.noSideEffect,
    importcpp: "Parameter", header: "TopOpeBRepDS_CurvePointInterference.hxx".}
proc parameter*(this: var TopOpeBRepDS_CurvePointInterference; p: cfloat) {.
    importcpp: "Parameter", header: "TopOpeBRepDS_CurvePointInterference.hxx".}
type
  TopOpeBRepDS_CurvePointInterferencebaseType* = TopOpeBRepDS_Interference

proc getTypeName*(): cstring {.importcpp: "TopOpeBRepDS_CurvePointInterference::get_type_name(@)",
                            header: "TopOpeBRepDS_CurvePointInterference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRepDS_CurvePointInterference::get_type_descriptor(@)",
    header: "TopOpeBRepDS_CurvePointInterference.hxx".}
proc dynamicType*(this: TopOpeBRepDS_CurvePointInterference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopOpeBRepDS_CurvePointInterference.hxx".}

























