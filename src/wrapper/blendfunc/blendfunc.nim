import ../convert/convert_types
import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import blendfunc_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types





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



proc getShape*(sectShape: BlendFuncSectionShape; maxAng: cfloat; nbPoles: var cint;
              nbKnots: var cint; degree: var cint;
              typeConv: var ConvertParameterisationType) {.cdecl,
    importcpp: "BlendFunc::GetShape(@)", header: "BlendFunc.hxx".}
proc knots*(sectShape: BlendFuncSectionShape; tKnots: var TColStdArray1OfReal) {.
    cdecl, importcpp: "BlendFunc::Knots(@)", header: "BlendFunc.hxx".}
proc mults*(sectShape: BlendFuncSectionShape; tMults: var TColStdArray1OfInteger) {.
    cdecl, importcpp: "BlendFunc::Mults(@)", header: "BlendFunc.hxx".}
proc getMinimalWeights*(sectShape: BlendFuncSectionShape;
                       tConv: ConvertParameterisationType; angleMin: cfloat;
                       angleMax: cfloat; weigths: var TColStdArray1OfReal) {.cdecl,
    importcpp: "BlendFunc::GetMinimalWeights(@)", header: "BlendFunc.hxx".}
proc nextShape*(s: GeomAbsShape): GeomAbsShape {.cdecl,
    importcpp: "BlendFunc::NextShape(@)", header: "BlendFunc.hxx".}
proc computeNormal*(surf: Handle[Adaptor3dHSurface]; p2d: Pnt2dObj; normal: var VecObj): bool {.
    cdecl, importcpp: "BlendFunc::ComputeNormal(@)", header: "BlendFunc.hxx".}
proc computeDNormal*(surf: Handle[Adaptor3dHSurface]; p2d: Pnt2dObj; normal: var VecObj;
                    dNu: var VecObj; dNv: var VecObj): bool {.cdecl,
    importcpp: "BlendFunc::ComputeDNormal(@)", header: "BlendFunc.hxx".}


