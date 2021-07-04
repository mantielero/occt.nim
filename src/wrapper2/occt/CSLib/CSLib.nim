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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, CSLib_DerivativeStatus,
  ../Standard/Standard_Boolean, CSLib_NormalStatus, ../Standard/Standard_Integer,
  ../TColgp/TColgp_Array2OfVec

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


proc Normal*(D1U: gp_Vec; D1V: gp_Vec; SinTol: Standard_Real;
            theStatus: var CSLib_DerivativeStatus; Normal: var gp_Dir) {.
    importcpp: "CSLib::Normal(@)", header: "CSLib.hxx".}
proc Normal*(D1U: gp_Vec; D1V: gp_Vec; D2U: gp_Vec; D2V: gp_Vec; D2UV: gp_Vec;
            SinTol: Standard_Real; Done: var Standard_Boolean;
            theStatus: var CSLib_NormalStatus; Normal: var gp_Dir) {.
    importcpp: "CSLib::Normal(@)", header: "CSLib.hxx".}
proc Normal*(D1U: gp_Vec; D1V: gp_Vec; MagTol: Standard_Real;
            theStatus: var CSLib_NormalStatus; Normal: var gp_Dir) {.
    importcpp: "CSLib::Normal(@)", header: "CSLib.hxx".}
proc Normal*(MaxOrder: Standard_Integer; DerNUV: TColgp_Array2OfVec;
            MagTol: Standard_Real; U: Standard_Real; V: Standard_Real;
            Umin: Standard_Real; Umax: Standard_Real; Vmin: Standard_Real;
            Vmax: Standard_Real; theStatus: var CSLib_NormalStatus;
            Normal: var gp_Dir; OrderU: var Standard_Integer;
            OrderV: var Standard_Integer) {.importcpp: "CSLib::Normal(@)",
    header: "CSLib.hxx".}
proc DNNUV*(Nu: Standard_Integer; Nv: Standard_Integer; DerSurf: TColgp_Array2OfVec): gp_Vec {.
    importcpp: "CSLib::DNNUV(@)", header: "CSLib.hxx".}
proc DNNUV*(Nu: Standard_Integer; Nv: Standard_Integer; DerSurf1: TColgp_Array2OfVec;
           DerSurf2: TColgp_Array2OfVec): gp_Vec {.importcpp: "CSLib::DNNUV(@)",
    header: "CSLib.hxx".}
proc DNNormal*(Nu: Standard_Integer; Nv: Standard_Integer;
              DerNUV: TColgp_Array2OfVec; Iduref: Standard_Integer = 0;
              Idvref: Standard_Integer = 0): gp_Vec {.
    importcpp: "CSLib::DNNormal(@)", header: "CSLib.hxx".}