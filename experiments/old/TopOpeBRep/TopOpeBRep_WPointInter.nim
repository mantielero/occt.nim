##  Created on: 1993-11-10
##  Created by: Jean Yves LEBEY
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

discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
type
  TopOpeBRepWPointInter* {.importcpp: "TopOpeBRep_WPointInter",
                          header: "TopOpeBRep_WPointInter.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepWPointInter; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_WPointInter::operator new",
    header: "TopOpeBRep_WPointInter.hxx".}
proc `delete`*(this: var TopOpeBRepWPointInter; theAddress: pointer) {.
    importcpp: "TopOpeBRep_WPointInter::operator delete",
    header: "TopOpeBRep_WPointInter.hxx".}
proc `new[]`*(this: var TopOpeBRepWPointInter; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_WPointInter::operator new[]",
    header: "TopOpeBRep_WPointInter.hxx".}
proc `delete[]`*(this: var TopOpeBRepWPointInter; theAddress: pointer) {.
    importcpp: "TopOpeBRep_WPointInter::operator delete[]",
    header: "TopOpeBRep_WPointInter.hxx".}
proc `new`*(this: var TopOpeBRepWPointInter; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRep_WPointInter::operator new",
    header: "TopOpeBRep_WPointInter.hxx".}
proc `delete`*(this: var TopOpeBRepWPointInter; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRep_WPointInter::operator delete",
    header: "TopOpeBRep_WPointInter.hxx".}
proc constructTopOpeBRepWPointInter*(): TopOpeBRepWPointInter {.constructor,
    importcpp: "TopOpeBRep_WPointInter(@)", header: "TopOpeBRep_WPointInter.hxx".}
proc set*(this: var TopOpeBRepWPointInter; p: IntSurfPntOn2S) {.importcpp: "Set",
    header: "TopOpeBRep_WPointInter.hxx".}
proc parametersOnS1*(this: TopOpeBRepWPointInter; u: var StandardReal;
                    v: var StandardReal) {.noSideEffect,
                                        importcpp: "ParametersOnS1",
                                        header: "TopOpeBRep_WPointInter.hxx".}
proc parametersOnS2*(this: TopOpeBRepWPointInter; u: var StandardReal;
                    v: var StandardReal) {.noSideEffect,
                                        importcpp: "ParametersOnS2",
                                        header: "TopOpeBRep_WPointInter.hxx".}
proc parameters*(this: TopOpeBRepWPointInter; u1: var StandardReal;
                v1: var StandardReal; u2: var StandardReal; v2: var StandardReal) {.
    noSideEffect, importcpp: "Parameters", header: "TopOpeBRep_WPointInter.hxx".}
proc valueOnS1*(this: TopOpeBRepWPointInter): Pnt2d {.noSideEffect,
    importcpp: "ValueOnS1", header: "TopOpeBRep_WPointInter.hxx".}
proc valueOnS2*(this: TopOpeBRepWPointInter): Pnt2d {.noSideEffect,
    importcpp: "ValueOnS2", header: "TopOpeBRep_WPointInter.hxx".}
proc value*(this: TopOpeBRepWPointInter): Pnt {.noSideEffect, importcpp: "Value",
    header: "TopOpeBRep_WPointInter.hxx".}
proc pPntOn2SDummy*(this: TopOpeBRepWPointInter): TopOpeBRepPPntOn2S {.noSideEffect,
    importcpp: "PPntOn2SDummy", header: "TopOpeBRep_WPointInter.hxx".}