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

import
  ../IntRes2d/IntRes2d_Domain, ../IntRes2d/IntRes2d_Position,
  ../IntRes2d/IntRes2d_Transition, ../gp/gp_Vec2d, ../gp/gp_Pnt2d

proc NormalizeOnDomain*(a1: var Standard_Real; a2: IntRes2d_Domain): Standard_Real {.
    importcpp: "NormalizeOnDomain(@)", header: "IntImpParGen_Tool.hxx".}
proc Determine_Position*(a1: var IntRes2d_Position; a2: IntRes2d_Domain; a3: gp_Pnt2d;
                        a4: Standard_Real) {.importcpp: "Determine_Position(@)",
    header: "IntImpParGen_Tool.hxx".}
proc Determine_Transition*(Pos1: IntRes2d_Position; Tan1: var gp_Vec2d;
                          Norm1: gp_Vec2d; Trans1: var IntRes2d_Transition;
                          Pos2: IntRes2d_Position; Tan2: var gp_Vec2d;
                          Norm2: gp_Vec2d; Trans2: var IntRes2d_Transition;
                          ToleranceAng: Standard_Real) {.
    importcpp: "Determine_Transition(@)", header: "IntImpParGen_Tool.hxx".}