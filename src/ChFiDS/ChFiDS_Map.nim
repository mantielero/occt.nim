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

discard "forward decl of TopoDS_Shape"
type
  ChFiDS_Map* {.importcpp: "ChFiDS_Map", header: "ChFiDS_Map.hxx", bycopy.} = object


proc `new`*(this: var ChFiDS_Map; theSize: csize_t): pointer {.
    importcpp: "ChFiDS_Map::operator new", header: "ChFiDS_Map.hxx".}
proc `delete`*(this: var ChFiDS_Map; theAddress: pointer) {.
    importcpp: "ChFiDS_Map::operator delete", header: "ChFiDS_Map.hxx".}
proc `new[]`*(this: var ChFiDS_Map; theSize: csize_t): pointer {.
    importcpp: "ChFiDS_Map::operator new[]", header: "ChFiDS_Map.hxx".}
proc `delete[]`*(this: var ChFiDS_Map; theAddress: pointer) {.
    importcpp: "ChFiDS_Map::operator delete[]", header: "ChFiDS_Map.hxx".}
proc `new`*(this: var ChFiDS_Map; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "ChFiDS_Map::operator new", header: "ChFiDS_Map.hxx".}
proc `delete`*(this: var ChFiDS_Map; a2: pointer; a3: pointer) {.
    importcpp: "ChFiDS_Map::operator delete", header: "ChFiDS_Map.hxx".}
proc constructChFiDS_Map*(): ChFiDS_Map {.constructor, importcpp: "ChFiDS_Map(@)",
                                       header: "ChFiDS_Map.hxx".}
proc fill*(this: var ChFiDS_Map; s: TopoDS_Shape; t1: TopAbsShapeEnum;
          t2: TopAbsShapeEnum) {.importcpp: "Fill", header: "ChFiDS_Map.hxx".}
proc contains*(this: ChFiDS_Map; s: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "Contains", header: "ChFiDS_Map.hxx".}
proc findFromKey*(this: ChFiDS_Map; s: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "FindFromKey", header: "ChFiDS_Map.hxx".}
proc `()`*(this: ChFiDS_Map; s: TopoDS_Shape): TopToolsListOfShape {.noSideEffect,
    importcpp: "#(@)", header: "ChFiDS_Map.hxx".}
proc findFromIndex*(this: ChFiDS_Map; i: int): TopToolsListOfShape {.noSideEffect,
    importcpp: "FindFromIndex", header: "ChFiDS_Map.hxx".}
proc `()`*(this: ChFiDS_Map; i: int): TopToolsListOfShape {.noSideEffect,
    importcpp: "#(@)", header: "ChFiDS_Map.hxx".}