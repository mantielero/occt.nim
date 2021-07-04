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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopOpeBRep_PPntOn2S, ../Standard/Standard_Real

discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
type
  TopOpeBRep_WPointInter* {.importcpp: "TopOpeBRep_WPointInter",
                           header: "TopOpeBRep_WPointInter.hxx", bycopy.} = object


proc constructTopOpeBRep_WPointInter*(): TopOpeBRep_WPointInter {.constructor,
    importcpp: "TopOpeBRep_WPointInter(@)", header: "TopOpeBRep_WPointInter.hxx".}
proc Set*(this: var TopOpeBRep_WPointInter; P: IntSurf_PntOn2S) {.importcpp: "Set",
    header: "TopOpeBRep_WPointInter.hxx".}
proc ParametersOnS1*(this: TopOpeBRep_WPointInter; U: var Standard_Real;
                    V: var Standard_Real) {.noSideEffect,
    importcpp: "ParametersOnS1", header: "TopOpeBRep_WPointInter.hxx".}
proc ParametersOnS2*(this: TopOpeBRep_WPointInter; U: var Standard_Real;
                    V: var Standard_Real) {.noSideEffect,
    importcpp: "ParametersOnS2", header: "TopOpeBRep_WPointInter.hxx".}
proc Parameters*(this: TopOpeBRep_WPointInter; U1: var Standard_Real;
                V1: var Standard_Real; U2: var Standard_Real; V2: var Standard_Real) {.
    noSideEffect, importcpp: "Parameters", header: "TopOpeBRep_WPointInter.hxx".}
proc ValueOnS1*(this: TopOpeBRep_WPointInter): gp_Pnt2d {.noSideEffect,
    importcpp: "ValueOnS1", header: "TopOpeBRep_WPointInter.hxx".}
proc ValueOnS2*(this: TopOpeBRep_WPointInter): gp_Pnt2d {.noSideEffect,
    importcpp: "ValueOnS2", header: "TopOpeBRep_WPointInter.hxx".}
proc Value*(this: TopOpeBRep_WPointInter): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "TopOpeBRep_WPointInter.hxx".}
proc PPntOn2SDummy*(this: TopOpeBRep_WPointInter): TopOpeBRep_PPntOn2S {.
    noSideEffect, importcpp: "PPntOn2SDummy", header: "TopOpeBRep_WPointInter.hxx".}