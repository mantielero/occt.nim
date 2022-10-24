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

## ! Describes particle pool for using in PSO algorithm.
## ! Indexes:
## ! 0 <= aDimidx <= myDimensionCount - 1



proc newPSO_Particle*(): PSO_Particle {.cdecl, constructor,
                                     importcpp: "PSO_Particle(@)", header: "math_PSOParticlesPool.hxx".}
proc `<`*(this: PSO_Particle; thePnt: PSO_Particle): bool {.noSideEffect, cdecl,
    importcpp: "(# < #)", header: "math_PSOParticlesPool.hxx".}
##  Indexes:
##  1 <= aParticleIdx <= myParticlesCount



proc newMathPSOParticlesPool*(theParticlesCount: cint; theDimensionCount: cint): MathPSOParticlesPool {.
    cdecl, constructor, importcpp: "math_PSOParticlesPool(@)", header: "math_PSOParticlesPool.hxx".}
proc getParticle*(this: var MathPSOParticlesPool; theIdx: cint): ptr PSO_Particle {.
    cdecl, importcpp: "GetParticle", header: "math_PSOParticlesPool.hxx".}
proc getBestParticle*(this: var MathPSOParticlesPool): ptr PSO_Particle {.cdecl,
    importcpp: "GetBestParticle", header: "math_PSOParticlesPool.hxx".}
proc getWorstParticle*(this: var MathPSOParticlesPool): ptr PSO_Particle {.cdecl,
    importcpp: "GetWorstParticle", header: "math_PSOParticlesPool.hxx".}
proc destroyMathPSOParticlesPool*(this: var MathPSOParticlesPool) {.cdecl,
    importcpp: "#.~math_PSOParticlesPool()", header: "math_PSOParticlesPool.hxx".}
