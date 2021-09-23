##  Created on: 1992-08-28
##  Created by: Remi LEQUETTE
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
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dEvaluator* {.importcpp: "Geom2dEvaluator", header: "Geom2dEvaluator.hxx",
                    bycopy.} = object ## ! Recalculate D1 values of base curve into D0 value of offset curve


proc CalculateD0*(theValue: var gp_Pnt2d; theD1: gp_Vec2d; theOffset: Standard_Real) {.
    importcpp: "Geom2dEvaluator::CalculateD0(@)", header: "Geom2dEvaluator.hxx".}
proc CalculateD1*(theValue: var gp_Pnt2d; theD1: var gp_Vec2d; theD2: gp_Vec2d;
                 theOffset: Standard_Real) {.
    importcpp: "Geom2dEvaluator::CalculateD1(@)", header: "Geom2dEvaluator.hxx".}
proc CalculateD2*(theValue: var gp_Pnt2d; theD1: var gp_Vec2d; theD2: var gp_Vec2d;
                 theD3: gp_Vec2d; theIsDirChange: Standard_Boolean;
                 theOffset: Standard_Real) {.
    importcpp: "Geom2dEvaluator::CalculateD2(@)", header: "Geom2dEvaluator.hxx".}
proc CalculateD3*(theValue: var gp_Pnt2d; theD1: var gp_Vec2d; theD2: var gp_Vec2d;
                 theD3: var gp_Vec2d; theD4: gp_Vec2d;
                 theIsDirChange: Standard_Boolean; theOffset: Standard_Real) {.
    importcpp: "Geom2dEvaluator::CalculateD3(@)", header: "Geom2dEvaluator.hxx".}
proc AdjustDerivative*(theMaxDerivative: Standard_Integer; theU: Standard_Real;
                      theD1: var gp_Vec2d; theD2: var gp_Vec2d; theD3: var gp_Vec2d;
                      theD4: var gp_Vec2d): Standard_Boolean {.
    importcpp: "Geom2dEvaluator::AdjustDerivative(@)",
    header: "Geom2dEvaluator.hxx".}