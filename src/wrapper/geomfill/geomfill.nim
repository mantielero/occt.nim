import ../tcolgp/tcolgp_types
import ../convert/convert_types
import ../gp/gp_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import ../geom/geom_types





##  Created on: 1993-09-28
##  Created by: Bruno DUMORTIER
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



proc surface*(curve1: Handle[GeomCurve]; curve2: Handle[GeomCurve]): Handle[
    GeomSurface] {.cdecl, importcpp: "GeomFill::Surface(@)", header: "GeomFill.hxx".}
proc getCircle*(tConv: ConvertParameterisationType; ns1: gp_Vec; ns2: gp_Vec; nplan: gp_Vec;
               pt1: gp_Pnt; pt2: gp_Pnt; rayon: cfloat; center: gp_Pnt;
               poles: var TColgpArray1OfPnt; weigths: var TColStdArray1OfReal) {.
    cdecl, importcpp: "GeomFill::GetCircle(@)", header: "GeomFill.hxx".}
proc getCircle*(tConv: ConvertParameterisationType; ns1: gp_Vec; ns2: gp_Vec; dn1w: gp_Vec;
               dn2w: gp_Vec; nplan: gp_Vec; dnplan: gp_Vec; pts1: gp_Pnt; pts2: gp_Pnt; tang1: gp_Vec;
               tang2: gp_Vec; rayon: cfloat; dRayon: cfloat; center: gp_Pnt; dCenter: gp_Vec;
               poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
               weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "GeomFill::GetCircle(@)", header: "GeomFill.hxx".}
proc getCircle*(tConv: ConvertParameterisationType; ns1: gp_Vec; ns2: gp_Vec; dn1w: gp_Vec;
               dn2w: gp_Vec; d2n1w: gp_Vec; d2n2w: gp_Vec; nplan: gp_Vec; dnplan: gp_Vec; d2nplan: gp_Vec;
               pts1: gp_Pnt; pts2: gp_Pnt; tang1: gp_Vec; tang2: gp_Vec; dtang1: gp_Vec; dtang2: gp_Vec;
               rayon: cfloat; dRayon: cfloat; d2Rayon: cfloat; center: gp_Pnt;
               dCenter: gp_Vec; d2Center: gp_Vec; poles: var TColgpArray1OfPnt;
               dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
               weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
               d2Weigths: var TColStdArray1OfReal): bool {.cdecl,
    importcpp: "GeomFill::GetCircle(@)", header: "GeomFill.hxx".}
proc getShape*(maxAng: cfloat; nbPoles: var cint; nbKnots: var cint; degree: var cint;
              typeConv: var ConvertParameterisationType) {.cdecl,
    importcpp: "GeomFill::GetShape(@)", header: "GeomFill.hxx".}
proc knots*(typeConv: ConvertParameterisationType; tKnots: var TColStdArray1OfReal) {.
    cdecl, importcpp: "GeomFill::Knots(@)", header: "GeomFill.hxx".}
proc mults*(typeConv: ConvertParameterisationType;
           tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "GeomFill::Mults(@)", header: "GeomFill.hxx".}
proc getMinimalWeights*(tConv: ConvertParameterisationType; angleMin: cfloat;
                       angleMax: cfloat; weigths: var TColStdArray1OfReal) {.cdecl,
    importcpp: "GeomFill::GetMinimalWeights(@)", header: "GeomFill.hxx".}
proc getTolerance*(tConv: ConvertParameterisationType; angleMin: cfloat;
                  radius: cfloat; angularTol: cfloat; spatialTol: cfloat): cfloat {.
    cdecl, importcpp: "GeomFill::GetTolerance(@)", header: "GeomFill.hxx".}


