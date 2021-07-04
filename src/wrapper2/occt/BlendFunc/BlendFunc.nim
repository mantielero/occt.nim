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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BlendFunc_SectionShape, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Convert/Convert_ParameterisationType,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Boolean

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


proc GetShape*(SectShape: BlendFunc_SectionShape; MaxAng: Standard_Real;
              NbPoles: var Standard_Integer; NbKnots: var Standard_Integer;
              Degree: var Standard_Integer;
              TypeConv: var Convert_ParameterisationType) {.
    importcpp: "BlendFunc::GetShape(@)", header: "BlendFunc.hxx".}
proc Knots*(SectShape: BlendFunc_SectionShape; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "BlendFunc::Knots(@)", header: "BlendFunc.hxx".}
proc Mults*(SectShape: BlendFunc_SectionShape; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "BlendFunc::Mults(@)", header: "BlendFunc.hxx".}
proc GetMinimalWeights*(SectShape: BlendFunc_SectionShape;
                       TConv: Convert_ParameterisationType;
                       AngleMin: Standard_Real; AngleMax: Standard_Real;
                       Weigths: var TColStd_Array1OfReal) {.
    importcpp: "BlendFunc::GetMinimalWeights(@)", header: "BlendFunc.hxx".}
proc NextShape*(S: GeomAbs_Shape): GeomAbs_Shape {.
    importcpp: "BlendFunc::NextShape(@)", header: "BlendFunc.hxx".}
proc ComputeNormal*(Surf: handle[Adaptor3d_HSurface]; p2d: gp_Pnt2d;
                   Normal: var gp_Vec): Standard_Boolean {.
    importcpp: "BlendFunc::ComputeNormal(@)", header: "BlendFunc.hxx".}
proc ComputeDNormal*(Surf: handle[Adaptor3d_HSurface]; p2d: gp_Pnt2d;
                    Normal: var gp_Vec; DNu: var gp_Vec; DNv: var gp_Vec): Standard_Boolean {.
    importcpp: "BlendFunc::ComputeDNormal(@)", header: "BlendFunc.hxx".}