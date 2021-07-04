##  Created on: 2013-0603
##  Created by: Roman LYGIN
##  Copyright (c) 2013-2013 OPEN CASCADE SAS
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
  ../NCollection/NCollection_StdAllocator

##  Defines a dynamic vector of work data.

type
  IntWalk_WalkingData* {.importcpp: "IntWalk_WalkingData",
                        header: "IntWalk_VectorOfWalkingData.hxx", bycopy.} = object
    ustart* {.importc: "ustart".}: Standard_Real
    vstart* {.importc: "vstart".}: Standard_Real
    etat* {.importc: "etat".}: Standard_Integer

  IntWalk_VectorOfWalkingData* = vector[IntWalk_WalkingData, NCollection_StdAllocator[
      IntWalk_WalkingData]]