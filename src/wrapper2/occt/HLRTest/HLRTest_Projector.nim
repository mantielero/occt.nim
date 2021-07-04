##  Created on: 1995-04-05
##  Created by: Christophe MARION
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../HLRAlgo/HLRAlgo_Projector,
  ../Draw/Draw_Drawable3D, ../Standard/Standard_OStream, ../Draw/Draw_Interpretor

discard "forward decl of HLRAlgo_Projector"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of HLRTest_Projector"
discard "forward decl of HLRTest_Projector"
type
  Handle_HLRTest_Projector* = handle[HLRTest_Projector]

## ! Draw Variable Projector to test.

type
  HLRTest_Projector* {.importcpp: "HLRTest_Projector",
                      header: "HLRTest_Projector.hxx", bycopy.} = object of Draw_Drawable3D


proc constructHLRTest_Projector*(P: HLRAlgo_Projector): HLRTest_Projector {.
    constructor, importcpp: "HLRTest_Projector(@)", header: "HLRTest_Projector.hxx".}
proc Projector*(this: HLRTest_Projector): HLRAlgo_Projector {.noSideEffect,
    importcpp: "Projector", header: "HLRTest_Projector.hxx".}
proc DrawOn*(this: HLRTest_Projector; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "HLRTest_Projector.hxx".}
proc Copy*(this: HLRTest_Projector): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "HLRTest_Projector.hxx".}
proc Dump*(this: HLRTest_Projector; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "HLRTest_Projector.hxx".}
proc Whatis*(this: HLRTest_Projector; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "HLRTest_Projector.hxx".}
type
  HLRTest_Projectorbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "HLRTest_Projector::get_type_name(@)",
                              header: "HLRTest_Projector.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRTest_Projector::get_type_descriptor(@)",
    header: "HLRTest_Projector.hxx".}
proc DynamicType*(this: HLRTest_Projector): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRTest_Projector.hxx".}