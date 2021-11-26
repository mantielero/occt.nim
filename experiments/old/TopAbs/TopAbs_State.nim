##  Created on: 1992-01-24
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

## ! Identifies the position of a vertex or a set of
## ! vertices relative to a region of a shape.
## ! The figure shown above illustrates the states of
## ! vertices found in various parts of the edge relative
## ! to the face which it intersects.

type
  TopAbsState* {.size: sizeof(cint), importcpp: "TopAbs_State",
                header: "TopAbs_State.hxx".} = enum
    TopAbsIN, TopAbsOUT, TopAbsON, TopAbsUNKNOWN

