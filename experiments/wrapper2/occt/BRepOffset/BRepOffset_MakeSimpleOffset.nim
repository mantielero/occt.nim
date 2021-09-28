##  Created on: 2016-10-13
##  Created by: Alexander MALYSHEV
##  Copyright (c) 1999-2016 OPEN CASCADE SAS
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

type
  BRepOffsetSimpleStatus* {.size: sizeof(cint),
                           importcpp: "BRepOffsetSimple_Status",
                           header: "BRepOffset_MakeSimpleOffset.hxx".} = enum
    BRepOffsetSimpleOK, BRepOffsetSimpleNullInputShape,
    BRepOffsetSimpleErrorOffsetComputation,
    BRepOffsetSimpleErrorWallFaceComputation,
    BRepOffsetSimpleErrorInvalidNbShells, BRepOffsetSimpleErrorNonClosedShell


## ! This class represents simple offset algorithm itself. It builds simple offset without intersection.
## ! Solid can be created using SetBuildSolidFlag method (set flag to true). By default shell will be constructed.
## !
## ! Algorithm:
## ! 1. Build source-image maps for vertices, edges and faces.BRepTools_Modification class will be used
## !    to store this information. An image of a shared edge can be constructed from the corresponding edge
## !    of the first iterated face.
## ! 2. Run BRepTools_Modifier to obtain offset shape.
##   3. Ensure topological integrity of the output shape.
## !
## ! Limitations:
## ! According to the algorithm nature result depends on the smoothness of input data. Smooth (G1-continuity) input shape
## ! will lead to the good result.
## !
## ! The possible drawback of the simple algorithm is that it leads, in general case, to tolerance increasing.
## ! The tolerances have to grow in order to cover the gaps between the neighbor faces in the output.
## ! It should be noted that the actual tolerance growth depends on the offset distance and the quality of
## ! joints between the input faces. Anyway the good input shell (smooth connections between adjacent faces)
## ! will lead to good result.

type
  BRepOffsetMakeSimpleOffset* {.importcpp: "BRepOffset_MakeSimpleOffset",
                               header: "BRepOffset_MakeSimpleOffset.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Constructor.
                                                                                       ## Does
                                                                                       ## nothing.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Computes
                                                                                       ## max
                                                                                       ## angle
                                                                                       ## in
                                                                                       ## faces
                                                                                       ## junction.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Builds
                                                                                       ## face
                                                                                       ## on
                                                                                       ## specified
                                                                                       ## wall.
    ## ! Offset value.
    ## ! Tolerance (for singularities)
    ## ! Solid building flag. True means solid construction.
    ##  Internal data.
    ## ! Maximal angle in faces junction. This value helps to estimate result tolerance.
    ## ! Error message.
    ## ! Done state.
    ## ! Map of vertex - wall edge.
    ## ! Used to build shared edge between adjacent wall faces.
    ## ! Used for histrory support.
    ## ! Used for history support.
    ##  Output data.
    ## ! Result shape.


proc constructBRepOffsetMakeSimpleOffset*(): BRepOffsetMakeSimpleOffset {.
    constructor, importcpp: "BRepOffset_MakeSimpleOffset(@)",
    header: "BRepOffset_MakeSimpleOffset.hxx".}
proc constructBRepOffsetMakeSimpleOffset*(theInputShape: TopoDS_Shape;
    theOffsetValue: cfloat): BRepOffsetMakeSimpleOffset {.constructor,
    importcpp: "BRepOffset_MakeSimpleOffset(@)",
    header: "BRepOffset_MakeSimpleOffset.hxx".}
proc initialize*(this: var BRepOffsetMakeSimpleOffset; theInputShape: TopoDS_Shape;
                theOffsetValue: cfloat) {.importcpp: "Initialize", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc perform*(this: var BRepOffsetMakeSimpleOffset) {.importcpp: "Perform",
    header: "BRepOffset_MakeSimpleOffset.hxx".}
proc getErrorMessage*(this: BRepOffsetMakeSimpleOffset): TCollectionAsciiString {.
    noSideEffect, importcpp: "GetErrorMessage",
    header: "BRepOffset_MakeSimpleOffset.hxx".}
proc getError*(this: BRepOffsetMakeSimpleOffset): BRepOffsetSimpleStatus {.
    noSideEffect, importcpp: "GetError", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc getBuildSolidFlag*(this: BRepOffsetMakeSimpleOffset): bool {.noSideEffect,
    importcpp: "GetBuildSolidFlag", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc setBuildSolidFlag*(this: var BRepOffsetMakeSimpleOffset; theBuildFlag: bool) {.
    importcpp: "SetBuildSolidFlag", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc getOffsetValue*(this: BRepOffsetMakeSimpleOffset): cfloat {.noSideEffect,
    importcpp: "GetOffsetValue", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc setOffsetValue*(this: var BRepOffsetMakeSimpleOffset; theOffsetValue: cfloat) {.
    importcpp: "SetOffsetValue", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc getTolerance*(this: BRepOffsetMakeSimpleOffset): cfloat {.noSideEffect,
    importcpp: "GetTolerance", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc setTolerance*(this: var BRepOffsetMakeSimpleOffset; theValue: cfloat) {.
    importcpp: "SetTolerance", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc isDone*(this: BRepOffsetMakeSimpleOffset): bool {.noSideEffect,
    importcpp: "IsDone", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc getResultShape*(this: BRepOffsetMakeSimpleOffset): TopoDS_Shape {.noSideEffect,
    importcpp: "GetResultShape", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc getSafeOffset*(this: var BRepOffsetMakeSimpleOffset; theExpectedToler: cfloat): cfloat {.
    importcpp: "GetSafeOffset", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc generated*(this: BRepOffsetMakeSimpleOffset; theShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Generated", header: "BRepOffset_MakeSimpleOffset.hxx".}
proc modified*(this: BRepOffsetMakeSimpleOffset; theShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Modified", header: "BRepOffset_MakeSimpleOffset.hxx".}

























