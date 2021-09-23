##  Created on: 1992-05-06
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
type
  IntSurf_PntOn2S* {.importcpp: "IntSurf_PntOn2S", header: "IntSurf_PntOn2S.hxx",
                    bycopy.} = object ## ! Empty constructor.


proc constructIntSurf_PntOn2S*(): IntSurf_PntOn2S {.constructor,
    importcpp: "IntSurf_PntOn2S(@)", header: "IntSurf_PntOn2S.hxx".}
proc SetValue*(this: var IntSurf_PntOn2S; Pt: gp_Pnt) {.importcpp: "SetValue",
    header: "IntSurf_PntOn2S.hxx".}
proc SetValue*(this: var IntSurf_PntOn2S; Pt: gp_Pnt; OnFirst: Standard_Boolean;
              U: Standard_Real; V: Standard_Real) {.importcpp: "SetValue",
    header: "IntSurf_PntOn2S.hxx".}
proc SetValue*(this: var IntSurf_PntOn2S; Pt: gp_Pnt; U1: Standard_Real;
              V1: Standard_Real; U2: Standard_Real; V2: Standard_Real) {.
    importcpp: "SetValue", header: "IntSurf_PntOn2S.hxx".}
proc SetValue*(this: var IntSurf_PntOn2S; OnFirst: Standard_Boolean; U: Standard_Real;
              V: Standard_Real) {.importcpp: "SetValue",
                                header: "IntSurf_PntOn2S.hxx".}
proc SetValue*(this: var IntSurf_PntOn2S; U1: Standard_Real; V1: Standard_Real;
              U2: Standard_Real; V2: Standard_Real) {.importcpp: "SetValue",
    header: "IntSurf_PntOn2S.hxx".}
proc Value*(this: IntSurf_PntOn2S): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "IntSurf_PntOn2S.hxx".}
proc ValueOnSurface*(this: IntSurf_PntOn2S; OnFirst: Standard_Boolean): gp_Pnt2d {.
    noSideEffect, importcpp: "ValueOnSurface", header: "IntSurf_PntOn2S.hxx".}
proc ParametersOnS1*(this: IntSurf_PntOn2S; U1: var Standard_Real;
                    V1: var Standard_Real) {.noSideEffect,
    importcpp: "ParametersOnS1", header: "IntSurf_PntOn2S.hxx".}
proc ParametersOnS2*(this: IntSurf_PntOn2S; U2: var Standard_Real;
                    V2: var Standard_Real) {.noSideEffect,
    importcpp: "ParametersOnS2", header: "IntSurf_PntOn2S.hxx".}
proc ParametersOnSurface*(this: IntSurf_PntOn2S; OnFirst: Standard_Boolean;
                         U: var Standard_Real; V: var Standard_Real) {.noSideEffect,
    importcpp: "ParametersOnSurface", header: "IntSurf_PntOn2S.hxx".}
proc Parameters*(this: IntSurf_PntOn2S; U1: var Standard_Real; V1: var Standard_Real;
                U2: var Standard_Real; V2: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "IntSurf_PntOn2S.hxx".}
proc IsSame*(this: IntSurf_PntOn2S; theOtherPoint: IntSurf_PntOn2S;
            theTol3D: Standard_Real = 0.0; theTol2D: Standard_Real = -1.0): Standard_Boolean {.
    noSideEffect, importcpp: "IsSame", header: "IntSurf_PntOn2S.hxx".}