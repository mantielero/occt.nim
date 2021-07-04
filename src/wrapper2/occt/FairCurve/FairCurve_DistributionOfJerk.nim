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
  ../Standard/Standard_Handle, FairCurve_BattenLaw,
  FairCurve_DistributionOfEnergy, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfReal, ../TColgp/TColgp_HArray1OfPnt2d,
  ../Standard/Standard_Boolean, ../math/math_Vector

discard "forward decl of FairCurve_BattenLaw"
type
  FairCurve_DistributionOfJerk* {.importcpp: "FairCurve_DistributionOfJerk",
                                 header: "FairCurve_DistributionOfJerk.hxx",
                                 bycopy.} = object of FairCurve_DistributionOfEnergy


proc constructFairCurve_DistributionOfJerk*(BSplOrder: Standard_Integer;
    FlatKnots: handle[TColStd_HArray1OfReal];
    Poles: handle[TColgp_HArray1OfPnt2d]; DerivativeOrder: Standard_Integer;
    Law: FairCurve_BattenLaw; NbValAux: Standard_Integer = 0): FairCurve_DistributionOfJerk {.
    constructor, importcpp: "FairCurve_DistributionOfJerk(@)",
    header: "FairCurve_DistributionOfJerk.hxx".}
proc Value*(this: var FairCurve_DistributionOfJerk; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "FairCurve_DistributionOfJerk.hxx".}