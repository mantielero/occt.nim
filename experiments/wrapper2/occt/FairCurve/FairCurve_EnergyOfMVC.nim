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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, FairCurve_BattenLaw,
  FairCurve_DistributionOfTension, FairCurve_DistributionOfSagging,
  FairCurve_DistributionOfJerk, FairCurve_AnalysisCode, FairCurve_Energy,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HArray1OfReal,
  ../TColgp/TColgp_HArray1OfPnt2d, ../Standard/Standard_Boolean,
  ../math/math_Vector

##  resolve name collisions with X11 headers

when defined(Status):
  discard
## ! Energy Criterium to minimize in MinimalVariationCurve.

type
  FairCurve_EnergyOfMVC* {.importcpp: "FairCurve_EnergyOfMVC",
                          header: "FairCurve_EnergyOfMVC.hxx", bycopy.} = object of FairCurve_Energy ##
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


proc constructFairCurve_EnergyOfMVC*(BSplOrder: Standard_Integer;
                                    FlatKnots: handle[TColStd_HArray1OfReal];
                                    Poles: handle[TColgp_HArray1OfPnt2d];
                                    ContrOrder1: Standard_Integer;
                                    ContrOrder2: Standard_Integer;
                                    Law: FairCurve_BattenLaw;
                                    PhysicalRatio: Standard_Real;
                                    LengthSliding: Standard_Real; FreeSliding: Standard_Boolean = Standard_True;
                                    Angle1: Standard_Real = 0;
                                    Angle2: Standard_Real = 0;
                                    Curvature1: Standard_Real = 0;
                                    Curvature2: Standard_Real = 0): FairCurve_EnergyOfMVC {.
    constructor, importcpp: "FairCurve_EnergyOfMVC(@)",
    header: "FairCurve_EnergyOfMVC.hxx".}
proc LengthSliding*(this: FairCurve_EnergyOfMVC): Standard_Real {.noSideEffect,
    importcpp: "LengthSliding", header: "FairCurve_EnergyOfMVC.hxx".}
proc Status*(this: FairCurve_EnergyOfMVC): FairCurve_AnalysisCode {.noSideEffect,
    importcpp: "Status", header: "FairCurve_EnergyOfMVC.hxx".}
proc Variable*(this: FairCurve_EnergyOfMVC; X: var math_Vector): Standard_Boolean {.
    noSideEffect, importcpp: "Variable", header: "FairCurve_EnergyOfMVC.hxx".}