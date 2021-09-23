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
  ../Standard/Standard_Real, ../Blend/Blend_Point, ../Standard/Standard_Integer,
  ../Blend/Blend_Status, ../TopAbs/TopAbs_State

discard "forward decl of BRepBlend_Line"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Blend_SurfRstFunction"
discard "forward decl of Blend_FuncInv"
discard "forward decl of Blend_SurfPointFuncInv"
discard "forward decl of Blend_SurfCurvFuncInv"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of IntSurf_Transition"
discard "forward decl of BRepBlend_Extremity"
discard "forward decl of Blend_Point"
type
  BRepBlend_SurfRstLineBuilder* {.importcpp: "BRepBlend_SurfRstLineBuilder",
                                 header: "BRepBlend_SurfRstLineBuilder.hxx",
                                 bycopy.} = object


proc constructBRepBlend_SurfRstLineBuilder*(Surf1: handle[Adaptor3d_HSurface];
    Domain1: handle[Adaptor3d_TopolTool]; Surf2: handle[Adaptor3d_HSurface];
    Rst: handle[Adaptor2d_HCurve2d]; Domain2: handle[Adaptor3d_TopolTool]): BRepBlend_SurfRstLineBuilder {.
    constructor, importcpp: "BRepBlend_SurfRstLineBuilder(@)",
    header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc Perform*(this: var BRepBlend_SurfRstLineBuilder;
             Func: var Blend_SurfRstFunction; Finv: var Blend_FuncInv;
             FinvP: var Blend_SurfPointFuncInv; FinvC: var Blend_SurfCurvFuncInv;
             Pdep: Standard_Real; Pmax: Standard_Real; MaxStep: Standard_Real;
             TolGuide: Standard_Real; Soldep: math_Vector; Tolesp: Standard_Real;
             Fleche: Standard_Real; Appro: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc PerformFirstSection*(this: var BRepBlend_SurfRstLineBuilder;
                         Func: var Blend_SurfRstFunction; Finv: var Blend_FuncInv;
                         FinvP: var Blend_SurfPointFuncInv;
                         FinvC: var Blend_SurfCurvFuncInv; Pdep: Standard_Real;
                         Pmax: Standard_Real; Soldep: math_Vector;
                         Tolesp: Standard_Real; TolGuide: Standard_Real;
                         RecRst: Standard_Boolean; RecP: Standard_Boolean;
                         RecS: Standard_Boolean; Psol: var Standard_Real;
                         ParSol: var math_Vector): Standard_Boolean {.
    importcpp: "PerformFirstSection", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc Complete*(this: var BRepBlend_SurfRstLineBuilder;
              Func: var Blend_SurfRstFunction; Finv: var Blend_FuncInv;
              FinvP: var Blend_SurfPointFuncInv; FinvC: var Blend_SurfCurvFuncInv;
              Pmin: Standard_Real): Standard_Boolean {.importcpp: "Complete",
    header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc ArcToRecadre*(this: var BRepBlend_SurfRstLineBuilder; Sol: math_Vector;
                  PrevIndex: Standard_Integer; pt2d: var gp_Pnt2d;
                  lastpt2d: var gp_Pnt2d; ponarc: var Standard_Real): Standard_Integer {.
    importcpp: "ArcToRecadre", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc IsDone*(this: BRepBlend_SurfRstLineBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc Line*(this: BRepBlend_SurfRstLineBuilder): handle[BRepBlend_Line] {.
    noSideEffect, importcpp: "Line", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc DecrochStart*(this: BRepBlend_SurfRstLineBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "DecrochStart",
    header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc DecrochEnd*(this: BRepBlend_SurfRstLineBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "DecrochEnd",
    header: "BRepBlend_SurfRstLineBuilder.hxx".}