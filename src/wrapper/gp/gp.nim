import gp_types

##  Created on: 1993-04-13
##  Created by: JCV
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




proc resolution*(): cfloat {.cdecl, importcpp: "gp::Resolution(@)", header: "gp.hxx".}
proc origin*(): gp_Pnt {.cdecl, importcpp: "gp::Origin(@)", header: "gp.hxx".}
proc dxAsDir*(): gp_Dir {.cdecl, importcpp: "gp::DX(@)", header: "gp.hxx".}
proc dyAsDir*(): gp_Dir {.cdecl, importcpp: "gp::DY(@)", header: "gp.hxx".}
proc dzAsDir*(): gp_Dir {.cdecl, importcpp: "gp::DZ(@)", header: "gp.hxx".}
proc ox*(): gp_Ax1 {.cdecl, importcpp: "gp::OX(@)", header: "gp.hxx".}
proc oy*(): gp_Ax1 {.cdecl, importcpp: "gp::OY(@)", header: "gp.hxx".}
proc oz*(): gp_Ax1 {.cdecl, importcpp: "gp::OZ(@)", header: "gp.hxx".}
proc xoy*(): gp_Ax2 {.cdecl, importcpp: "gp::XOY(@)", header: "gp.hxx".}
proc zox*(): gp_Ax2 {.cdecl, importcpp: "gp::ZOX(@)", header: "gp.hxx".}
proc yoz*(): gp_Ax2 {.cdecl, importcpp: "gp::YOZ(@)", header: "gp.hxx".}
proc origin2d*(): gp_Pnt2d {.cdecl, importcpp: "gp::Origin2d(@)", header: "gp.hxx".}
proc dX2d*(): gp_Dir2d {.cdecl, importcpp: "gp::DX2d(@)", header: "gp.hxx".}
proc dY2d*(): gp_Dir2d {.cdecl, importcpp: "gp::DY2d(@)", header: "gp.hxx".}
proc oX2d*(): gp_Ax2d {.cdecl, importcpp: "gp::OX2d(@)", header: "gp.hxx".}
proc oY2d*(): gp_Ax2d {.cdecl, importcpp: "gp::OY2d(@)", header: "gp.hxx".}
