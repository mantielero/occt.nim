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

discard "forward decl of TopoDS_Shape"
discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of AIS_C0RegularityFilter"
type
  HandleAIS_C0RegularityFilter* = Handle[AIS_C0RegularityFilter]
  AIS_C0RegularityFilter* {.importcpp: "AIS_C0RegularityFilter",
                           header: "AIS_C0RegularityFilter.hxx", bycopy.} = object of SelectMgrFilter


proc newAIS_C0RegularityFilter*(aShape: TopoDS_Shape): AIS_C0RegularityFilter {.
    cdecl, constructor, importcpp: "AIS_C0RegularityFilter(@)", header: "AIS_C0RegularityFilter.hxx".}
proc actsOn*(this: AIS_C0RegularityFilter; aType: TopAbsShapeEnum): bool {.
    noSideEffect, cdecl, importcpp: "ActsOn", header: "AIS_C0RegularityFilter.hxx".}
proc isOk*(this: AIS_C0RegularityFilter; eo: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, cdecl, importcpp: "IsOk", header: "AIS_C0RegularityFilter.hxx".}