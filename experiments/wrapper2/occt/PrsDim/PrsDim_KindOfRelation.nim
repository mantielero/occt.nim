##  Created on: 2016-11-25
##  Copyright (c) 2016 OPEN CASCADE SAS
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

type
  PrsDimKindOfRelation* {.size: sizeof(cint), importcpp: "PrsDim_KindOfRelation",
                         header: "PrsDim_KindOfRelation.hxx".} = enum
    PrsDimKOR_NONE = 0, PrsDimKOR_CONCENTRIC, PrsDimKOR_EQUALDISTANCE,
    PrsDimKOR_EQUALRADIUS, PrsDimKOR_FIX, PrsDimKOR_IDENTIC, PrsDimKOR_OFFSET,
    PrsDimKOR_PARALLEL, PrsDimKOR_PERPENDICULAR, PrsDimKOR_TANGENT,
    PrsDimKOR_SYMMETRIC



























