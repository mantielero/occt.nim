##  Created on: 1994-06-24
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../IntRes2d/IntRes2d_Intersection,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Bisector_Bisec"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Bisector_BisecCC"
discard "forward decl of Geom2d_Line"
type
  Bisector_Inter* {.importcpp: "Bisector_Inter", header: "Bisector_Inter.hxx", bycopy.} = object of IntRes2d_Intersection ##
                                                                                                                ## !
                                                                                                                ## Intersection
                                                                                                                ## between
                                                                                                                ## 2
                                                                                                                ## curves.


proc constructBisector_Inter*(): Bisector_Inter {.constructor,
    importcpp: "Bisector_Inter(@)", header: "Bisector_Inter.hxx".}
proc constructBisector_Inter*(C1: Bisector_Bisec; D1: IntRes2d_Domain;
                             C2: Bisector_Bisec; D2: IntRes2d_Domain;
                             TolConf: Standard_Real; Tol: Standard_Real;
                             ComunElement: Standard_Boolean): Bisector_Inter {.
    constructor, importcpp: "Bisector_Inter(@)", header: "Bisector_Inter.hxx".}
proc Perform*(this: var Bisector_Inter; C1: Bisector_Bisec; D1: IntRes2d_Domain;
             C2: Bisector_Bisec; D2: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real; ComunElement: Standard_Boolean) {.
    importcpp: "Perform", header: "Bisector_Inter.hxx".}