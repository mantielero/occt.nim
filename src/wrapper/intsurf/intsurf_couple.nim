import intsurf_types





##  Created on: 1992-03-25
##  Created by: Isabelle GRIGNON
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

## ! creation d 'un couple de 2 entiers



proc newIntSurfCouple*(): IntSurfCouple {.cdecl, constructor,
                                       importcpp: "IntSurf_Couple(@)",
                                       header: "IntSurf_Couple.hxx".}
proc newIntSurfCouple*(index1: cint; index2: cint): IntSurfCouple {.cdecl, constructor,
    importcpp: "IntSurf_Couple(@)", header: "IntSurf_Couple.hxx".}
proc first*(this: IntSurfCouple): cint {.noSideEffect, cdecl, importcpp: "First",
                                     header: "IntSurf_Couple.hxx".}
proc second*(this: IntSurfCouple): cint {.noSideEffect, cdecl, importcpp: "Second",
                                      header: "IntSurf_Couple.hxx".}


