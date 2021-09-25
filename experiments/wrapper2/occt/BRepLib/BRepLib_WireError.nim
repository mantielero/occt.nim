##  Created on: 1993-12-15
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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

## ! Errors that can occur at wire construction.
## ! no error

type
  BRepLibWireError* {.size: sizeof(cint), importcpp: "BRepLib_WireError",
                     header: "BRepLib_WireError.hxx".} = enum
    BRepLibWireDone, BRepLibEmptyWire, BRepLibDisconnectedWire,
    BRepLibNonManifoldWire


