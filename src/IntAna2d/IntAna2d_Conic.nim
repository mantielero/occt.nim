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


proc constructIntAna2dConic*(c: Circ2d): IntAna2dConic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2dConic*(c: Lin2d): IntAna2dConic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2dConic*(c: Parab2d): IntAna2dConic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2dConic*(c: Hypr2d): IntAna2dConic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc constructIntAna2dConic*(c: Elips2d): IntAna2dConic {.constructor,
    importcpp: "IntAna2d_Conic(@)", header: "IntAna2d_Conic.hxx".}
proc value*(this: IntAna2dConic; x: cfloat; y: cfloat): cfloat {.noSideEffect,
    importcpp: "Value", header: "IntAna2d_Conic.hxx".}
proc grad*(this: IntAna2dConic; x: cfloat; y: cfloat): Xy {.noSideEffect,
    importcpp: "Grad", header: "IntAna2d_Conic.hxx".}
proc valAndGrad*(this: IntAna2dConic; x: cfloat; y: cfloat; val: var cfloat; grd: var Xy) {.
    noSideEffect, importcpp: "ValAndGrad", header: "IntAna2d_Conic.hxx".}
proc coefficients*(this: IntAna2dConic; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat; e: var cfloat; f: var cfloat) {.noSideEffect,
    importcpp: "Coefficients", header: "IntAna2d_Conic.hxx".}
proc newCoefficients*(this: IntAna2dConic; a: var cfloat; b: var cfloat; c: var cfloat;
                     d: var cfloat; e: var cfloat; f: var cfloat; axis: Ax2d) {.
    noSideEffect, importcpp: "NewCoefficients", header: "IntAna2d_Conic.hxx".}

























