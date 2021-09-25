##  Created on: 1998-07-30
##  Created by: Pavel DURANDIN <pdn@nnov.matra-dtv.fr>
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
discard "forward decl of ShapeAnalysis_FreeBoundData"
discard "forward decl of TopoDS_Wire"
type
  ShapeAnalysisFreeBoundsProperties* {.importcpp: "ShapeAnalysis_FreeBoundsProperties", header: "ShapeAnalysis_FreeBoundsProperties.hxx",
                                      bycopy.} = object ## ! Empty constructor


proc constructShapeAnalysisFreeBoundsProperties*(): ShapeAnalysisFreeBoundsProperties {.
    constructor, importcpp: "ShapeAnalysis_FreeBoundsProperties(@)",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc constructShapeAnalysisFreeBoundsProperties*(shape: TopoDS_Shape;
    tolerance: float; splitclosed: bool = false; splitopen: bool = false): ShapeAnalysisFreeBoundsProperties {.
    constructor, importcpp: "ShapeAnalysis_FreeBoundsProperties(@)",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc constructShapeAnalysisFreeBoundsProperties*(shape: TopoDS_Shape;
    splitclosed: bool = false; splitopen: bool = false): ShapeAnalysisFreeBoundsProperties {.
    constructor, importcpp: "ShapeAnalysis_FreeBoundsProperties(@)",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc init*(this: var ShapeAnalysisFreeBoundsProperties; shape: TopoDS_Shape;
          tolerance: float; splitclosed: bool = false; splitopen: bool = false) {.
    importcpp: "Init", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc init*(this: var ShapeAnalysisFreeBoundsProperties; shape: TopoDS_Shape;
          splitclosed: bool = false; splitopen: bool = false) {.importcpp: "Init",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc perform*(this: var ShapeAnalysisFreeBoundsProperties): bool {.
    importcpp: "Perform", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc isLoaded*(this: ShapeAnalysisFreeBoundsProperties): bool {.noSideEffect,
    importcpp: "IsLoaded", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc shape*(this: ShapeAnalysisFreeBoundsProperties): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc tolerance*(this: ShapeAnalysisFreeBoundsProperties): float {.noSideEffect,
    importcpp: "Tolerance", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc nbFreeBounds*(this: ShapeAnalysisFreeBoundsProperties): int {.noSideEffect,
    importcpp: "NbFreeBounds", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc nbClosedFreeBounds*(this: ShapeAnalysisFreeBoundsProperties): int {.
    noSideEffect, importcpp: "NbClosedFreeBounds",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc nbOpenFreeBounds*(this: ShapeAnalysisFreeBoundsProperties): int {.noSideEffect,
    importcpp: "NbOpenFreeBounds",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc closedFreeBounds*(this: ShapeAnalysisFreeBoundsProperties): Handle[
    ShapeAnalysisHSequenceOfFreeBounds] {.noSideEffect,
    importcpp: "ClosedFreeBounds",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc openFreeBounds*(this: ShapeAnalysisFreeBoundsProperties): Handle[
    ShapeAnalysisHSequenceOfFreeBounds] {.noSideEffect,
    importcpp: "OpenFreeBounds", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc closedFreeBound*(this: ShapeAnalysisFreeBoundsProperties; index: int): Handle[
    ShapeAnalysisFreeBoundData] {.noSideEffect, importcpp: "ClosedFreeBound", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc openFreeBound*(this: ShapeAnalysisFreeBoundsProperties; index: int): Handle[
    ShapeAnalysisFreeBoundData] {.noSideEffect, importcpp: "OpenFreeBound", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc dispatchBounds*(this: var ShapeAnalysisFreeBoundsProperties): bool {.
    importcpp: "DispatchBounds", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc checkContours*(this: var ShapeAnalysisFreeBoundsProperties; prec: float = 0.0): bool {.
    importcpp: "CheckContours", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc checkNotches*(this: var ShapeAnalysisFreeBoundsProperties; prec: float = 0.0): bool {.
    importcpp: "CheckNotches", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc checkNotches*(this: var ShapeAnalysisFreeBoundsProperties;
                  fbData: var Handle[ShapeAnalysisFreeBoundData]; prec: float = 0.0): bool {.
    importcpp: "CheckNotches", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc checkNotches*(this: var ShapeAnalysisFreeBoundsProperties;
                  freebound: TopoDS_Wire; num: int; notch: var TopoDS_Wire;
                  distMax: var float; prec: float = 0.0): bool {.
    importcpp: "CheckNotches", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc fillProperties*(this: var ShapeAnalysisFreeBoundsProperties;
                    fbData: var Handle[ShapeAnalysisFreeBoundData];
                    prec: float = 0.0): bool {.importcpp: "FillProperties",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
