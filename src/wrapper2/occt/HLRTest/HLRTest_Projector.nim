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

discard "forward decl of HLRAlgo_Projector"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of HLRTest_Projector"
discard "forward decl of HLRTest_Projector"
type
  HandleHLRTestProjector* = Handle[HLRTestProjector]

## ! Draw Variable Projector to test.

type
  HLRTestProjector* {.importcpp: "HLRTest_Projector",
                     header: "HLRTest_Projector.hxx", bycopy.} = object of DrawDrawable3D


proc constructHLRTestProjector*(p: HLRAlgoProjector): HLRTestProjector {.
    constructor, importcpp: "HLRTest_Projector(@)", header: "HLRTest_Projector.hxx".}
proc projector*(this: HLRTestProjector): HLRAlgoProjector {.noSideEffect,
    importcpp: "Projector", header: "HLRTest_Projector.hxx".}
proc drawOn*(this: HLRTestProjector; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "HLRTest_Projector.hxx".}
proc copy*(this: HLRTestProjector): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "HLRTest_Projector.hxx".}
proc dump*(this: HLRTestProjector; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "HLRTest_Projector.hxx".}
proc whatis*(this: HLRTestProjector; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "HLRTest_Projector.hxx".}
type
  HLRTestProjectorbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "HLRTest_Projector::get_type_name(@)",
                            header: "HLRTest_Projector.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRTest_Projector::get_type_descriptor(@)",
    header: "HLRTest_Projector.hxx".}
proc dynamicType*(this: HLRTestProjector): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRTest_Projector.hxx".}

