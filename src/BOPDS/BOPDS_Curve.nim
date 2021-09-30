##  Created by: Peter KURNEV
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

discard "forward decl of IntTools_Curve"
discard "forward decl of Bnd_Box"
discard "forward decl of BOPDS_PaveBlock"
type
  BOPDS_Curve* {.importcpp: "BOPDS_Curve", header: "BOPDS_Curve.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## contructor


proc constructBOPDS_Curve*(): BOPDS_Curve {.constructor,
    importcpp: "BOPDS_Curve(@)", header: "BOPDS_Curve.hxx".}
proc destroyBOPDS_Curve*(this: var BOPDS_Curve) {.importcpp: "#.~BOPDS_Curve()",
    header: "BOPDS_Curve.hxx".}
proc constructBOPDS_Curve*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_Curve {.
    constructor, importcpp: "BOPDS_Curve(@)", header: "BOPDS_Curve.hxx".}
proc setCurve*(this: var BOPDS_Curve; theC: IntToolsCurve) {.importcpp: "SetCurve",
    header: "BOPDS_Curve.hxx".}
proc curve*(this: BOPDS_Curve): IntToolsCurve {.noSideEffect, importcpp: "Curve",
    header: "BOPDS_Curve.hxx".}
proc setBox*(this: var BOPDS_Curve; theBox: BndBox) {.importcpp: "SetBox",
    header: "BOPDS_Curve.hxx".}
proc box*(this: BOPDS_Curve): BndBox {.noSideEffect, importcpp: "Box",
                                   header: "BOPDS_Curve.hxx".}
proc changeBox*(this: var BOPDS_Curve): var BndBox {.importcpp: "ChangeBox",
    header: "BOPDS_Curve.hxx".}
proc setPaveBlocks*(this: var BOPDS_Curve; theLPB: BOPDS_ListOfPaveBlock) {.
    importcpp: "SetPaveBlocks", header: "BOPDS_Curve.hxx".}
proc paveBlocks*(this: BOPDS_Curve): BOPDS_ListOfPaveBlock {.noSideEffect,
    importcpp: "PaveBlocks", header: "BOPDS_Curve.hxx".}
proc changePaveBlocks*(this: var BOPDS_Curve): var BOPDS_ListOfPaveBlock {.
    importcpp: "ChangePaveBlocks", header: "BOPDS_Curve.hxx".}
proc initPaveBlock1*(this: var BOPDS_Curve) {.importcpp: "InitPaveBlock1",
    header: "BOPDS_Curve.hxx".}
proc changePaveBlock1*(this: var BOPDS_Curve): var Handle[BOPDS_PaveBlock] {.
    importcpp: "ChangePaveBlock1", header: "BOPDS_Curve.hxx".}
proc technoVertices*(this: BOPDS_Curve): TColStdListOfInteger {.noSideEffect,
    importcpp: "TechnoVertices", header: "BOPDS_Curve.hxx".}
proc changeTechnoVertices*(this: var BOPDS_Curve): var TColStdListOfInteger {.
    importcpp: "ChangeTechnoVertices", header: "BOPDS_Curve.hxx".}
proc hasEdge*(this: BOPDS_Curve): bool {.noSideEffect, importcpp: "HasEdge",
                                     header: "BOPDS_Curve.hxx".}
proc setTolerance*(this: var BOPDS_Curve; theTol: cfloat) {.importcpp: "SetTolerance",
    header: "BOPDS_Curve.hxx".}
proc tolerance*(this: BOPDS_Curve): cfloat {.noSideEffect, importcpp: "Tolerance",
    header: "BOPDS_Curve.hxx".}
proc tangentialTolerance*(this: BOPDS_Curve): cfloat {.noSideEffect,
    importcpp: "TangentialTolerance", header: "BOPDS_Curve.hxx".}

























