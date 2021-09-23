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
  ../Standard/Standard, ../Standard/Standard_Type, ../Draw/Draw_Drawable3D,
  ../Standard/Standard_OStream, ../Draw/Draw_Interpretor

discard "forward decl of HLRTopoBRep_OutLiner"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of HLRTest_OutLiner"
discard "forward decl of HLRTest_OutLiner"
type
  Handle_HLRTest_OutLiner* = handle[HLRTest_OutLiner]
  HLRTest_OutLiner* {.importcpp: "HLRTest_OutLiner",
                     header: "HLRTest_OutLiner.hxx", bycopy.} = object of Draw_Drawable3D


proc constructHLRTest_OutLiner*(S: TopoDS_Shape): HLRTest_OutLiner {.constructor,
    importcpp: "HLRTest_OutLiner(@)", header: "HLRTest_OutLiner.hxx".}
proc OutLiner*(this: HLRTest_OutLiner): handle[HLRTopoBRep_OutLiner] {.noSideEffect,
    importcpp: "OutLiner", header: "HLRTest_OutLiner.hxx".}
proc DrawOn*(this: HLRTest_OutLiner; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "HLRTest_OutLiner.hxx".}
proc Copy*(this: HLRTest_OutLiner): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "HLRTest_OutLiner.hxx".}
proc Dump*(this: HLRTest_OutLiner; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "HLRTest_OutLiner.hxx".}
proc Whatis*(this: HLRTest_OutLiner; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "HLRTest_OutLiner.hxx".}
type
  HLRTest_OutLinerbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "HLRTest_OutLiner::get_type_name(@)",
                              header: "HLRTest_OutLiner.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRTest_OutLiner::get_type_descriptor(@)",
    header: "HLRTest_OutLiner.hxx".}
proc DynamicType*(this: HLRTest_OutLiner): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRTest_OutLiner.hxx".}