##  Created on: 1993-12-03
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of BlendFunc_ConstRad"
discard "forward decl of BlendFunc_ConstRadInv"
discard "forward decl of BlendFunc_Ruled"
discard "forward decl of BlendFunc_RuledInv"
discard "forward decl of BlendFunc_EvolRad"
discard "forward decl of BlendFunc_EvolRadInv"
discard "forward decl of BlendFunc_CSConstRad"
discard "forward decl of BlendFunc_CSCircular"
discard "forward decl of BlendFunc_Corde"
discard "forward decl of BlendFunc_Chamfer"
discard "forward decl of BlendFunc_ChamfInv"
discard "forward decl of BlendFunc_ChAsym"
discard "forward decl of BlendFunc_ChAsymInv"
discard "forward decl of BlendFunc_Tensor"
type
  BlendFunc* {.importcpp: "BlendFunc", header: "BlendFunc.hxx", bycopy.} = object


proc getShape*(sectShape: BlendFuncSectionShape; maxAng: StandardReal;
              nbPoles: var StandardInteger; nbKnots: var StandardInteger;
              degree: var StandardInteger;
              typeConv: var ConvertParameterisationType) {.
    importcpp: "BlendFunc::GetShape(@)", header: "BlendFunc.hxx".}
proc knots*(sectShape: BlendFuncSectionShape; tKnots: var TColStdArray1OfReal) {.
    importcpp: "BlendFunc::Knots(@)", header: "BlendFunc.hxx".}
proc mults*(sectShape: BlendFuncSectionShape; tMults: var TColStdArray1OfInteger) {.
    importcpp: "BlendFunc::Mults(@)", header: "BlendFunc.hxx".}
proc getMinimalWeights*(sectShape: BlendFuncSectionShape;
                       tConv: ConvertParameterisationType; angleMin: StandardReal;
                       angleMax: StandardReal; weigths: var TColStdArray1OfReal) {.
    importcpp: "BlendFunc::GetMinimalWeights(@)", header: "BlendFunc.hxx".}
proc nextShape*(s: GeomAbsShape): GeomAbsShape {.
    importcpp: "BlendFunc::NextShape(@)", header: "BlendFunc.hxx".}
proc computeNormal*(surf: Handle[Adaptor3dHSurface]; p2d: GpPnt2d; normal: var GpVec): StandardBoolean {.
    importcpp: "BlendFunc::ComputeNormal(@)", header: "BlendFunc.hxx".}
proc computeDNormal*(surf: Handle[Adaptor3dHSurface]; p2d: GpPnt2d;
                    normal: var GpVec; dNu: var GpVec; dNv: var GpVec): StandardBoolean {.
    importcpp: "BlendFunc::ComputeDNormal(@)", header: "BlendFunc.hxx".}

