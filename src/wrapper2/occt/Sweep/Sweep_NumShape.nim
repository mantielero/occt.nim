##  Created on: 1993-02-03
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_ShapeEnum,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_Orientation

## ! Gives    a  simple  indexed   representation  of a
## ! Directing Edge topology.

type
  Sweep_NumShape* {.importcpp: "Sweep_NumShape", header: "Sweep_NumShape.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## dummy
                                                                                         ## indexed
                                                                                         ## edge.


proc constructSweep_NumShape*(): Sweep_NumShape {.constructor,
    importcpp: "Sweep_NumShape(@)", header: "Sweep_NumShape.hxx".}
proc constructSweep_NumShape*(Index: Standard_Integer; Type: TopAbs_ShapeEnum;
                             Closed: Standard_Boolean = Standard_False;
                             BegInf: Standard_Boolean = Standard_False;
                             EndInf: Standard_Boolean = Standard_False): Sweep_NumShape {.
    constructor, importcpp: "Sweep_NumShape(@)", header: "Sweep_NumShape.hxx".}
proc Init*(this: var Sweep_NumShape; Index: Standard_Integer; Type: TopAbs_ShapeEnum;
          Closed: Standard_Boolean = Standard_False;
          BegInf: Standard_Boolean = Standard_False;
          EndInf: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "Sweep_NumShape.hxx".}
proc Index*(this: Sweep_NumShape): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "Sweep_NumShape.hxx".}
proc Type*(this: Sweep_NumShape): TopAbs_ShapeEnum {.noSideEffect, importcpp: "Type",
    header: "Sweep_NumShape.hxx".}
proc Closed*(this: Sweep_NumShape): Standard_Boolean {.noSideEffect,
    importcpp: "Closed", header: "Sweep_NumShape.hxx".}
proc BegInfinite*(this: Sweep_NumShape): Standard_Boolean {.noSideEffect,
    importcpp: "BegInfinite", header: "Sweep_NumShape.hxx".}
proc EndInfinite*(this: Sweep_NumShape): Standard_Boolean {.noSideEffect,
    importcpp: "EndInfinite", header: "Sweep_NumShape.hxx".}
proc Orientation*(this: Sweep_NumShape): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "Sweep_NumShape.hxx".}