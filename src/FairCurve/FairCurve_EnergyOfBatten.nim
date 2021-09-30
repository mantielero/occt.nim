##  Created on: 1996-02-01
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

##  resolve name collisions with X11 headers

# when defined(Status):
#   discard
## ! Energy Criterium to minimize in Batten.

type
  FairCurveEnergyOfBatten* {.importcpp: "FairCurve_EnergyOfBatten",
                            header: "FairCurve_EnergyOfBatten.hxx", bycopy.} = object of FairCurveEnergy ##
                                                                                                  ## !
                                                                                                  ## Angles
                                                                                                  ## corresspond
                                                                                                  ## to
                                                                                                  ## the
                                                                                                  ## Ox
                                                                                                  ## axis
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## compute
                                                                                                  ## the
                                                                                                  ## poles
                                                                                                  ## wich
                                                                                                  ## correspond
                                                                                                  ## with
                                                                                                  ## the
                                                                                                  ## variable
                                                                                                  ## X


proc constructFairCurveEnergyOfBatten*(bSplOrder: cint;
                                      flatKnots: Handle[TColStdHArray1OfReal];
                                      poles: Handle[TColgpHArray1OfPnt2d];
                                      contrOrder1: cint; contrOrder2: cint;
                                      law: FairCurveBattenLaw;
                                      lengthSliding: cfloat;
                                      freeSliding: bool = true; angle1: cfloat = 0;
                                      angle2: cfloat = 0): FairCurveEnergyOfBatten {.
    constructor, importcpp: "FairCurve_EnergyOfBatten(@)",
    header: "FairCurve_EnergyOfBatten.hxx".}
proc lengthSliding*(this: FairCurveEnergyOfBatten): cfloat {.noSideEffect,
    importcpp: "LengthSliding", header: "FairCurve_EnergyOfBatten.hxx".}
proc status*(this: FairCurveEnergyOfBatten): FairCurveAnalysisCode {.noSideEffect,
    importcpp: "Status", header: "FairCurve_EnergyOfBatten.hxx".}
proc variable*(this: FairCurveEnergyOfBatten; x: var MathVector): bool {.noSideEffect,
    importcpp: "Variable", header: "FairCurve_EnergyOfBatten.hxx".}

























