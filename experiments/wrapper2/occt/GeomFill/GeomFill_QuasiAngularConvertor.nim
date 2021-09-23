##  Created on: 1997-08-06
##  Created by: Philippe MANGIN
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../math/math_Matrix,
  ../math/math_Vector, ../Standard/Standard_Real, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_Array1OfReal, ../TColgp/TColgp_Array1OfVec

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GeomFill_QuasiAngularConvertor* {.importcpp: "GeomFill_QuasiAngularConvertor", header: "GeomFill_QuasiAngularConvertor.hxx",
                                   bycopy.} = object


proc constructGeomFill_QuasiAngularConvertor*(): GeomFill_QuasiAngularConvertor {.
    constructor, importcpp: "GeomFill_QuasiAngularConvertor(@)",
    header: "GeomFill_QuasiAngularConvertor.hxx".}
proc Initialized*(this: GeomFill_QuasiAngularConvertor): Standard_Boolean {.
    noSideEffect, importcpp: "Initialized",
    header: "GeomFill_QuasiAngularConvertor.hxx".}
proc Init*(this: var GeomFill_QuasiAngularConvertor) {.importcpp: "Init",
    header: "GeomFill_QuasiAngularConvertor.hxx".}
proc Section*(this: var GeomFill_QuasiAngularConvertor; FirstPnt: gp_Pnt;
             Center: gp_Pnt; Dir: gp_Vec; Angle: Standard_Real;
             Poles: var TColgp_Array1OfPnt; Weights: var TColStd_Array1OfReal) {.
    importcpp: "Section", header: "GeomFill_QuasiAngularConvertor.hxx".}
proc Section*(this: var GeomFill_QuasiAngularConvertor; FirstPnt: gp_Pnt;
             DFirstPnt: gp_Vec; Center: gp_Pnt; DCenter: gp_Vec; Dir: gp_Vec;
             DDir: gp_Vec; Angle: Standard_Real; DAngle: Standard_Real;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Weights: var TColStd_Array1OfReal; DWeights: var TColStd_Array1OfReal) {.
    importcpp: "Section", header: "GeomFill_QuasiAngularConvertor.hxx".}
proc Section*(this: var GeomFill_QuasiAngularConvertor; FirstPnt: gp_Pnt;
             DFirstPnt: gp_Vec; D2FirstPnt: gp_Vec; Center: gp_Pnt; DCenter: gp_Vec;
             D2Center: gp_Vec; Dir: gp_Vec; DDir: gp_Vec; D2Dir: gp_Vec;
             Angle: Standard_Real; DAngle: Standard_Real; D2Angle: Standard_Real;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Weights: var TColStd_Array1OfReal;
             DWeights: var TColStd_Array1OfReal;
             D2Weights: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "GeomFill_QuasiAngularConvertor.hxx".}