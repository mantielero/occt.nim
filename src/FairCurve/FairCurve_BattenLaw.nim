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

## ! This class compute the Heigth of an batten

type
  FairCurveBattenLaw* {.importcpp: "FairCurve_BattenLaw",
                       header: "FairCurve_BattenLaw.hxx", bycopy.} = object of MathFunction ##
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


proc constructFairCurveBattenLaw*(heigth: cfloat; slope: cfloat; sliding: cfloat): FairCurveBattenLaw {.
    constructor, importcpp: "FairCurve_BattenLaw(@)",
    header: "FairCurve_BattenLaw.hxx".}
proc setSliding*(this: var FairCurveBattenLaw; sliding: cfloat) {.
    importcpp: "SetSliding", header: "FairCurve_BattenLaw.hxx".}
proc setHeigth*(this: var FairCurveBattenLaw; heigth: cfloat) {.
    importcpp: "SetHeigth", header: "FairCurve_BattenLaw.hxx".}
proc setSlope*(this: var FairCurveBattenLaw; slope: cfloat) {.importcpp: "SetSlope",
    header: "FairCurve_BattenLaw.hxx".}
proc value*(this: var FairCurveBattenLaw; t: cfloat; tHeigth: var cfloat): bool {.
    importcpp: "Value", header: "FairCurve_BattenLaw.hxx".}

























