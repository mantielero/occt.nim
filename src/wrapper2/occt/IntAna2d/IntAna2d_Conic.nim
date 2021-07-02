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

discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
type
  IntAna2dConic* {.importcpp: "IntAna2d_Conic", header: "IntAna2d_Conic.hxx", bycopy.} = object


proc constructIntAna2dConic*(c: GpCirc2d): IntAna2dConic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2dConic*(c: GpLin2d): IntAna2dConic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2dConic*(c: GpParab2d): IntAna2dConic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2dConic*(c: GpHypr2d): IntAna2dConic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2dConic*(c: GpElips2d): IntAna2dConic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc value*(this: IntAna2dConic; x: StandardReal; y: StandardReal): StandardReal {.
    noSideEffect, importcpp: "Value", header: "IntAna2d_Conic.hxx".}
proc grad*(this: IntAna2dConic; x: StandardReal; y: StandardReal): GpXY {.noSideEffect,
    importcpp: "Grad", header: "IntAna2d_Conic.hxx".}
proc valAndGrad*(this: IntAna2dConic; x: StandardReal; y: StandardReal;
                val: var StandardReal; grd: var GpXY) {.noSideEffect,
    importcpp: "ValAndGrad", header: "IntAna2d_Conic.hxx".}
proc coefficients*(this: IntAna2dConic; a: var StandardReal; b: var StandardReal;
                  c: var StandardReal; d: var StandardReal; e: var StandardReal;
                  f: var StandardReal) {.noSideEffect, importcpp: "Coefficients",
                                      header: "IntAna2d_Conic.hxx".}
proc newCoefficients*(this: IntAna2dConic; a: var StandardReal; b: var StandardReal;
                     c: var StandardReal; d: var StandardReal; e: var StandardReal;
                     f: var StandardReal; axis: GpAx2d) {.noSideEffect,
    importcpp: "NewCoefficients", header: "IntAna2d_Conic.hxx".}

