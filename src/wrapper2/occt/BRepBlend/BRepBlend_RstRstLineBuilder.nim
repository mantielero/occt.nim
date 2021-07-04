##  Created on: 1997-01-23
##  Created by: Laurent BOURESCHE
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../math/math_Vector,
  ../Standard/Standard_Real, ../Blend/Blend_Point, ../Blend/Blend_DecrochStatus,
  ../Blend/Blend_Status, ../TopAbs/TopAbs_State

discard "forward decl of BRepBlend_Line"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Blend_RstRstFunction"
discard "forward decl of Blend_SurfCurvFuncInv"
discard "forward decl of Blend_CurvPointFuncInv"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of IntSurf_Transition"
discard "forward decl of BRepBlend_Extremity"
discard "forward decl of Blend_Point"
type
  BRepBlend_RstRstLineBuilder* {.importcpp: "BRepBlend_RstRstLineBuilder",
                                header: "BRepBlend_RstRstLineBuilder.hxx", bycopy.} = object


proc constructBRepBlend_RstRstLineBuilder*(Surf1: handle[Adaptor3d_HSurface];
    Rst1: handle[Adaptor2d_HCurve2d]; Domain1: handle[Adaptor3d_TopolTool];
    Surf2: handle[Adaptor3d_HSurface]; Rst2: handle[Adaptor2d_HCurve2d];
    Domain2: handle[Adaptor3d_TopolTool]): BRepBlend_RstRstLineBuilder {.
    constructor, importcpp: "BRepBlend_RstRstLineBuilder(@)",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc Perform*(this: var BRepBlend_RstRstLineBuilder; Func: var Blend_RstRstFunction;
             Finv1: var Blend_SurfCurvFuncInv; FinvP1: var Blend_CurvPointFuncInv;
             Finv2: var Blend_SurfCurvFuncInv; FinvP2: var Blend_CurvPointFuncInv;
             Pdep: Standard_Real; Pmax: Standard_Real; MaxStep: Standard_Real;
             TolGuide: Standard_Real; Soldep: math_Vector; Tolesp: Standard_Real;
             Fleche: Standard_Real; Appro: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "BRepBlend_RstRstLineBuilder.hxx".}
proc PerformFirstSection*(this: var BRepBlend_RstRstLineBuilder;
                         Func: var Blend_RstRstFunction;
                         Finv1: var Blend_SurfCurvFuncInv;
                         FinvP1: var Blend_CurvPointFuncInv;
                         Finv2: var Blend_SurfCurvFuncInv;
                         FinvP2: var Blend_CurvPointFuncInv; Pdep: Standard_Real;
                         Pmax: Standard_Real; Soldep: math_Vector;
                         Tolesp: Standard_Real; TolGuide: Standard_Real;
                         RecRst1: Standard_Boolean; RecP1: Standard_Boolean;
                         RecRst2: Standard_Boolean; RecP2: Standard_Boolean;
                         Psol: var Standard_Real; ParSol: var math_Vector): Standard_Boolean {.
    importcpp: "PerformFirstSection", header: "BRepBlend_RstRstLineBuilder.hxx".}
proc Complete*(this: var BRepBlend_RstRstLineBuilder;
              Func: var Blend_RstRstFunction; Finv1: var Blend_SurfCurvFuncInv;
              FinvP1: var Blend_CurvPointFuncInv; Finv2: var Blend_SurfCurvFuncInv;
              FinvP2: var Blend_CurvPointFuncInv; Pmin: Standard_Real): Standard_Boolean {.
    importcpp: "Complete", header: "BRepBlend_RstRstLineBuilder.hxx".}
proc IsDone*(this: BRepBlend_RstRstLineBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBlend_RstRstLineBuilder.hxx".}
proc Line*(this: BRepBlend_RstRstLineBuilder): handle[BRepBlend_Line] {.
    noSideEffect, importcpp: "Line", header: "BRepBlend_RstRstLineBuilder.hxx".}
proc Decroch1Start*(this: BRepBlend_RstRstLineBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "Decroch1Start",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc Decroch1End*(this: BRepBlend_RstRstLineBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "Decroch1End",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc Decroch2Start*(this: BRepBlend_RstRstLineBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "Decroch2Start",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc Decroch2End*(this: BRepBlend_RstRstLineBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "Decroch2End",
    header: "BRepBlend_RstRstLineBuilder.hxx".}