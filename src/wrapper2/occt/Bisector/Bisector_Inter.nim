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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Bisector_Bisec"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Bisector_BisecCC"
discard "forward decl of Geom2d_Line"
type
  BisectorInter* {.importcpp: "Bisector_Inter", header: "Bisector_Inter.hxx", bycopy.} = object of IntRes2dIntersection ##
                                                                                                              ## !
                                                                                                              ## Intersection
                                                                                                              ## between
                                                                                                              ## 2
                                                                                                              ## curves.


proc constructBisectorInter*(): BisectorInter {.constructor,
    importcpp: "Bisector_Inter(@)", header: "Bisector_Inter.hxx".}
proc constructBisectorInter*(c1: BisectorBisec; d1: IntRes2dDomain;
                            c2: BisectorBisec; d2: IntRes2dDomain;
                            tolConf: StandardReal; tol: StandardReal;
                            comunElement: StandardBoolean): BisectorInter {.
    constructor, importcpp: "Bisector_Inter(@)", header: "Bisector_Inter.hxx".}
proc perform*(this: var BisectorInter; c1: BisectorBisec; d1: IntRes2dDomain;
             c2: BisectorBisec; d2: IntRes2dDomain; tolConf: StandardReal;
             tol: StandardReal; comunElement: StandardBoolean) {.
    importcpp: "Perform", header: "Bisector_Inter.hxx".}

