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

## ! Gives    a  simple  indexed   representation  of a
## ! Directing Edge topology.

type
  SweepNumShape* {.importcpp: "Sweep_NumShape", header: "Sweep_NumShape.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## a
                                                                                        ## dummy
                                                                                        ## indexed
                                                                                        ## edge.


proc constructSweepNumShape*(): SweepNumShape {.constructor,
    importcpp: "Sweep_NumShape(@)", header: "Sweep_NumShape.hxx".}
proc constructSweepNumShape*(index: cint; `type`: TopAbsShapeEnum;
                            closed: bool = false; begInf: bool = false;
                            endInf: bool = false): SweepNumShape {.constructor,
    importcpp: "Sweep_NumShape(@)", header: "Sweep_NumShape.hxx".}
proc init*(this: var SweepNumShape; index: cint; `type`: TopAbsShapeEnum;
          closed: bool = false; begInf: bool = false; endInf: bool = false) {.
    importcpp: "Init", header: "Sweep_NumShape.hxx".}
proc index*(this: SweepNumShape): cint {.noSideEffect, importcpp: "Index",
                                     header: "Sweep_NumShape.hxx".}
proc `type`*(this: SweepNumShape): TopAbsShapeEnum {.noSideEffect, importcpp: "Type",
    header: "Sweep_NumShape.hxx".}
proc closed*(this: SweepNumShape): bool {.noSideEffect, importcpp: "Closed",
                                      header: "Sweep_NumShape.hxx".}
proc begInfinite*(this: SweepNumShape): bool {.noSideEffect,
    importcpp: "BegInfinite", header: "Sweep_NumShape.hxx".}
proc endInfinite*(this: SweepNumShape): bool {.noSideEffect,
    importcpp: "EndInfinite", header: "Sweep_NumShape.hxx".}
proc orientation*(this: SweepNumShape): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "Sweep_NumShape.hxx".}

























