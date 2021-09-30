##  Created on: 1997-01-09
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1997-1999 Matra Datavision
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

type
  TopOpeBRepBipoint* {.importcpp: "TopOpeBRep_Bipoint",
                      header: "TopOpeBRep_Bipoint.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepBipoint; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_Bipoint::operator new",
    header: "TopOpeBRep_Bipoint.hxx".}
proc `delete`*(this: var TopOpeBRepBipoint; theAddress: pointer) {.
    importcpp: "TopOpeBRep_Bipoint::operator delete",
    header: "TopOpeBRep_Bipoint.hxx".}
proc `new[]`*(this: var TopOpeBRepBipoint; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_Bipoint::operator new[]",
    header: "TopOpeBRep_Bipoint.hxx".}
proc `delete[]`*(this: var TopOpeBRepBipoint; theAddress: pointer) {.
    importcpp: "TopOpeBRep_Bipoint::operator delete[]",
    header: "TopOpeBRep_Bipoint.hxx".}
proc `new`*(this: var TopOpeBRepBipoint; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRep_Bipoint::operator new",
    header: "TopOpeBRep_Bipoint.hxx".}
proc `delete`*(this: var TopOpeBRepBipoint; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRep_Bipoint::operator delete",
    header: "TopOpeBRep_Bipoint.hxx".}
proc constructTopOpeBRepBipoint*(): TopOpeBRepBipoint {.constructor,
    importcpp: "TopOpeBRep_Bipoint(@)", header: "TopOpeBRep_Bipoint.hxx".}
proc constructTopOpeBRepBipoint*(i1: int; i2: int): TopOpeBRepBipoint {.constructor,
    importcpp: "TopOpeBRep_Bipoint(@)", header: "TopOpeBRep_Bipoint.hxx".}
proc i1*(this: TopOpeBRepBipoint): int {.noSideEffect, importcpp: "I1",
                                     header: "TopOpeBRep_Bipoint.hxx".}
proc i2*(this: TopOpeBRepBipoint): int {.noSideEffect, importcpp: "I2",
                                     header: "TopOpeBRep_Bipoint.hxx".}