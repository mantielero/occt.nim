##  Created on: 1997-07-28
##  Created by: Jerome LEMONIER
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BRepBlendSurfRstEvolRad* {.importcpp: "BRepBlend_SurfRstEvolRad",
                            header: "BRepBlend_SurfRstEvolRad.hxx", bycopy.} = object of BlendSurfRstFunction


proc `new`*(this: var BRepBlendSurfRstEvolRad; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_SurfRstEvolRad::operator new",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc `delete`*(this: var BRepBlendSurfRstEvolRad; theAddress: pointer) {.
    importcpp: "BRepBlend_SurfRstEvolRad::operator delete",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc `new[]`*(this: var BRepBlendSurfRstEvolRad; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_SurfRstEvolRad::operator new[]",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc `delete[]`*(this: var BRepBlendSurfRstEvolRad; theAddress: pointer) {.
    importcpp: "BRepBlend_SurfRstEvolRad::operator delete[]",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc `new`*(this: var BRepBlendSurfRstEvolRad; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBlend_SurfRstEvolRad::operator new",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc `delete`*(this: var BRepBlendSurfRstEvolRad; a2: pointer; a3: pointer) {.
    importcpp: "BRepBlend_SurfRstEvolRad::operator delete",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc constructBRepBlendSurfRstEvolRad*(surf: Handle[Adaptor3dHSurface];
                                      surfRst: Handle[Adaptor3dHSurface];
                                      rst: Handle[Adaptor2dHCurve2d];
                                      cGuide: Handle[Adaptor3dHCurve];
                                      evol: Handle[LawFunction]): BRepBlendSurfRstEvolRad {.
    constructor, importcpp: "BRepBlend_SurfRstEvolRad(@)",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc nbVariables*(this: BRepBlendSurfRstEvolRad): int {.noSideEffect,
    importcpp: "NbVariables", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc nbEquations*(this: BRepBlendSurfRstEvolRad): int {.noSideEffect,
    importcpp: "NbEquations", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc value*(this: var BRepBlendSurfRstEvolRad; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc derivatives*(this: var BRepBlendSurfRstEvolRad; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc values*(this: var BRepBlendSurfRstEvolRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc set*(this: var BRepBlendSurfRstEvolRad; surfRef: Handle[Adaptor3dHSurface];
         rstRef: Handle[Adaptor2dHCurve2d]) {.importcpp: "Set",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc set*(this: var BRepBlendSurfRstEvolRad; param: StandardReal) {.importcpp: "Set",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc set*(this: var BRepBlendSurfRstEvolRad; first: StandardReal; last: StandardReal) {.
    importcpp: "Set", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getTolerance*(this: BRepBlendSurfRstEvolRad; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance",
                                     header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getBounds*(this: BRepBlendSurfRstEvolRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BRepBlend_SurfRstEvolRad.hxx".}
proc isSolution*(this: var BRepBlendSurfRstEvolRad; sol: MathVector; tol: StandardReal): StandardBoolean {.
    importcpp: "IsSolution", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getMinimalDistance*(this: BRepBlendSurfRstEvolRad): StandardReal {.
    noSideEffect, importcpp: "GetMinimalDistance",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc pointOnS*(this: BRepBlendSurfRstEvolRad): Pnt {.noSideEffect,
    importcpp: "PointOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc pointOnRst*(this: BRepBlendSurfRstEvolRad): Pnt {.noSideEffect,
    importcpp: "PointOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc pnt2dOnS*(this: BRepBlendSurfRstEvolRad): Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc pnt2dOnRst*(this: BRepBlendSurfRstEvolRad): Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc parameterOnRst*(this: BRepBlendSurfRstEvolRad): StandardReal {.noSideEffect,
    importcpp: "ParameterOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc isTangencyPoint*(this: BRepBlendSurfRstEvolRad): StandardBoolean {.
    noSideEffect, importcpp: "IsTangencyPoint",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc tangentOnS*(this: BRepBlendSurfRstEvolRad): Vec {.noSideEffect,
    importcpp: "TangentOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc tangent2dOnS*(this: BRepBlendSurfRstEvolRad): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc tangentOnRst*(this: BRepBlendSurfRstEvolRad): Vec {.noSideEffect,
    importcpp: "TangentOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc tangent2dOnRst*(this: BRepBlendSurfRstEvolRad): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc decroch*(this: BRepBlendSurfRstEvolRad; sol: MathVector; ns: var Vec; tgS: var Vec): StandardBoolean {.
    noSideEffect, importcpp: "Decroch", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc set*(this: var BRepBlendSurfRstEvolRad; choix: int) {.importcpp: "Set",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc set*(this: var BRepBlendSurfRstEvolRad; typeSection: BlendFuncSectionShape) {.
    importcpp: "Set", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc section*(this: var BRepBlendSurfRstEvolRad; param: StandardReal; u: StandardReal;
             v: StandardReal; w: StandardReal; pdeb: var StandardReal;
             pfin: var StandardReal; c: var Circ) {.importcpp: "Section",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc isRational*(this: BRepBlendSurfRstEvolRad): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getSectionSize*(this: BRepBlendSurfRstEvolRad): StandardReal {.noSideEffect,
    importcpp: "GetSectionSize", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getMinimalWeight*(this: BRepBlendSurfRstEvolRad;
                      weigths: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc nbIntervals*(this: BRepBlendSurfRstEvolRad; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc intervals*(this: BRepBlendSurfRstEvolRad; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getShape*(this: var BRepBlendSurfRstEvolRad; nbPoles: var int; nbKnots: var int;
              degree: var int; nbPoles2d: var int) {.importcpp: "GetShape",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getTolerance*(this: BRepBlendSurfRstEvolRad; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var MathVector; tol1D: var MathVector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc knots*(this: var BRepBlendSurfRstEvolRad; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc mults*(this: var BRepBlendSurfRstEvolRad; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc section*(this: var BRepBlendSurfRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc section*(this: var BRepBlendSurfRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc section*(this: var BRepBlendSurfRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.importcpp: "Section",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc resolution*(this: BRepBlendSurfRstEvolRad; iC2d: int; tol: StandardReal;
                tolU: var StandardReal; tolV: var StandardReal) {.noSideEffect,
    importcpp: "Resolution", header: "BRepBlend_SurfRstEvolRad.hxx".}