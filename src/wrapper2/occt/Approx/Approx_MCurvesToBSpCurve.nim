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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_MultiBSpCurve,
  ../Standard/Standard_Boolean, ../AppParCurves/AppParCurves_SequenceOfMultiCurve

discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of AppParCurves_MultiBSpCurve"
type
  Approx_MCurvesToBSpCurve* {.importcpp: "Approx_MCurvesToBSpCurve",
                             header: "Approx_MCurvesToBSpCurve.hxx", bycopy.} = object


proc constructApprox_MCurvesToBSpCurve*(): Approx_MCurvesToBSpCurve {.constructor,
    importcpp: "Approx_MCurvesToBSpCurve(@)",
    header: "Approx_MCurvesToBSpCurve.hxx".}
proc Reset*(this: var Approx_MCurvesToBSpCurve) {.importcpp: "Reset",
    header: "Approx_MCurvesToBSpCurve.hxx".}
proc Append*(this: var Approx_MCurvesToBSpCurve; MC: AppParCurves_MultiCurve) {.
    importcpp: "Append", header: "Approx_MCurvesToBSpCurve.hxx".}
proc Perform*(this: var Approx_MCurvesToBSpCurve) {.importcpp: "Perform",
    header: "Approx_MCurvesToBSpCurve.hxx".}
proc Perform*(this: var Approx_MCurvesToBSpCurve;
             TheSeq: AppParCurves_SequenceOfMultiCurve) {.importcpp: "Perform",
    header: "Approx_MCurvesToBSpCurve.hxx".}
proc Value*(this: Approx_MCurvesToBSpCurve): AppParCurves_MultiBSpCurve {.
    noSideEffect, importcpp: "Value", header: "Approx_MCurvesToBSpCurve.hxx".}
proc ChangeValue*(this: var Approx_MCurvesToBSpCurve): AppParCurves_MultiBSpCurve {.
    importcpp: "ChangeValue", header: "Approx_MCurvesToBSpCurve.hxx".}