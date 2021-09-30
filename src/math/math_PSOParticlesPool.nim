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

## ! Describes particle pool for using in PSO algorithm.
## ! Indexes:
## ! 0 <= aDimidx <= myDimensionCount - 1

type
  PSO_Particle* {.importcpp: "PSO_Particle", header: "math_PSOParticlesPool.hxx",
                 bycopy.} = object
    position* {.importc: "Position".}: ptr cfloat ##  Data for pointers allocated within PSOParticlesPool instance.
    velocity* {.importc: "Velocity".}: ptr cfloat ##  Not need to delete it manually.
    bestPosition* {.importc: "BestPosition".}: ptr cfloat
    distance* {.importc: "Distance".}: cfloat
    bestDistance* {.importc: "BestDistance".}: cfloat


proc constructPSO_Particle*(): PSO_Particle {.constructor,
    importcpp: "PSO_Particle(@)", header: "math_PSOParticlesPool.hxx".}
proc `<`*(this: PSO_Particle; thePnt: PSO_Particle): bool {.noSideEffect,
    importcpp: "(# < #)", header: "math_PSOParticlesPool.hxx".}
##  Indexes:
##  1 <= aParticleIdx <= myParticlesCount

type
  MathPSOParticlesPool* {.importcpp: "math_PSOParticlesPool",
                         header: "math_PSOParticlesPool.hxx", bycopy.} = object
    ##  Stores particles vector data.


proc constructMathPSOParticlesPool*(theParticlesCount: cint;
                                   theDimensionCount: cint): MathPSOParticlesPool {.
    constructor, importcpp: "math_PSOParticlesPool(@)",
    header: "math_PSOParticlesPool.hxx".}
proc getParticle*(this: var MathPSOParticlesPool; theIdx: cint): ptr PSO_Particle {.
    importcpp: "GetParticle", header: "math_PSOParticlesPool.hxx".}
proc getBestParticle*(this: var MathPSOParticlesPool): ptr PSO_Particle {.
    importcpp: "GetBestParticle", header: "math_PSOParticlesPool.hxx".}
proc getWorstParticle*(this: var MathPSOParticlesPool): ptr PSO_Particle {.
    importcpp: "GetWorstParticle", header: "math_PSOParticlesPool.hxx".}
proc destroyMathPSOParticlesPool*(this: var MathPSOParticlesPool) {.
    importcpp: "#.~math_PSOParticlesPool()", header: "math_PSOParticlesPool.hxx".}

























