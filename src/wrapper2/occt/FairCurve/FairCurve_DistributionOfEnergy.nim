##  Created on: 1996-01-22
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

## ! Abstract class to use the Energy of an FairCurve

type
  FairCurveDistributionOfEnergy* {.importcpp: "FairCurve_DistributionOfEnergy",
                                  header: "FairCurve_DistributionOfEnergy.hxx",
                                  bycopy.} = object of MathFunctionSet ## ! returns the number of variables of the function.


proc nbVariables*(this: FairCurveDistributionOfEnergy): StandardInteger {.
    noSideEffect, importcpp: "NbVariables",
    header: "FairCurve_DistributionOfEnergy.hxx".}
proc nbEquations*(this: FairCurveDistributionOfEnergy): StandardInteger {.
    noSideEffect, importcpp: "NbEquations",
    header: "FairCurve_DistributionOfEnergy.hxx".}
proc setDerivativeOrder*(this: var FairCurveDistributionOfEnergy;
                        derivativeOrder: StandardInteger) {.
    importcpp: "SetDerivativeOrder", header: "FairCurve_DistributionOfEnergy.hxx".}

