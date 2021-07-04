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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Bnd/Bnd_Box, BOPDS_ListOfPaveBlock,
  ../IntTools/IntTools_Curve, ../NCollection/NCollection_BaseAllocator,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_ListOfInteger

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
proc constructBOPDS_Curve*(theAllocator: handle[NCollection_BaseAllocator]): BOPDS_Curve {.
    constructor, importcpp: "BOPDS_Curve(@)", header: "BOPDS_Curve.hxx".}
proc SetCurve*(this: var BOPDS_Curve; theC: IntTools_Curve) {.importcpp: "SetCurve",
    header: "BOPDS_Curve.hxx".}
proc Curve*(this: BOPDS_Curve): IntTools_Curve {.noSideEffect, importcpp: "Curve",
    header: "BOPDS_Curve.hxx".}
proc SetBox*(this: var BOPDS_Curve; theBox: Bnd_Box) {.importcpp: "SetBox",
    header: "BOPDS_Curve.hxx".}
proc Box*(this: BOPDS_Curve): Bnd_Box {.noSideEffect, importcpp: "Box",
                                    header: "BOPDS_Curve.hxx".}
proc ChangeBox*(this: var BOPDS_Curve): var Bnd_Box {.importcpp: "ChangeBox",
    header: "BOPDS_Curve.hxx".}
proc SetPaveBlocks*(this: var BOPDS_Curve; theLPB: BOPDS_ListOfPaveBlock) {.
    importcpp: "SetPaveBlocks", header: "BOPDS_Curve.hxx".}
proc PaveBlocks*(this: BOPDS_Curve): BOPDS_ListOfPaveBlock {.noSideEffect,
    importcpp: "PaveBlocks", header: "BOPDS_Curve.hxx".}
proc ChangePaveBlocks*(this: var BOPDS_Curve): var BOPDS_ListOfPaveBlock {.
    importcpp: "ChangePaveBlocks", header: "BOPDS_Curve.hxx".}
proc InitPaveBlock1*(this: var BOPDS_Curve) {.importcpp: "InitPaveBlock1",
    header: "BOPDS_Curve.hxx".}
proc ChangePaveBlock1*(this: var BOPDS_Curve): var handle[BOPDS_PaveBlock] {.
    importcpp: "ChangePaveBlock1", header: "BOPDS_Curve.hxx".}
proc TechnoVertices*(this: BOPDS_Curve): TColStd_ListOfInteger {.noSideEffect,
    importcpp: "TechnoVertices", header: "BOPDS_Curve.hxx".}
proc ChangeTechnoVertices*(this: var BOPDS_Curve): var TColStd_ListOfInteger {.
    importcpp: "ChangeTechnoVertices", header: "BOPDS_Curve.hxx".}
proc HasEdge*(this: BOPDS_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "HasEdge", header: "BOPDS_Curve.hxx".}
proc SetTolerance*(this: var BOPDS_Curve; theTol: Standard_Real) {.
    importcpp: "SetTolerance", header: "BOPDS_Curve.hxx".}
proc Tolerance*(this: BOPDS_Curve): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "BOPDS_Curve.hxx".}
proc TangentialTolerance*(this: BOPDS_Curve): Standard_Real {.noSideEffect,
    importcpp: "TangentialTolerance", header: "BOPDS_Curve.hxx".}