##  Created on: 1992-06-10
##  Created by: Laurent BUCHARD
##  Copyright (c) 1992-1999 Matra Datavision
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

proc normalizeOnDomain*(a1: var StandardReal; a2: IntRes2dDomain): StandardReal {.
    importcpp: "NormalizeOnDomain(@)", header: "IntImpParGen_Tool.hxx".}
proc determinePosition*(a1: var IntRes2dPosition; a2: IntRes2dDomain; a3: GpPnt2d;
                       a4: StandardReal) {.importcpp: "Determine_Position(@)",
    header: "IntImpParGen_Tool.hxx".}
proc determineTransition*(pos1: IntRes2dPosition; tan1: var GpVec2d; norm1: GpVec2d;
                         trans1: var IntRes2dTransition; pos2: IntRes2dPosition;
                         tan2: var GpVec2d; norm2: GpVec2d;
                         trans2: var IntRes2dTransition; toleranceAng: StandardReal) {.
    importcpp: "Determine_Transition(@)", header: "IntImpParGen_Tool.hxx".}

