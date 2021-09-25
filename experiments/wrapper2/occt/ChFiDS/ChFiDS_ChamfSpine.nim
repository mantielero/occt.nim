##  Created on: 1995-04-24
##  Created by: Modelistation
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

discard "forward decl of ChFiDS_ChamfSpine"
discard "forward decl of ChFiDS_ChamfSpine"
type
  HandleChFiDS_ChamfSpine* = Handle[ChFiDS_ChamfSpine]

## ! Provides  data specific to chamfers
## ! distances on  each  of faces.

type
  ChFiDS_ChamfSpine* {.importcpp: "ChFiDS_ChamfSpine",
                      header: "ChFiDS_ChamfSpine.hxx", bycopy.} = object of ChFiDS_Spine
    ## Standard_Boolean dison1;


proc constructChFiDS_ChamfSpine*(): ChFiDS_ChamfSpine {.constructor,
    importcpp: "ChFiDS_ChamfSpine(@)", header: "ChFiDS_ChamfSpine.hxx".}
proc constructChFiDS_ChamfSpine*(tol: float): ChFiDS_ChamfSpine {.constructor,
    importcpp: "ChFiDS_ChamfSpine(@)", header: "ChFiDS_ChamfSpine.hxx".}
proc setDist*(this: var ChFiDS_ChamfSpine; dis: float) {.importcpp: "SetDist",
    header: "ChFiDS_ChamfSpine.hxx".}
proc getDist*(this: ChFiDS_ChamfSpine; dis: var float) {.noSideEffect,
    importcpp: "GetDist", header: "ChFiDS_ChamfSpine.hxx".}
proc setDists*(this: var ChFiDS_ChamfSpine; dis1: float; dis2: float) {.
    importcpp: "SetDists", header: "ChFiDS_ChamfSpine.hxx".}
proc dists*(this: ChFiDS_ChamfSpine; dis1: var float; dis2: var float) {.noSideEffect,
    importcpp: "Dists", header: "ChFiDS_ChamfSpine.hxx".}
proc getDistAngle*(this: ChFiDS_ChamfSpine; dis: var float; angle: var float) {.
    noSideEffect, importcpp: "GetDistAngle", header: "ChFiDS_ChamfSpine.hxx".}
proc setDistAngle*(this: var ChFiDS_ChamfSpine; dis: float; angle: float) {.
    importcpp: "SetDistAngle", header: "ChFiDS_ChamfSpine.hxx".}
proc setMode*(this: var ChFiDS_ChamfSpine; theMode: ChFiDS_ChamfMode) {.
    importcpp: "SetMode", header: "ChFiDS_ChamfSpine.hxx".}
proc isChamfer*(this: ChFiDS_ChamfSpine): ChFiDS_ChamfMethod {.noSideEffect,
    importcpp: "IsChamfer", header: "ChFiDS_ChamfSpine.hxx".}
type
  ChFiDS_ChamfSpinebaseType* = ChFiDS_Spine

proc getTypeName*(): cstring {.importcpp: "ChFiDS_ChamfSpine::get_type_name(@)",
                            header: "ChFiDS_ChamfSpine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ChFiDS_ChamfSpine::get_type_descriptor(@)",
    header: "ChFiDS_ChamfSpine.hxx".}
proc dynamicType*(this: ChFiDS_ChamfSpine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_ChamfSpine.hxx".}
