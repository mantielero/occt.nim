##  Created on: 1996-11-14
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
type
  AdvApproxPrefAndRec* {.importcpp: "AdvApprox_PrefAndRec",
                        header: "AdvApprox_PrefAndRec.hxx", bycopy.} = object of AdvApproxCutting


proc constructAdvApproxPrefAndRec*(recomendedCut: TColStdArray1OfReal;
                                  prefferedCut: TColStdArray1OfReal;
                                  weight: StandardReal = 5): AdvApproxPrefAndRec {.
    constructor, importcpp: "AdvApprox_PrefAndRec(@)",
    header: "AdvApprox_PrefAndRec.hxx".}
proc value*(this: AdvApproxPrefAndRec; a: StandardReal; b: StandardReal;
           cuttingvalue: var StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "Value", header: "AdvApprox_PrefAndRec.hxx".}

