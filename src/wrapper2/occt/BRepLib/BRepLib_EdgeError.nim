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

## ! Errors that can occur at edge construction.
## ! no error

type
  BRepLib_EdgeError* {.size: sizeof(cint), importcpp: "BRepLib_EdgeError",
                      header: "BRepLib_EdgeError.hxx".} = enum
    BRepLib_EdgeDone, BRepLib_PointProjectionFailed, BRepLib_ParameterOutOfRange,
    BRepLib_DifferentPointsOnClosedCurve, BRepLib_PointWithInfiniteParameter,
    BRepLib_DifferentsPointAndParameter, BRepLib_LineThroughIdenticPoints
