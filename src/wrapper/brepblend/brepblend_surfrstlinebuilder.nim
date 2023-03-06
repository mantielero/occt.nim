import brepblend_types
import ../math/math_types
import ../gp/gp_types
import ../blend/blend_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../adaptor2d/adaptor2d_types





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
                  prevIndex: cint; pt2d: var Pnt2dObj; lastpt2d: var Pnt2dObj;
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


