##  Created on: 1997-04-17
##  Created by: Christophe MARION
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../HLRAlgo/HLRAlgo_EdgesBlock, ../Standard/Standard,
  ../Standard/Standard_DefineAlloc, ../Standard/Standard_Handle,
  ../Standard/Standard_Integer

discard "forward decl of HLRTopoBRep_OutLiner"
discard "forward decl of Standard_Transient"
type
  HLRBRep_ShapeBounds* {.importcpp: "HLRBRep_ShapeBounds",
                        header: "HLRBRep_ShapeBounds.hxx", bycopy.} = object


proc constructHLRBRep_ShapeBounds*(): HLRBRep_ShapeBounds {.constructor,
    importcpp: "HLRBRep_ShapeBounds(@)", header: "HLRBRep_ShapeBounds.hxx".}
proc constructHLRBRep_ShapeBounds*(S: handle[HLRTopoBRep_OutLiner];
                                  SData: handle[Standard_Transient];
                                  nbIso: Standard_Integer; V1: Standard_Integer;
                                  V2: Standard_Integer; E1: Standard_Integer;
                                  E2: Standard_Integer; F1: Standard_Integer;
                                  F2: Standard_Integer): HLRBRep_ShapeBounds {.
    constructor, importcpp: "HLRBRep_ShapeBounds(@)",
    header: "HLRBRep_ShapeBounds.hxx".}
proc constructHLRBRep_ShapeBounds*(S: handle[HLRTopoBRep_OutLiner];
                                  nbIso: Standard_Integer; V1: Standard_Integer;
                                  V2: Standard_Integer; E1: Standard_Integer;
                                  E2: Standard_Integer; F1: Standard_Integer;
                                  F2: Standard_Integer): HLRBRep_ShapeBounds {.
    constructor, importcpp: "HLRBRep_ShapeBounds(@)",
    header: "HLRBRep_ShapeBounds.hxx".}
proc Translate*(this: var HLRBRep_ShapeBounds; NV: Standard_Integer;
               NE: Standard_Integer; NF: Standard_Integer) {.importcpp: "Translate",
    header: "HLRBRep_ShapeBounds.hxx".}
proc Shape*(this: var HLRBRep_ShapeBounds; S: handle[HLRTopoBRep_OutLiner]) {.
    importcpp: "Shape", header: "HLRBRep_ShapeBounds.hxx".}
proc Shape*(this: HLRBRep_ShapeBounds): handle[HLRTopoBRep_OutLiner] {.noSideEffect,
    importcpp: "Shape", header: "HLRBRep_ShapeBounds.hxx".}
proc ShapeData*(this: var HLRBRep_ShapeBounds; SD: handle[Standard_Transient]) {.
    importcpp: "ShapeData", header: "HLRBRep_ShapeBounds.hxx".}
proc ShapeData*(this: HLRBRep_ShapeBounds): handle[Standard_Transient] {.
    noSideEffect, importcpp: "ShapeData", header: "HLRBRep_ShapeBounds.hxx".}
proc NbOfIso*(this: var HLRBRep_ShapeBounds; nbIso: Standard_Integer) {.
    importcpp: "NbOfIso", header: "HLRBRep_ShapeBounds.hxx".}
proc NbOfIso*(this: HLRBRep_ShapeBounds): Standard_Integer {.noSideEffect,
    importcpp: "NbOfIso", header: "HLRBRep_ShapeBounds.hxx".}
proc Sizes*(this: HLRBRep_ShapeBounds; NV: var Standard_Integer;
           NE: var Standard_Integer; NF: var Standard_Integer) {.noSideEffect,
    importcpp: "Sizes", header: "HLRBRep_ShapeBounds.hxx".}
proc Bounds*(this: HLRBRep_ShapeBounds; V1: var Standard_Integer;
            V2: var Standard_Integer; E1: var Standard_Integer;
            E2: var Standard_Integer; F1: var Standard_Integer;
            F2: var Standard_Integer) {.noSideEffect, importcpp: "Bounds",
                                     header: "HLRBRep_ShapeBounds.hxx".}
proc UpdateMinMax*(this: var HLRBRep_ShapeBounds; theTotMinMax: MinMaxIndices) {.
    importcpp: "UpdateMinMax", header: "HLRBRep_ShapeBounds.hxx".}
proc MinMax*(this: var HLRBRep_ShapeBounds): var MinMaxIndices {.importcpp: "MinMax",
    header: "HLRBRep_ShapeBounds.hxx".}