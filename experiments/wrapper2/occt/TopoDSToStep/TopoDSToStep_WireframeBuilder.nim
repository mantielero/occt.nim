##  Created on: 1995-03-17
##  Created by: Dieter THIEMANN
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDSToStep_Tool"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  TopoDSToStepWireframeBuilder* {.importcpp: "TopoDSToStep_WireframeBuilder",
                                 header: "TopoDSToStep_WireframeBuilder.hxx",
                                 bycopy.} = object of TopoDSToStepRoot


proc constructTopoDSToStepWireframeBuilder*(): TopoDSToStepWireframeBuilder {.
    constructor, importcpp: "TopoDSToStep_WireframeBuilder(@)",
    header: "TopoDSToStep_WireframeBuilder.hxx".}
proc constructTopoDSToStepWireframeBuilder*(s: TopoDS_Shape;
    t: var TopoDSToStepTool; fp: Handle[TransferFinderProcess]): TopoDSToStepWireframeBuilder {.
    constructor, importcpp: "TopoDSToStep_WireframeBuilder(@)",
    header: "TopoDSToStep_WireframeBuilder.hxx".}
proc init*(this: var TopoDSToStepWireframeBuilder; s: TopoDS_Shape;
          t: var TopoDSToStepTool; fp: Handle[TransferFinderProcess]) {.
    importcpp: "Init", header: "TopoDSToStep_WireframeBuilder.hxx".}
proc error*(this: TopoDSToStepWireframeBuilder): TopoDSToStepBuilderError {.
    noSideEffect, importcpp: "Error", header: "TopoDSToStep_WireframeBuilder.hxx".}
proc value*(this: TopoDSToStepWireframeBuilder): Handle[TColStdHSequenceOfTransient] {.
    noSideEffect, importcpp: "Value", header: "TopoDSToStep_WireframeBuilder.hxx".}
proc getTrimmedCurveFromEdge*(this: TopoDSToStepWireframeBuilder; e: TopoDS_Edge;
                             f: TopoDS_Face;
                             m: var MoniToolDataMapOfShapeTransient;
                             L: var Handle[TColStdHSequenceOfTransient]): bool {.
    noSideEffect, importcpp: "GetTrimmedCurveFromEdge",
    header: "TopoDSToStep_WireframeBuilder.hxx".}
proc getTrimmedCurveFromFace*(this: TopoDSToStepWireframeBuilder; f: TopoDS_Face;
                             m: var MoniToolDataMapOfShapeTransient;
                             L: var Handle[TColStdHSequenceOfTransient]): bool {.
    noSideEffect, importcpp: "GetTrimmedCurveFromFace",
    header: "TopoDSToStep_WireframeBuilder.hxx".}
proc getTrimmedCurveFromShape*(this: TopoDSToStepWireframeBuilder; s: TopoDS_Shape;
                              m: var MoniToolDataMapOfShapeTransient;
                              L: var Handle[TColStdHSequenceOfTransient]): bool {.
    noSideEffect, importcpp: "GetTrimmedCurveFromShape",
    header: "TopoDSToStep_WireframeBuilder.hxx".}

























