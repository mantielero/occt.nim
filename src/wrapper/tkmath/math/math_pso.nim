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
type
  MathPSO* {.importcpp: "math_PSO", header: "math_PSO.hxx", bycopy.} = object ## *
                                                                      ##  Constructor.
                                                                      ##
                                                                      ##  @param theFunc defines the objective function. It should exist during all lifetime of class instance.
                                                                      ##  @param theLowBorder defines lower border of search space.
                                                                      ##  @param theUppBorder defines upper border of search space.
                                                                      ##  @param theSteps defines steps of regular grid, used for particle generation.
                                                                      ##                     This parameter used to define stop condition (TerminalVelocity).
                                                                      ##  @param theNbParticles defines number of particles.
                                                                      ##  @param theNbIter defines maximum number of iterations.
                                                                      ##
    ##  Lower border.
    ##  Upper border.
    ##  steps used in PSO algorithm.
    ##  Dimension count.
    ##  Particles number.


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