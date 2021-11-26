##  Created on: 1991-09-09
##  Created by: Michel Chauvat
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
discard "forward decl of CSLib_Class2d"
discard "forward decl of CSLib_NormalPolyDef"
type
  CSLib* {.importcpp: "CSLib", header: "CSLib.hxx", bycopy.} = object ## ! The following functions computes the normal to a surface
                                                              ## ! inherits
                                                              ## FunctionWithDerivative from math
                                                              ## !
                                                              ## ! Computes the normal direction of a surface as the cross product
                                                              ## ! between D1U and D1V.
                                                              ## ! If D1U has null length or D1V has null length or D1U and D1V are
                                                              ## ! parallel the normal is undefined.
                                                              ## ! To check that D1U and D1V are colinear the sinus of the angle
                                                              ## ! between D1U and D1V is computed and compared with SinTol.
                                                              ## ! The normal is computed if theStatus == Done else the theStatus gives the
                                                              ## ! reason why the computation has failed.


proc normal*(d1u: Vec; d1v: Vec; sinTol: cfloat; theStatus: var CSLibDerivativeStatus;
            normal: var Dir) {.importcpp: "CSLib::Normal(@)", header: "CSLib.hxx".}
proc normal*(d1u: Vec; d1v: Vec; d2u: Vec; d2v: Vec; d2uv: Vec; sinTol: cfloat;
            done: var bool; theStatus: var CSLibNormalStatus; normal: var Dir) {.
    importcpp: "CSLib::Normal(@)", header: "CSLib.hxx".}
proc normal*(d1u: Vec; d1v: Vec; magTol: cfloat; theStatus: var CSLibNormalStatus;
            normal: var Dir) {.importcpp: "CSLib::Normal(@)", header: "CSLib.hxx".}
proc normal*(maxOrder: cint; derNUV: TColgpArray2OfVec; magTol: cfloat; u: cfloat;
            v: cfloat; umin: cfloat; umax: cfloat; vmin: cfloat; vmax: cfloat;
            theStatus: var CSLibNormalStatus; normal: var Dir; orderU: var cint;
            orderV: var cint) {.importcpp: "CSLib::Normal(@)", header: "CSLib.hxx".}
proc dnnuv*(nu: cint; nv: cint; derSurf: TColgpArray2OfVec): Vec {.
    importcpp: "CSLib::DNNUV(@)", header: "CSLib.hxx".}
proc dnnuv*(nu: cint; nv: cint; derSurf1: TColgpArray2OfVec;
           derSurf2: TColgpArray2OfVec): Vec {.importcpp: "CSLib::DNNUV(@)",
    header: "CSLib.hxx".}
proc dNNormal*(nu: cint; nv: cint; derNUV: TColgpArray2OfVec; iduref: cint = 0;
              idvref: cint = 0): Vec {.importcpp: "CSLib::DNNormal(@)",
                                  header: "CSLib.hxx".}

























