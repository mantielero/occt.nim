##  Created on: 1992-02-11
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real

discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
type
  IntAna2d_Conic* {.importcpp: "IntAna2d_Conic", header: "IntAna2d_Conic.hxx", bycopy.} = object


proc constructIntAna2d_Conic*(C: gp_Circ2d): IntAna2d_Conic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2d_Conic*(C: gp_Lin2d): IntAna2d_Conic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2d_Conic*(C: gp_Parab2d): IntAna2d_Conic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2d_Conic*(C: gp_Hypr2d): IntAna2d_Conic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2d_Conic*(C: gp_Elips2d): IntAna2d_Conic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc Value*(this: IntAna2d_Conic; X: Standard_Real; Y: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "IntAna2d_Conic.hxx".}
proc Grad*(this: IntAna2d_Conic; X: Standard_Real; Y: Standard_Real): gp_XY {.
    noSideEffect, importcpp: "Grad", header: "IntAna2d_Conic.hxx".}
proc ValAndGrad*(this: IntAna2d_Conic; X: Standard_Real; Y: Standard_Real;
                Val: var Standard_Real; Grd: var gp_XY) {.noSideEffect,
    importcpp: "ValAndGrad", header: "IntAna2d_Conic.hxx".}
proc Coefficients*(this: IntAna2d_Conic; A: var Standard_Real; B: var Standard_Real;
                  C: var Standard_Real; D: var Standard_Real; E: var Standard_Real;
                  F: var Standard_Real) {.noSideEffect, importcpp: "Coefficients",
                                       header: "IntAna2d_Conic.hxx".}
proc NewCoefficients*(this: IntAna2d_Conic; A: var Standard_Real;
                     B: var Standard_Real; C: var Standard_Real; D: var Standard_Real;
                     E: var Standard_Real; F: var Standard_Real; Axis: gp_Ax2d) {.
    noSideEffect, importcpp: "NewCoefficients", header: "IntAna2d_Conic.hxx".}