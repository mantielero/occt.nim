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
  Select3D_Pnt* {.importcpp: "Select3D_Pnt", header: "Select3D_Pnt.hxx", bycopy.} = object
    x* {.importc: "x".}: StandardShortReal
    y* {.importc: "y".}: StandardShortReal
    z* {.importc: "z".}: StandardShortReal


converter `gpPnt`*(this: Select3D_Pnt): GpPnt {.noSideEffect,
    importcpp: "Select3D_Pnt::operator gp_Pnt", header: "Select3D_Pnt.hxx".}
converter `gpXYZ`*(this: Select3D_Pnt): GpXYZ {.noSideEffect,
    importcpp: "Select3D_Pnt::operator gp_XYZ", header: "Select3D_Pnt.hxx".}

