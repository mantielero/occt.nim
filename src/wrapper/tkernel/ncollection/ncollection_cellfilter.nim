import ncollection_types

##  Created on: 2007-05-26
##  Created by: Andrey BETENEV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

## ! Auxiliary enumeration serving as responce from method Inspect






proc newNCollectionCellFilter*[Inspector](theDim: cint;
    theCellSize: StandardReal = 0; theAlloc: Handle[NCollectionIncAllocator] = cast[Handle[NCollectionIncAllocator]](0)): NCollectionCellFilter[
    Inspector] {.cdecl, constructor, importcpp: "NCollection_CellFilter<\'*0>(@)",
                header: "NCollection_CellFilter.hxx".}
proc newNCollectionCellFilter*[Inspector](theCellSize: StandardReal = 0;
    theAlloc: Handle[NCollectionIncAllocator] = cast[Handle[NCollectionIncAllocator]](0)): NCollectionCellFilter[Inspector] {.
    cdecl, constructor, importcpp: "NCollection_CellFilter<\'*0>(@)",
    header: "NCollection_CellFilter.hxx".}
proc reset*[Inspector](this: var NCollectionCellFilter[Inspector];
                      theCellSize: StandardReal;
                      theAlloc: Handle[NCollectionIncAllocator] = cast[Handle[NCollectionIncAllocator]](0)) {.cdecl,
    importcpp: "Reset", header: "NCollection_CellFilter.hxx".}
proc reset*[Inspector](this: var NCollectionCellFilter[Inspector];
                      theCellSize: var NCollectionArray1[StandardReal];
                      theAlloc: Handle[NCollectionIncAllocator] = cast[Handle[NCollectionIncAllocator]](0)) {.cdecl,
    importcpp: "Reset", header: "NCollection_CellFilter.hxx".}
proc add*[Inspector](this: var NCollectionCellFilter[Inspector];
                    theTarget: NCollectionCellFilterTarget;
                    thePnt: NCollectionCellFilterPoint) {.cdecl, importcpp: "Add",
    header: "NCollection_CellFilter.hxx".}
proc add*[Inspector](this: var NCollectionCellFilter[Inspector];
                    theTarget: NCollectionCellFilterTarget;
                    thePntMin: NCollectionCellFilterPoint;
                    thePntMax: NCollectionCellFilterPoint) {.cdecl,
    importcpp: "Add", header: "NCollection_CellFilter.hxx".}
proc remove*[Inspector](this: var NCollectionCellFilter[Inspector];
                       theTarget: NCollectionCellFilterTarget;
                       thePnt: NCollectionCellFilterPoint) {.cdecl,
    importcpp: "Remove", header: "NCollection_CellFilter.hxx".}
proc remove*[Inspector](this: var NCollectionCellFilter[Inspector];
                       theTarget: NCollectionCellFilterTarget;
                       thePntMin: NCollectionCellFilterPoint;
                       thePntMax: NCollectionCellFilterPoint) {.cdecl,
    importcpp: "Remove", header: "NCollection_CellFilter.hxx".}
proc inspect*[Inspector](this: var NCollectionCellFilter[Inspector];
                        thePnt: NCollectionCellFilterPoint;
                        theInspector: var Inspector) {.cdecl, importcpp: "Inspect",
    header: "NCollection_CellFilter.hxx".}
proc inspect*[Inspector](this: var NCollectionCellFilter[Inspector];
                        thePntMin: NCollectionCellFilterPoint;
                        thePntMax: NCollectionCellFilterPoint;
                        theInspector: var Inspector) {.cdecl, importcpp: "Inspect",
    header: "NCollection_CellFilter.hxx".}
## *
##  Base class defining part of the Inspector interface
##  for CellFilter algorithm, working with gp_XYZ points in 3d space
##

discard "forward decl of gp_XYZ"


const
  NCollectionCellFilterInspectorXYZDimension* = 3


proc coord*(i: cint; thePnt: NCollectionCellFilterInspectorXYZPoint): StandardReal {.
    cdecl, importcpp: "NCollection_CellFilter_InspectorXYZ::Coord(@)",
    header: "NCollection_CellFilter.hxx".}
proc shift*(this: NCollectionCellFilterInspectorXYZ;
           thePnt: NCollectionCellFilterInspectorXYZPoint; theTol: StandardReal): NCollectionCellFilterInspectorXYZPoint {.
    noSideEffect, cdecl, importcpp: "Shift", header: "NCollection_CellFilter.hxx".}
## *
##  Base class defining part of the Inspector interface
##  for CellFilter algorithm, working with gp_XY points in 2d space
##

discard "forward decl of gp_XY"


const
  NCollectionCellFilterInspectorXYDimension* = 2


proc coord*(i: cint; thePnt: NCollectionCellFilterInspectorXYPoint): StandardReal {.
    cdecl, importcpp: "NCollection_CellFilter_InspectorXY::Coord(@)",
    header: "NCollection_CellFilter.hxx".}
proc shift*(this: NCollectionCellFilterInspectorXY;
           thePnt: NCollectionCellFilterInspectorXYPoint; theTol: StandardReal): NCollectionCellFilterInspectorXYPoint {.
    noSideEffect, cdecl, importcpp: "Shift", header: "NCollection_CellFilter.hxx".}
