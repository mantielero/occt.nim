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

discard "forward decl of HLRTopoBRep_OutLiner"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of HLRTest_OutLiner"
discard "forward decl of HLRTest_OutLiner"
type
  HandleC1C1* = Handle[HLRTestOutLiner]
  HLRTestOutLiner* {.importcpp: "HLRTest_OutLiner", header: "HLRTest_OutLiner.hxx",
                    bycopy.} = object of DrawDrawable3D


proc constructHLRTestOutLiner*(s: TopoDS_Shape): HLRTestOutLiner {.constructor,
    importcpp: "HLRTest_OutLiner(@)", header: "HLRTest_OutLiner.hxx".}
proc outLiner*(this: HLRTestOutLiner): Handle[HLRTopoBRepOutLiner] {.noSideEffect,
    importcpp: "OutLiner", header: "HLRTest_OutLiner.hxx".}
proc drawOn*(this: HLRTestOutLiner; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "HLRTest_OutLiner.hxx".}
proc copy*(this: HLRTestOutLiner): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "HLRTest_OutLiner.hxx".}
proc dump*(this: HLRTestOutLiner; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "HLRTest_OutLiner.hxx".}
proc whatis*(this: HLRTestOutLiner; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "HLRTest_OutLiner.hxx".}
type
  HLRTestOutLinerbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "HLRTest_OutLiner::get_type_name(@)",
                            header: "HLRTest_OutLiner.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRTest_OutLiner::get_type_descriptor(@)",
    header: "HLRTest_OutLiner.hxx".}
proc dynamicType*(this: HLRTestOutLiner): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRTest_OutLiner.hxx".}

























