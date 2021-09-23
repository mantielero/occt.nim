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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  TopOpeBRepDS_Interference, TopOpeBRepDS_Kind, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRepDS_CurvePointInterference"
discard "forward decl of TopOpeBRepDS_CurvePointInterference"
type
  Handle_TopOpeBRepDS_CurvePointInterference* = handle[
      TopOpeBRepDS_CurvePointInterference]

## ! An interference with a parameter.

type
  TopOpeBRepDS_CurvePointInterference* {.importcpp: "TopOpeBRepDS_CurvePointInterference", header: "TopOpeBRepDS_CurvePointInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_Interference


proc constructTopOpeBRepDS_CurvePointInterference*(T: TopOpeBRepDS_Transition;
    ST: TopOpeBRepDS_Kind; S: Standard_Integer; GT: TopOpeBRepDS_Kind;
    G: Standard_Integer; P: Standard_Real): TopOpeBRepDS_CurvePointInterference {.
    constructor, importcpp: "TopOpeBRepDS_CurvePointInterference(@)",
    header: "TopOpeBRepDS_CurvePointInterference.hxx".}
proc Parameter*(this: TopOpeBRepDS_CurvePointInterference): Standard_Real {.
    noSideEffect, importcpp: "Parameter",
    header: "TopOpeBRepDS_CurvePointInterference.hxx".}
proc Parameter*(this: var TopOpeBRepDS_CurvePointInterference; P: Standard_Real) {.
    importcpp: "Parameter", header: "TopOpeBRepDS_CurvePointInterference.hxx".}
type
  TopOpeBRepDS_CurvePointInterferencebase_type* = TopOpeBRepDS_Interference

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepDS_CurvePointInterference::get_type_name(@)",
                              header: "TopOpeBRepDS_CurvePointInterference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepDS_CurvePointInterference::get_type_descriptor(@)",
    header: "TopOpeBRepDS_CurvePointInterference.hxx".}
proc DynamicType*(this: TopOpeBRepDS_CurvePointInterference): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopOpeBRepDS_CurvePointInterference.hxx".}