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

import
  ../gp/gp_Pnt

type
  Select3D_Pnt* {.importcpp: "Select3D_Pnt", header: "Select3D_Pnt.hxx", bycopy.} = object
    x* {.importc: "x".}: Standard_ShortReal
    y* {.importc: "y".}: Standard_ShortReal
    z* {.importc: "z".}: Standard_ShortReal


converter `gp_Pnt`*(this: Select3D_Pnt): gp_Pnt {.noSideEffect,
    importcpp: "Select3D_Pnt::operator gp_Pnt", header: "Select3D_Pnt.hxx".}
converter `gp_XYZ`*(this: Select3D_Pnt): gp_XYZ {.noSideEffect,
    importcpp: "Select3D_Pnt::operator gp_XYZ", header: "Select3D_Pnt.hxx".}