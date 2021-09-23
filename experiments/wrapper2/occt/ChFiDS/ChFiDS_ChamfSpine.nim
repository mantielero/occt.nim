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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ChFiDS_ChamfMethod, ChFiDS_ChamfMode, ChFiDS_Spine

discard "forward decl of ChFiDS_ChamfSpine"
discard "forward decl of ChFiDS_ChamfSpine"
type
  Handle_ChFiDS_ChamfSpine* = handle[ChFiDS_ChamfSpine]

## ! Provides  data specific to chamfers
## ! distances on  each  of faces.

type
  ChFiDS_ChamfSpine* {.importcpp: "ChFiDS_ChamfSpine",
                      header: "ChFiDS_ChamfSpine.hxx", bycopy.} = object of ChFiDS_Spine
    ## Standard_Boolean dison1;


proc constructChFiDS_ChamfSpine*(): ChFiDS_ChamfSpine {.constructor,
    importcpp: "ChFiDS_ChamfSpine(@)", header: "ChFiDS_ChamfSpine.hxx".}
proc constructChFiDS_ChamfSpine*(Tol: Standard_Real): ChFiDS_ChamfSpine {.
    constructor, importcpp: "ChFiDS_ChamfSpine(@)", header: "ChFiDS_ChamfSpine.hxx".}
proc SetDist*(this: var ChFiDS_ChamfSpine; Dis: Standard_Real) {.importcpp: "SetDist",
    header: "ChFiDS_ChamfSpine.hxx".}
proc GetDist*(this: ChFiDS_ChamfSpine; Dis: var Standard_Real) {.noSideEffect,
    importcpp: "GetDist", header: "ChFiDS_ChamfSpine.hxx".}
proc SetDists*(this: var ChFiDS_ChamfSpine; Dis1: Standard_Real; Dis2: Standard_Real) {.
    importcpp: "SetDists", header: "ChFiDS_ChamfSpine.hxx".}
proc Dists*(this: ChFiDS_ChamfSpine; Dis1: var Standard_Real; Dis2: var Standard_Real) {.
    noSideEffect, importcpp: "Dists", header: "ChFiDS_ChamfSpine.hxx".}
proc GetDistAngle*(this: ChFiDS_ChamfSpine; Dis: var Standard_Real;
                  Angle: var Standard_Real) {.noSideEffect,
    importcpp: "GetDistAngle", header: "ChFiDS_ChamfSpine.hxx".}
proc SetDistAngle*(this: var ChFiDS_ChamfSpine; Dis: Standard_Real;
                  Angle: Standard_Real) {.importcpp: "SetDistAngle",
                                        header: "ChFiDS_ChamfSpine.hxx".}
proc SetMode*(this: var ChFiDS_ChamfSpine; theMode: ChFiDS_ChamfMode) {.
    importcpp: "SetMode", header: "ChFiDS_ChamfSpine.hxx".}
proc IsChamfer*(this: ChFiDS_ChamfSpine): ChFiDS_ChamfMethod {.noSideEffect,
    importcpp: "IsChamfer", header: "ChFiDS_ChamfSpine.hxx".}
type
  ChFiDS_ChamfSpinebase_type* = ChFiDS_Spine

proc get_type_name*(): cstring {.importcpp: "ChFiDS_ChamfSpine::get_type_name(@)",
                              header: "ChFiDS_ChamfSpine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ChFiDS_ChamfSpine::get_type_descriptor(@)",
    header: "ChFiDS_ChamfSpine.hxx".}
proc DynamicType*(this: ChFiDS_ChamfSpine): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_ChamfSpine.hxx".}