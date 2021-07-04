##  Created on: 1996-01-26
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../math/math_Function,
  ../Standard/Standard_Boolean

## ! This class compute the Heigth of an batten

type
  FairCurve_BattenLaw* {.importcpp: "FairCurve_BattenLaw",
                        header: "FairCurve_BattenLaw.hxx", bycopy.} = object of math_Function ##
                                                                                       ## !
                                                                                       ## Constructor
                                                                                       ## of
                                                                                       ## linear
                                                                                       ## batten
                                                                                       ## with
                                                                                       ##
                                                                                       ## !
                                                                                       ## Heigth
                                                                                       ## :
                                                                                       ## the
                                                                                       ## Heigth
                                                                                       ## at
                                                                                       ## the
                                                                                       ## middle
                                                                                       ## point
                                                                                       ##
                                                                                       ## !
                                                                                       ## Slope
                                                                                       ## :
                                                                                       ## the
                                                                                       ## geometric
                                                                                       ## slope
                                                                                       ## of
                                                                                       ## the
                                                                                       ## batten
                                                                                       ##
                                                                                       ## !
                                                                                       ## Sliding
                                                                                       ## :
                                                                                       ## Active
                                                                                       ## Length
                                                                                       ## of
                                                                                       ## the
                                                                                       ## batten
                                                                                       ## without
                                                                                       ## extension


proc constructFairCurve_BattenLaw*(Heigth: Standard_Real; Slope: Standard_Real;
                                  Sliding: Standard_Real): FairCurve_BattenLaw {.
    constructor, importcpp: "FairCurve_BattenLaw(@)",
    header: "FairCurve_BattenLaw.hxx".}
proc SetSliding*(this: var FairCurve_BattenLaw; Sliding: Standard_Real) {.
    importcpp: "SetSliding", header: "FairCurve_BattenLaw.hxx".}
proc SetHeigth*(this: var FairCurve_BattenLaw; Heigth: Standard_Real) {.
    importcpp: "SetHeigth", header: "FairCurve_BattenLaw.hxx".}
proc SetSlope*(this: var FairCurve_BattenLaw; Slope: Standard_Real) {.
    importcpp: "SetSlope", header: "FairCurve_BattenLaw.hxx".}
proc Value*(this: var FairCurve_BattenLaw; T: Standard_Real;
           THeigth: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "FairCurve_BattenLaw.hxx".}