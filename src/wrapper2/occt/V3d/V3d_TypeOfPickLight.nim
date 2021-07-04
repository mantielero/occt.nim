##  Created on: 1992-11-13
##  Created by: GG
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

type
  V3d_TypeOfPickLight* {.size: sizeof(cint), importcpp: "V3d_TypeOfPickLight",
                        header: "V3d_TypeOfPickLight.hxx".} = enum
    V3d_POSITIONLIGHT, V3d_SPACELIGHT, V3d_RADIUSTEXTLIGHT, V3d_ExtRADIUSLIGHT,
    V3d_IntRADIUSLIGHT, V3d_NOTHING
