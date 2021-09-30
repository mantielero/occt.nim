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

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dEvaluator* {.importcpp: "Geom2dEvaluator", header: "Geom2dEvaluator.hxx",
                    bycopy.} = object


proc `new`*(this: var Geom2dEvaluator; theSize: csize_t): pointer {.
    importcpp: "Geom2dEvaluator::operator new", header: "Geom2dEvaluator.hxx".}
proc `delete`*(this: var Geom2dEvaluator; theAddress: pointer) {.
    importcpp: "Geom2dEvaluator::operator delete", header: "Geom2dEvaluator.hxx".}
proc `new[]`*(this: var Geom2dEvaluator; theSize: csize_t): pointer {.
    importcpp: "Geom2dEvaluator::operator new[]", header: "Geom2dEvaluator.hxx".}
proc `delete[]`*(this: var Geom2dEvaluator; theAddress: pointer) {.
    importcpp: "Geom2dEvaluator::operator delete[]", header: "Geom2dEvaluator.hxx".}
proc `new`*(this: var Geom2dEvaluator; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dEvaluator::operator new", header: "Geom2dEvaluator.hxx".}
proc `delete`*(this: var Geom2dEvaluator; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dEvaluator::operator delete", header: "Geom2dEvaluator.hxx".}
proc calculateD0*(theValue: var Pnt2d; theD1: Vec2d; theOffset: StandardReal) {.
    importcpp: "Geom2dEvaluator::CalculateD0(@)", header: "Geom2dEvaluator.hxx".}
proc calculateD1*(theValue: var Pnt2d; theD1: var Vec2d; theD2: Vec2d;
                 theOffset: StandardReal) {.
    importcpp: "Geom2dEvaluator::CalculateD1(@)", header: "Geom2dEvaluator.hxx".}
proc calculateD2*(theValue: var Pnt2d; theD1: var Vec2d; theD2: var Vec2d; theD3: Vec2d;
                 theIsDirChange: StandardBoolean; theOffset: StandardReal) {.
    importcpp: "Geom2dEvaluator::CalculateD2(@)", header: "Geom2dEvaluator.hxx".}
proc calculateD3*(theValue: var Pnt2d; theD1: var Vec2d; theD2: var Vec2d;
                 theD3: var Vec2d; theD4: Vec2d; theIsDirChange: StandardBoolean;
                 theOffset: StandardReal) {.
    importcpp: "Geom2dEvaluator::CalculateD3(@)", header: "Geom2dEvaluator.hxx".}
proc adjustDerivative*(theMaxDerivative: int; theU: StandardReal; theD1: var Vec2d;
                      theD2: var Vec2d; theD3: var Vec2d; theD4: var Vec2d): StandardBoolean {.
    importcpp: "Geom2dEvaluator::AdjustDerivative(@)",
    header: "Geom2dEvaluator.hxx".}