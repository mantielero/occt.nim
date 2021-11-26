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
  ChFiDS_Map* {.importcpp: "ChFiDS_Map", header: "ChFiDS_Map.hxx", bycopy.} = object ## !
                                                                             ## Create an
                                                                             ## empty Map


proc newChFiDS_Map*(): ChFiDS_Map {.cdecl, constructor, importcpp: "ChFiDS_Map(@)",
                                 dynlib: tkfillet.}
proc fill*(this: var ChFiDS_Map; s: TopoDS_Shape; t1: TopAbsShapeEnum;
          t2: TopAbsShapeEnum) {.cdecl, importcpp: "Fill", dynlib: tkfillet.}
proc contains*(this: ChFiDS_Map; s: TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkfillet.}
proc findFromKey*(this: ChFiDS_Map; s: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "FindFromKey", dynlib: tkfillet.}
proc `()`*(this: ChFiDS_Map; s: TopoDS_Shape): TopToolsListOfShape {.noSideEffect,
    cdecl, importcpp: "#(@)", dynlib: tkfillet.}
proc findFromIndex*(this: ChFiDS_Map; i: cint): TopToolsListOfShape {.noSideEffect,
    cdecl, importcpp: "FindFromIndex", dynlib: tkfillet.}
proc `()`*(this: ChFiDS_Map; i: cint): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkfillet.}