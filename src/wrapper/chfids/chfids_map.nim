{.experimental: "callOperator".}

import ../../tkg3d/topabs/topabs_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types
import chfids_types





##  Created on: 1993-10-22
##  Created by: Laurent BOURESCHE
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



proc newChFiDS_Map*(): ChFiDS_Map {.cdecl, constructor, importcpp: "ChFiDS_Map(@)",
                                 header: "ChFiDS_Map.hxx".}
proc fill*(this: var ChFiDS_Map; s: TopoDS_Shape; t1: TopAbsShapeEnum;
          t2: TopAbsShapeEnum) {.cdecl, importcpp: "Fill", header: "ChFiDS_Map.hxx".}
proc contains*(this: ChFiDS_Map; s: TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "Contains", header: "ChFiDS_Map.hxx".}
proc findFromKey*(this: ChFiDS_Map; s: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "FindFromKey", header: "ChFiDS_Map.hxx".}
proc `()`*(this: ChFiDS_Map; s: TopoDS_Shape): TopToolsListOfShape {.noSideEffect,
    cdecl, importcpp: "#(@)", header: "ChFiDS_Map.hxx".}
proc findFromIndex*(this: ChFiDS_Map; i: cint): TopToolsListOfShape {.noSideEffect,
    cdecl, importcpp: "FindFromIndex", header: "ChFiDS_Map.hxx".}
proc `()`*(this: ChFiDS_Map; i: cint): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "ChFiDS_Map.hxx".}


