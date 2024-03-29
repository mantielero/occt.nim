import ../appparcurves/appparcurves_types
import approx_types





##  Created on: 1994-02-21
##  Created by: Laurent PAINNOT
##  Copyright (c) 1994-1999 Matra Datavision
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



proc newApproxMCurvesToBSpCurve*(): ApproxMCurvesToBSpCurve {.cdecl, constructor,
    importcpp: "Approx_MCurvesToBSpCurve(@)", header: "Approx_MCurvesToBSpCurve.hxx".}
proc reset*(this: var ApproxMCurvesToBSpCurve) {.cdecl, importcpp: "Reset",
    header: "Approx_MCurvesToBSpCurve.hxx".}
proc append*(this: var ApproxMCurvesToBSpCurve; mc: AppParCurvesMultiCurve) {.cdecl,
    importcpp: "Append", header: "Approx_MCurvesToBSpCurve.hxx".}
proc perform*(this: var ApproxMCurvesToBSpCurve) {.cdecl, importcpp: "Perform",
    header: "Approx_MCurvesToBSpCurve.hxx".}
proc perform*(this: var ApproxMCurvesToBSpCurve;
             theSeq: AppParCurvesSequenceOfMultiCurve) {.cdecl,
    importcpp: "Perform", header: "Approx_MCurvesToBSpCurve.hxx".}
proc value*(this: ApproxMCurvesToBSpCurve): AppParCurvesMultiBSpCurve {.
    noSideEffect, cdecl, importcpp: "Value", header: "Approx_MCurvesToBSpCurve.hxx".}
proc changeValue*(this: var ApproxMCurvesToBSpCurve): AppParCurvesMultiBSpCurve {.
    cdecl, importcpp: "ChangeValue", header: "Approx_MCurvesToBSpCurve.hxx".}


