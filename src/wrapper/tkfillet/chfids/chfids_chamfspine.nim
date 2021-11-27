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
type
  HandleChFiDS_ChamfSpine* = Handle[ChFiDS_ChamfSpine]

## ! Provides  data specific to chamfers
## ! distances on  each  of faces.

type
  ChFiDS_ChamfSpine* {.importcpp: "ChFiDS_ChamfSpine",
                      header: "ChFiDS_ChamfSpine.hxx", bycopy.} = object of ChFiDS_Spine
    ## Standard_Boolean dison1;


proc newChFiDS_ChamfSpine*(): ChFiDS_ChamfSpine {.cdecl, constructor,
    importcpp: "ChFiDS_ChamfSpine(@)", header: "ChFiDS_ChamfSpine.hxx".}
proc newChFiDS_ChamfSpine*(tol: cfloat): ChFiDS_ChamfSpine {.cdecl, constructor,
    importcpp: "ChFiDS_ChamfSpine(@)", header: "ChFiDS_ChamfSpine.hxx".}
proc setDist*(this: var ChFiDS_ChamfSpine; dis: cfloat) {.cdecl, importcpp: "SetDist",
    header: "ChFiDS_ChamfSpine.hxx".}
proc getDist*(this: ChFiDS_ChamfSpine; dis: var cfloat) {.noSideEffect, cdecl,
    importcpp: "GetDist", header: "ChFiDS_ChamfSpine.hxx".}
proc setDists*(this: var ChFiDS_ChamfSpine; dis1: cfloat; dis2: cfloat) {.cdecl,
    importcpp: "SetDists", header: "ChFiDS_ChamfSpine.hxx".}
proc dists*(this: ChFiDS_ChamfSpine; dis1: var cfloat; dis2: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Dists", header: "ChFiDS_ChamfSpine.hxx".}
proc getDistAngle*(this: ChFiDS_ChamfSpine; dis: var cfloat; angle: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDistAngle", header: "ChFiDS_ChamfSpine.hxx".}
proc setDistAngle*(this: var ChFiDS_ChamfSpine; dis: cfloat; angle: cfloat) {.cdecl,
    importcpp: "SetDistAngle", header: "ChFiDS_ChamfSpine.hxx".}
proc setMode*(this: var ChFiDS_ChamfSpine; theMode: ChFiDS_ChamfMode) {.cdecl,
    importcpp: "SetMode", header: "ChFiDS_ChamfSpine.hxx".}
proc isChamfer*(this: ChFiDS_ChamfSpine): ChFiDS_ChamfMethod {.noSideEffect, cdecl,
    importcpp: "IsChamfer", header: "ChFiDS_ChamfSpine.hxx".}