##  Created on: 1991-12-06
##  Created by: Remi LEQUETTE
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../Draw/Draw_Interpretor

discard "forward decl of HLRAlgo_Projector"
discard "forward decl of TopoDS_Shape"
discard "forward decl of HLRTopoBRep_OutLiner"
discard "forward decl of HLRTest_ShapeData"
discard "forward decl of HLRTest_DrawableEdgeTool"
discard "forward decl of HLRTest_DrawablePolyEdgeTool"
discard "forward decl of HLRTest_Projector"
discard "forward decl of HLRTest_OutLiner"
type
  HLRTest* {.importcpp: "HLRTest", header: "HLRTest.hxx", bycopy.} = object ## ! Draw Variable Outliner to test
                                                                    ## ! Set a Projector Variable


proc Set*(Name: Standard_CString; P: HLRAlgo_Projector) {.
    importcpp: "HLRTest::Set(@)", header: "HLRTest.hxx".}
proc GetProjector*(Name: var Standard_CString; P: var HLRAlgo_Projector): Standard_Boolean {.
    importcpp: "HLRTest::GetProjector(@)", header: "HLRTest.hxx".}
proc Set*(Name: Standard_CString; S: TopoDS_Shape) {.importcpp: "HLRTest::Set(@)",
    header: "HLRTest.hxx".}
proc GetOutLiner*(Name: var Standard_CString): handle[HLRTopoBRep_OutLiner] {.
    importcpp: "HLRTest::GetOutLiner(@)", header: "HLRTest.hxx".}
proc Commands*(I: var Draw_Interpretor) {.importcpp: "HLRTest::Commands(@)",
                                      header: "HLRTest.hxx".}