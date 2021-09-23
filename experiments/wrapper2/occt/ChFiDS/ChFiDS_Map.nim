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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopAbs/TopAbs_ShapeEnum, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Integer

discard "forward decl of TopoDS_Shape"
type
  ChFiDS_Map* {.importcpp: "ChFiDS_Map", header: "ChFiDS_Map.hxx", bycopy.} = object ## !
                                                                             ## Create an
                                                                             ## empty Map


proc constructChFiDS_Map*(): ChFiDS_Map {.constructor, importcpp: "ChFiDS_Map(@)",
                                       header: "ChFiDS_Map.hxx".}
proc Fill*(this: var ChFiDS_Map; S: TopoDS_Shape; T1: TopAbs_ShapeEnum;
          T2: TopAbs_ShapeEnum) {.importcpp: "Fill", header: "ChFiDS_Map.hxx".}
proc Contains*(this: ChFiDS_Map; S: TopoDS_Shape): Standard_Boolean {.noSideEffect,
    importcpp: "Contains", header: "ChFiDS_Map.hxx".}
proc FindFromKey*(this: ChFiDS_Map; S: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "FindFromKey", header: "ChFiDS_Map.hxx".}
proc `()`*(this: ChFiDS_Map; S: TopoDS_Shape): TopTools_ListOfShape {.noSideEffect,
    importcpp: "#(@)", header: "ChFiDS_Map.hxx".}
proc FindFromIndex*(this: ChFiDS_Map; I: Standard_Integer): TopTools_ListOfShape {.
    noSideEffect, importcpp: "FindFromIndex", header: "ChFiDS_Map.hxx".}
proc `()`*(this: ChFiDS_Map; I: Standard_Integer): TopTools_ListOfShape {.
    noSideEffect, importcpp: "#(@)", header: "ChFiDS_Map.hxx".}