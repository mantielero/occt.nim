##  Created on: 1997-02-06
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BRepBlendRstRstConstRad* {.importcpp: "BRepBlend_RstRstConstRad",
                            header: "BRepBlend_RstRstConstRad.hxx", bycopy.} = object of BlendRstRstFunction


proc constructBRepBlendRstRstConstRad*(surf1: Handle[Adaptor3dHSurface];
                                      rst1: Handle[Adaptor2dHCurve2d];
                                      surf2: Handle[Adaptor3dHSurface];
                                      rst2: Handle[Adaptor2dHCurve2d];
                                      cGuide: Handle[Adaptor3dHCurve]): BRepBlendRstRstConstRad {.
    constructor, importcpp: "BRepBlend_RstRstConstRad(@)",
    header: "BRepBlend_RstRstConstRad.hxx".}
proc nbVariables*(this: BRepBlendRstRstConstRad): StandardInteger {.noSideEffect,
    importcpp: "NbVariables", header: "BRepBlend_RstRstConstRad.hxx".}
proc nbEquations*(this: BRepBlendRstRstConstRad): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "BRepBlend_RstRstConstRad.hxx".}
proc value*(this: var BRepBlendRstRstConstRad; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BRepBlend_RstRstConstRad.hxx".}
proc derivatives*(this: var BRepBlendRstRstConstRad; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "BRepBlend_RstRstConstRad.hxx".}
proc values*(this: var BRepBlendRstRstConstRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BRepBlend_RstRstConstRad.hxx".}
proc set*(this: var BRepBlendRstRstConstRad; surfRef1: Handle[Adaptor3dHSurface];
         rstRef1: Handle[Adaptor2dHCurve2d]; surfRef2: Handle[Adaptor3dHSurface];
         rstRef2: Handle[Adaptor2dHCurve2d]) {.importcpp: "Set",
    header: "BRepBlend_RstRstConstRad.hxx".}
proc set*(this: var BRepBlendRstRstConstRad; param: StandardReal) {.importcpp: "Set",
    header: "BRepBlend_RstRstConstRad.hxx".}
proc set*(this: var BRepBlendRstRstConstRad; first: StandardReal; last: StandardReal) {.
    importcpp: "Set", header: "BRepBlend_RstRstConstRad.hxx".}
proc getTolerance*(this: BRepBlendRstRstConstRad; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance",
                                     header: "BRepBlend_RstRstConstRad.hxx".}
proc getBounds*(this: BRepBlendRstRstConstRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BRepBlend_RstRstConstRad.hxx".}
proc isSolution*(this: var BRepBlendRstRstConstRad; sol: MathVector; tol: StandardReal): StandardBoolean {.
    importcpp: "IsSolution", header: "BRepBlend_RstRstConstRad.hxx".}
proc getMinimalDistance*(this: BRepBlendRstRstConstRad): StandardReal {.
    noSideEffect, importcpp: "GetMinimalDistance",
    header: "BRepBlend_RstRstConstRad.hxx".}
proc pointOnRst1*(this: BRepBlendRstRstConstRad): GpPnt {.noSideEffect,
    importcpp: "PointOnRst1", header: "BRepBlend_RstRstConstRad.hxx".}
proc pointOnRst2*(this: BRepBlendRstRstConstRad): GpPnt {.noSideEffect,
    importcpp: "PointOnRst2", header: "BRepBlend_RstRstConstRad.hxx".}
proc pnt2dOnRst1*(this: BRepBlendRstRstConstRad): GpPnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst1", header: "BRepBlend_RstRstConstRad.hxx".}
proc pnt2dOnRst2*(this: BRepBlendRstRstConstRad): GpPnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst2", header: "BRepBlend_RstRstConstRad.hxx".}
proc parameterOnRst1*(this: BRepBlendRstRstConstRad): StandardReal {.noSideEffect,
    importcpp: "ParameterOnRst1", header: "BRepBlend_RstRstConstRad.hxx".}
proc parameterOnRst2*(this: BRepBlendRstRstConstRad): StandardReal {.noSideEffect,
    importcpp: "ParameterOnRst2", header: "BRepBlend_RstRstConstRad.hxx".}
proc isTangencyPoint*(this: BRepBlendRstRstConstRad): StandardBoolean {.
    noSideEffect, importcpp: "IsTangencyPoint",
    header: "BRepBlend_RstRstConstRad.hxx".}
proc tangentOnRst1*(this: BRepBlendRstRstConstRad): GpVec {.noSideEffect,
    importcpp: "TangentOnRst1", header: "BRepBlend_RstRstConstRad.hxx".}
proc tangent2dOnRst1*(this: BRepBlendRstRstConstRad): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst1", header: "BRepBlend_RstRstConstRad.hxx".}
proc tangentOnRst2*(this: BRepBlendRstRstConstRad): GpVec {.noSideEffect,
    importcpp: "TangentOnRst2", header: "BRepBlend_RstRstConstRad.hxx".}
proc tangent2dOnRst2*(this: BRepBlendRstRstConstRad): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst2", header: "BRepBlend_RstRstConstRad.hxx".}
proc decroch*(this: BRepBlendRstRstConstRad; sol: MathVector; nRst1: var GpVec;
             tgRst1: var GpVec; nRst2: var GpVec; tgRst2: var GpVec): BlendDecrochStatus {.
    noSideEffect, importcpp: "Decroch", header: "BRepBlend_RstRstConstRad.hxx".}
proc set*(this: var BRepBlendRstRstConstRad; radius: StandardReal;
         choix: StandardInteger) {.importcpp: "Set",
                                 header: "BRepBlend_RstRstConstRad.hxx".}
proc set*(this: var BRepBlendRstRstConstRad; typeSection: BlendFuncSectionShape) {.
    importcpp: "Set", header: "BRepBlend_RstRstConstRad.hxx".}
proc centerCircleRst1Rst2*(this: BRepBlendRstRstConstRad; ptRst1: GpPnt;
                          ptRst2: GpPnt; np: GpVec; center: var GpPnt; vdMed: var GpVec): StandardBoolean {.
    noSideEffect, importcpp: "CenterCircleRst1Rst2",
    header: "BRepBlend_RstRstConstRad.hxx".}
proc section*(this: var BRepBlendRstRstConstRad; param: StandardReal; u: StandardReal;
             v: StandardReal; pdeb: var StandardReal; pfin: var StandardReal;
             c: var GpCirc) {.importcpp: "Section",
                           header: "BRepBlend_RstRstConstRad.hxx".}
proc isRational*(this: BRepBlendRstRstConstRad): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "BRepBlend_RstRstConstRad.hxx".}
proc getSectionSize*(this: BRepBlendRstRstConstRad): StandardReal {.noSideEffect,
    importcpp: "GetSectionSize", header: "BRepBlend_RstRstConstRad.hxx".}
proc getMinimalWeight*(this: BRepBlendRstRstConstRad;
                      weigths: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "BRepBlend_RstRstConstRad.hxx".}
proc nbIntervals*(this: BRepBlendRstRstConstRad; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "BRepBlend_RstRstConstRad.hxx".}
proc intervals*(this: BRepBlendRstRstConstRad; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "BRepBlend_RstRstConstRad.hxx".}
proc getShape*(this: var BRepBlendRstRstConstRad; nbPoles: var StandardInteger;
              nbKnots: var StandardInteger; degree: var StandardInteger;
              nbPoles2d: var StandardInteger) {.importcpp: "GetShape",
    header: "BRepBlend_RstRstConstRad.hxx".}
proc getTolerance*(this: BRepBlendRstRstConstRad; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var MathVector; tol1D: var MathVector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BRepBlend_RstRstConstRad.hxx".}
proc knots*(this: var BRepBlendRstRstConstRad; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BRepBlend_RstRstConstRad.hxx".}
proc mults*(this: var BRepBlendRstRstConstRad; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BRepBlend_RstRstConstRad.hxx".}
proc section*(this: var BRepBlendRstRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BRepBlend_RstRstConstRad.hxx".}
proc section*(this: var BRepBlendRstRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.importcpp: "Section",
    header: "BRepBlend_RstRstConstRad.hxx".}
proc section*(this: var BRepBlendRstRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BRepBlend_RstRstConstRad.hxx".}
proc resolution*(this: BRepBlendRstRstConstRad; iC2d: StandardInteger;
                tol: StandardReal; tolU: var StandardReal; tolV: var StandardReal) {.
    noSideEffect, importcpp: "Resolution", header: "BRepBlend_RstRstConstRad.hxx".}

