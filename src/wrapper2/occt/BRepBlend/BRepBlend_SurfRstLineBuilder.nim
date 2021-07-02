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
  BRepBlendSurfRstLineBuilder* {.importcpp: "BRepBlend_SurfRstLineBuilder",
                                header: "BRepBlend_SurfRstLineBuilder.hxx", bycopy.} = object


proc constructBRepBlendSurfRstLineBuilder*(surf1: Handle[Adaptor3dHSurface];
    domain1: Handle[Adaptor3dTopolTool]; surf2: Handle[Adaptor3dHSurface];
    rst: Handle[Adaptor2dHCurve2d]; domain2: Handle[Adaptor3dTopolTool]): BRepBlendSurfRstLineBuilder {.
    constructor, importcpp: "BRepBlend_SurfRstLineBuilder(@)",
    header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc perform*(this: var BRepBlendSurfRstLineBuilder;
             `func`: var BlendSurfRstFunction; finv: var BlendFuncInv;
             finvP: var BlendSurfPointFuncInv; finvC: var BlendSurfCurvFuncInv;
             pdep: StandardReal; pmax: StandardReal; maxStep: StandardReal;
             tolGuide: StandardReal; soldep: MathVector; tolesp: StandardReal;
             fleche: StandardReal; appro: StandardBoolean = standardFalse) {.
    importcpp: "Perform", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc performFirstSection*(this: var BRepBlendSurfRstLineBuilder;
                         `func`: var BlendSurfRstFunction; finv: var BlendFuncInv;
                         finvP: var BlendSurfPointFuncInv;
                         finvC: var BlendSurfCurvFuncInv; pdep: StandardReal;
                         pmax: StandardReal; soldep: MathVector;
                         tolesp: StandardReal; tolGuide: StandardReal;
                         recRst: StandardBoolean; recP: StandardBoolean;
                         recS: StandardBoolean; psol: var StandardReal;
                         parSol: var MathVector): StandardBoolean {.
    importcpp: "PerformFirstSection", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc complete*(this: var BRepBlendSurfRstLineBuilder;
              `func`: var BlendSurfRstFunction; finv: var BlendFuncInv;
              finvP: var BlendSurfPointFuncInv; finvC: var BlendSurfCurvFuncInv;
              pmin: StandardReal): StandardBoolean {.importcpp: "Complete",
    header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc arcToRecadre*(this: var BRepBlendSurfRstLineBuilder; sol: MathVector;
                  prevIndex: StandardInteger; pt2d: var GpPnt2d;
                  lastpt2d: var GpPnt2d; ponarc: var StandardReal): StandardInteger {.
    importcpp: "ArcToRecadre", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc isDone*(this: BRepBlendSurfRstLineBuilder): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc line*(this: BRepBlendSurfRstLineBuilder): Handle[BRepBlendLine] {.noSideEffect,
    importcpp: "Line", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc decrochStart*(this: BRepBlendSurfRstLineBuilder): StandardBoolean {.
    noSideEffect, importcpp: "DecrochStart",
    header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc decrochEnd*(this: BRepBlendSurfRstLineBuilder): StandardBoolean {.noSideEffect,
    importcpp: "DecrochEnd", header: "BRepBlend_SurfRstLineBuilder.hxx".}

