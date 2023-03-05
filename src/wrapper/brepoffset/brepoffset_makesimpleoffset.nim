import brepoffset_types
import ../tkbrep/topods/topods_types
import ../tkernel/tcollection/tcollection_types

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
  BRepOffset_MakeSimpleOffset* {.importcpp: "BRepOffset_MakeSimpleOffset",
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


proc newBRepOffset_MakeSimpleOffset*(): BRepOffset_MakeSimpleOffset {.cdecl,
    constructor, importcpp: "BRepOffset_MakeSimpleOffset(@)".}
proc newBRepOffset_MakeSimpleOffset*(theInputShape: TopoDS_Shape;
                                    theOffsetValue: cfloat): BRepOffset_MakeSimpleOffset {.
    cdecl, constructor, importcpp: "BRepOffset_MakeSimpleOffset(@)",
    .}
proc Initialize*(this: var BRepOffset_MakeSimpleOffset; theInputShape: TopoDS_Shape;
                theOffsetValue: cfloat) {.cdecl, importcpp: "Initialize",
                                        .}
proc Perform*(this: var BRepOffset_MakeSimpleOffset) {.cdecl, importcpp: "Perform",
    .}
proc GetErrorMessage*(this: BRepOffset_MakeSimpleOffset): TCollection_AsciiString {.
    noSideEffect, cdecl, importcpp: "GetErrorMessage".}
proc GetError*(this: BRepOffset_MakeSimpleOffset): BRepOffsetSimple_Status {.
    noSideEffect, cdecl, importcpp: "GetError".}
proc GetBuildSolidFlag*(this: BRepOffset_MakeSimpleOffset): bool {.noSideEffect,
    cdecl, importcpp: "GetBuildSolidFlag".}
proc SetBuildSolidFlag*(this: var BRepOffset_MakeSimpleOffset; theBuildFlag: bool) {.
    cdecl, importcpp: "SetBuildSolidFlag".}
proc GetOffsetValue*(this: BRepOffset_MakeSimpleOffset): cfloat {.noSideEffect,
    cdecl, importcpp: "GetOffsetValue".}
proc SetOffsetValue*(this: var BRepOffset_MakeSimpleOffset; theOffsetValue: cfloat) {.
    cdecl, importcpp: "SetOffsetValue".}
proc GetTolerance*(this: BRepOffset_MakeSimpleOffset): cfloat {.noSideEffect, cdecl,
    importcpp: "GetTolerance".}
proc SetTolerance*(this: var BRepOffset_MakeSimpleOffset; theValue: cfloat) {.cdecl,
    importcpp: "SetTolerance".}
proc IsDone*(this: BRepOffset_MakeSimpleOffset): bool {.noSideEffect, cdecl,
    importcpp: "IsDone".}
proc GetResultShape*(this: BRepOffset_MakeSimpleOffset): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "GetResultShape".}
proc GetSafeOffset*(this: var BRepOffset_MakeSimpleOffset; theExpectedToler: cfloat): cfloat {.
    cdecl, importcpp: "GetSafeOffset".}
proc Generated*(this: BRepOffset_MakeSimpleOffset; theShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Generated".}
proc Modified*(this: BRepOffset_MakeSimpleOffset; theShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Modified".}