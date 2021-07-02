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


proc normal*(d1u: GpVec; d1v: GpVec; sinTol: StandardReal;
            theStatus: var CSLibDerivativeStatus; normal: var GpDir) {.
    importcpp: "CSLib::Normal(@)", header: "CSLib.hxx".}
proc normal*(d1u: GpVec; d1v: GpVec; d2u: GpVec; d2v: GpVec; d2uv: GpVec;
            sinTol: StandardReal; done: var StandardBoolean;
            theStatus: var CSLibNormalStatus; normal: var GpDir) {.
    importcpp: "CSLib::Normal(@)", header: "CSLib.hxx".}
proc normal*(d1u: GpVec; d1v: GpVec; magTol: StandardReal;
            theStatus: var CSLibNormalStatus; normal: var GpDir) {.
    importcpp: "CSLib::Normal(@)", header: "CSLib.hxx".}
proc normal*(maxOrder: StandardInteger; derNUV: TColgpArray2OfVec;
            magTol: StandardReal; u: StandardReal; v: StandardReal;
            umin: StandardReal; umax: StandardReal; vmin: StandardReal;
            vmax: StandardReal; theStatus: var CSLibNormalStatus; normal: var GpDir;
            orderU: var StandardInteger; orderV: var StandardInteger) {.
    importcpp: "CSLib::Normal(@)", header: "CSLib.hxx".}
proc dnnuv*(nu: StandardInteger; nv: StandardInteger; derSurf: TColgpArray2OfVec): GpVec {.
    importcpp: "CSLib::DNNUV(@)", header: "CSLib.hxx".}
proc dnnuv*(nu: StandardInteger; nv: StandardInteger; derSurf1: TColgpArray2OfVec;
           derSurf2: TColgpArray2OfVec): GpVec {.importcpp: "CSLib::DNNUV(@)",
    header: "CSLib.hxx".}
proc dNNormal*(nu: StandardInteger; nv: StandardInteger; derNUV: TColgpArray2OfVec;
              iduref: StandardInteger = 0; idvref: StandardInteger = 0): GpVec {.
    importcpp: "CSLib::DNNormal(@)", header: "CSLib.hxx".}

