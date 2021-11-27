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


proc newBRepBlendSurfRstLineBuilder*(surf1: Handle[Adaptor3dHSurface];
                                    domain1: Handle[Adaptor3dTopolTool];
                                    surf2: Handle[Adaptor3dHSurface];
                                    rst: Handle[Adaptor2dHCurve2d];
                                    domain2: Handle[Adaptor3dTopolTool]): BRepBlendSurfRstLineBuilder {.
    cdecl, constructor, importcpp: "BRepBlend_SurfRstLineBuilder(@)",
    header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc perform*(this: var BRepBlendSurfRstLineBuilder;
             `func`: var BlendSurfRstFunction; finv: var BlendFuncInv;
             finvP: var BlendSurfPointFuncInv; finvC: var BlendSurfCurvFuncInv;
             pdep: cfloat; pmax: cfloat; maxStep: cfloat; tolGuide: cfloat;
             soldep: MathVector; tolesp: cfloat; fleche: cfloat; appro: bool = false) {.
    cdecl, importcpp: "Perform", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc performFirstSection*(this: var BRepBlendSurfRstLineBuilder;
                         `func`: var BlendSurfRstFunction; finv: var BlendFuncInv;
                         finvP: var BlendSurfPointFuncInv;
                         finvC: var BlendSurfCurvFuncInv; pdep: cfloat; pmax: cfloat;
                         soldep: MathVector; tolesp: cfloat; tolGuide: cfloat;
                         recRst: bool; recP: bool; recS: bool; psol: var cfloat;
                         parSol: var MathVector): bool {.cdecl,
    importcpp: "PerformFirstSection", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc complete*(this: var BRepBlendSurfRstLineBuilder;
              `func`: var BlendSurfRstFunction; finv: var BlendFuncInv;
              finvP: var BlendSurfPointFuncInv; finvC: var BlendSurfCurvFuncInv;
              pmin: cfloat): bool {.cdecl, importcpp: "Complete", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc arcToRecadre*(this: var BRepBlendSurfRstLineBuilder; sol: MathVector;
                  prevIndex: cint; pt2d: var Pnt2d; lastpt2d: var Pnt2d;
                  ponarc: var cfloat): cint {.cdecl, importcpp: "ArcToRecadre",
    header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc isDone*(this: BRepBlendSurfRstLineBuilder): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc line*(this: BRepBlendSurfRstLineBuilder): Handle[BRepBlendLine] {.noSideEffect,
    cdecl, importcpp: "Line", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc decrochStart*(this: BRepBlendSurfRstLineBuilder): bool {.noSideEffect, cdecl,
    importcpp: "DecrochStart", header: "BRepBlend_SurfRstLineBuilder.hxx".}
proc decrochEnd*(this: BRepBlendSurfRstLineBuilder): bool {.noSideEffect, cdecl,
    importcpp: "DecrochEnd", header: "BRepBlend_SurfRstLineBuilder.hxx".}