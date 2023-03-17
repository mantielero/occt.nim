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


{.push cdecl, header: "gp.hxx".}

proc resolution*(): cfloat {.importcpp: "gp::Resolution(@)".}

proc origin*(): gp_Pnt {.importcpp: "gp::Origin(@)".}
proc dxAsDir*(): gp_Dir {.importcpp: "gp::DX(@)".}
proc dyAsDir*(): gp_Dir {.importcpp: "gp::DY(@)".}
proc dzAsDir*(): gp_Dir {.importcpp: "gp::DZ(@)".}
proc ox*(): gp_Ax1 {.importcpp: "gp::OX(@)".}
proc oy*(): gp_Ax1 {.importcpp: "gp::OY(@)".}
proc oz*(): gp_Ax1 {.importcpp: "gp::OZ(@)".}
proc xoy*(): gp_Ax2 {.importcpp: "gp::XOY(@)".}
proc zox*(): gp_Ax2 {.importcpp: "gp::ZOX(@)".}
proc yoz*(): gp_Ax2 {.importcpp: "gp::YOZ(@)".}
proc origin2d*(): gp_Pnt2d {.importcpp: "gp::Origin2d(@)".}
proc dX2d*(): gp_Dir2d {.importcpp: "gp::DX2d(@)".}
proc dY2d*(): gp_Dir2d {.importcpp: "gp::DY2d(@)".}
proc oX2d*(): gp_Ax2d {.importcpp: "gp::OX2d(@)".}
proc oY2d*(): gp_Ax2d {.importcpp: "gp::OY2d(@)".}
{.pop.}