##  Created on: 1992-02-18
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of HLRAlgo_EdgeStatus"
discard "forward decl of HLRAlgo_PolyAlgo"
discard "forward decl of HLRAlgo_PolyAlgo"
type
  HandleHLRAlgoPolyAlgo* = Handle[HLRAlgoPolyAlgo]

## ! to remove Hidden lines on Triangulations.

type
  HLRAlgoPolyAlgo* {.importcpp: "HLRAlgo_PolyAlgo", header: "HLRAlgo_PolyAlgo.hxx",
                    bycopy.} = object of StandardTransient


proc constructHLRAlgoPolyAlgo*(): HLRAlgoPolyAlgo {.constructor,
    importcpp: "HLRAlgo_PolyAlgo(@)", header: "HLRAlgo_PolyAlgo.hxx".}
proc init*(this: var HLRAlgoPolyAlgo; hShell: Handle[TColStdHArray1OfTransient]) {.
    importcpp: "Init", header: "HLRAlgo_PolyAlgo.hxx".}
proc polyShell*(this: HLRAlgoPolyAlgo): var TColStdArray1OfTransient {.noSideEffect,
    importcpp: "PolyShell", header: "HLRAlgo_PolyAlgo.hxx".}
proc clear*(this: var HLRAlgoPolyAlgo) {.importcpp: "Clear",
                                     header: "HLRAlgo_PolyAlgo.hxx".}
proc update*(this: var HLRAlgoPolyAlgo) {.importcpp: "Update",
                                      header: "HLRAlgo_PolyAlgo.hxx".}
proc initHide*(this: var HLRAlgoPolyAlgo) {.importcpp: "InitHide",
                                        header: "HLRAlgo_PolyAlgo.hxx".}
proc moreHide*(this: HLRAlgoPolyAlgo): StandardBoolean {.noSideEffect,
    importcpp: "MoreHide", header: "HLRAlgo_PolyAlgo.hxx".}
proc nextHide*(this: var HLRAlgoPolyAlgo) {.importcpp: "NextHide",
                                        header: "HLRAlgo_PolyAlgo.hxx".}
proc hide*(this: var HLRAlgoPolyAlgo; status: var HLRAlgoEdgeStatus;
          index: var StandardInteger; reg1: var StandardBoolean;
          regn: var StandardBoolean; outl: var StandardBoolean;
          intl: var StandardBoolean): var PointsT {.importcpp: "Hide",
    header: "HLRAlgo_PolyAlgo.hxx".}
proc initShow*(this: var HLRAlgoPolyAlgo) {.importcpp: "InitShow",
                                        header: "HLRAlgo_PolyAlgo.hxx".}
proc moreShow*(this: HLRAlgoPolyAlgo): StandardBoolean {.noSideEffect,
    importcpp: "MoreShow", header: "HLRAlgo_PolyAlgo.hxx".}
proc nextShow*(this: var HLRAlgoPolyAlgo) {.importcpp: "NextShow",
                                        header: "HLRAlgo_PolyAlgo.hxx".}
proc show*(this: var HLRAlgoPolyAlgo; index: var StandardInteger;
          reg1: var StandardBoolean; regn: var StandardBoolean;
          outl: var StandardBoolean; intl: var StandardBoolean): var PointsT {.
    importcpp: "Show", header: "HLRAlgo_PolyAlgo.hxx".}
type
  HLRAlgoPolyAlgobaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRAlgo_PolyAlgo::get_type_name(@)",
                            header: "HLRAlgo_PolyAlgo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRAlgo_PolyAlgo::get_type_descriptor(@)",
    header: "HLRAlgo_PolyAlgo.hxx".}
proc dynamicType*(this: HLRAlgoPolyAlgo): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRAlgo_PolyAlgo.hxx".}

