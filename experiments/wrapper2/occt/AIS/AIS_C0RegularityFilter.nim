##  Created on: 1998-02-04
##  Created by: Julia GERASIMOVA
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TopTools/TopTools_MapOfShape, ../SelectMgr/SelectMgr_Filter,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of TopoDS_Shape"
discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of AIS_C0RegularityFilter"
discard "forward decl of AIS_C0RegularityFilter"
type
  Handle_AIS_C0RegularityFilter* = handle[AIS_C0RegularityFilter]
  AIS_C0RegularityFilter* {.importcpp: "AIS_C0RegularityFilter",
                           header: "AIS_C0RegularityFilter.hxx", bycopy.} = object of SelectMgr_Filter


proc constructAIS_C0RegularityFilter*(aShape: TopoDS_Shape): AIS_C0RegularityFilter {.
    constructor, importcpp: "AIS_C0RegularityFilter(@)",
    header: "AIS_C0RegularityFilter.hxx".}
proc ActsOn*(this: AIS_C0RegularityFilter; aType: TopAbs_ShapeEnum): Standard_Boolean {.
    noSideEffect, importcpp: "ActsOn", header: "AIS_C0RegularityFilter.hxx".}
proc IsOk*(this: AIS_C0RegularityFilter; EO: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsOk", header: "AIS_C0RegularityFilter.hxx".}
type
  AIS_C0RegularityFilterbase_type* = SelectMgr_Filter

proc get_type_name*(): cstring {.importcpp: "AIS_C0RegularityFilter::get_type_name(@)",
                              header: "AIS_C0RegularityFilter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_C0RegularityFilter::get_type_descriptor(@)",
    header: "AIS_C0RegularityFilter.hxx".}
proc DynamicType*(this: AIS_C0RegularityFilter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "AIS_C0RegularityFilter.hxx".}