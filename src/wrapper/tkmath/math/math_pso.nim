import math_types

##  Created on: 2014-07-18
##  Created by: Alexander Malyshev
##  Copyright (c) 2014-2014 OPEN CASCADE SAS
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

discard "forward decl of math_PSOParticlesPool"


proc newMathPSO*(theFunc: ptr MathMultipleVarFunction; theLowBorder: MathVector;
                theUppBorder: MathVector; theSteps: MathVector;
                theNbParticles: cint = 32; theNbIter: cint = 100): MathPSO {.cdecl,
    constructor, importcpp: "math_PSO(@)", header: "math_PSO.hxx".}
proc perform*(this: var MathPSO; theSteps: MathVector; theValue: var cfloat;
             theOutPnt: var MathVector; theNbIter: cint = 100) {.cdecl,
    importcpp: "Perform", header: "math_PSO.hxx".}
proc perform*(this: var MathPSO; theParticles: var MathPSOParticlesPool;
             theNbParticles: cint; theValue: var cfloat; theOutPnt: var MathVector;
             theNbIter: cint = 100) {.cdecl, importcpp: "Perform", header: "math_PSO.hxx".}
