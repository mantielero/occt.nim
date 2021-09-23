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

import
  ../NCollection/NCollection_Array1

## ! Describes particle pool for using in PSO algorithm.
## ! Indexes:
## ! 0 <= aDimidx <= myDimensionCount - 1

type
  PSO_Particle* {.importcpp: "PSO_Particle", header: "math_PSOParticlesPool.hxx",
                 bycopy.} = object
    Position* {.importc: "Position".}: ptr Standard_Real ##  Data for pointers allocated within PSOParticlesPool instance.
    Velocity* {.importc: "Velocity".}: ptr Standard_Real ##  Not need to delete it manually.
    BestPosition* {.importc: "BestPosition".}: ptr Standard_Real
    Distance* {.importc: "Distance".}: Standard_Real
    BestDistance* {.importc: "BestDistance".}: Standard_Real


proc constructPSO_Particle*(): PSO_Particle {.constructor,
    importcpp: "PSO_Particle(@)", header: "math_PSOParticlesPool.hxx".}
proc `<`*(this: PSO_Particle; thePnt: PSO_Particle): bool {.noSideEffect,
    importcpp: "(# < #)", header: "math_PSOParticlesPool.hxx".}
##  Indexes:
##  1 <= aParticleIdx <= myParticlesCount

type
  math_PSOParticlesPool* {.importcpp: "math_PSOParticlesPool",
                          header: "math_PSOParticlesPool.hxx", bycopy.} = object
    ##  Stores particles vector data.


proc constructmath_PSOParticlesPool*(theParticlesCount: Standard_Integer;
                                    theDimensionCount: Standard_Integer): math_PSOParticlesPool {.
    constructor, importcpp: "math_PSOParticlesPool(@)",
    header: "math_PSOParticlesPool.hxx".}
proc GetParticle*(this: var math_PSOParticlesPool; theIdx: Standard_Integer): ptr PSO_Particle {.
    importcpp: "GetParticle", header: "math_PSOParticlesPool.hxx".}
proc GetBestParticle*(this: var math_PSOParticlesPool): ptr PSO_Particle {.
    importcpp: "GetBestParticle", header: "math_PSOParticlesPool.hxx".}
proc GetWorstParticle*(this: var math_PSOParticlesPool): ptr PSO_Particle {.
    importcpp: "GetWorstParticle", header: "math_PSOParticlesPool.hxx".}
proc destroymath_PSOParticlesPool*(this: var math_PSOParticlesPool) {.
    importcpp: "#.~math_PSOParticlesPool()", header: "math_PSOParticlesPool.hxx".}