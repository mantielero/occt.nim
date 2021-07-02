##  Created on: 1996-04-01
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
## ! Energy Criterium to minimize in MinimalVariationCurve.

type
  FairCurveEnergyOfMVC* {.importcpp: "FairCurve_EnergyOfMVC",
                         header: "FairCurve_EnergyOfMVC.hxx", bycopy.} = object of FairCurveEnergy ##
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


proc constructFairCurveEnergyOfMVC*(bSplOrder: StandardInteger;
                                   flatKnots: Handle[TColStdHArray1OfReal];
                                   poles: Handle[TColgpHArray1OfPnt2d];
                                   contrOrder1: StandardInteger;
                                   contrOrder2: StandardInteger;
                                   law: FairCurveBattenLaw;
                                   physicalRatio: StandardReal;
                                   lengthSliding: StandardReal;
                                   freeSliding: StandardBoolean = standardTrue;
                                   angle1: StandardReal = 0;
                                   angle2: StandardReal = 0;
                                   curvature1: StandardReal = 0;
                                   curvature2: StandardReal = 0): FairCurveEnergyOfMVC {.
    constructor, importcpp: "FairCurve_EnergyOfMVC(@)",
    header: "FairCurve_EnergyOfMVC.hxx".}
proc lengthSliding*(this: FairCurveEnergyOfMVC): StandardReal {.noSideEffect,
    importcpp: "LengthSliding", header: "FairCurve_EnergyOfMVC.hxx".}
proc status*(this: FairCurveEnergyOfMVC): FairCurveAnalysisCode {.noSideEffect,
    importcpp: "Status", header: "FairCurve_EnergyOfMVC.hxx".}
proc variable*(this: FairCurveEnergyOfMVC; x: var MathVector): StandardBoolean {.
    noSideEffect, importcpp: "Variable", header: "FairCurve_EnergyOfMVC.hxx".}

