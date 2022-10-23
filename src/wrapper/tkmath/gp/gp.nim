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


type
  Gp* {.importcpp: "gp", header: "gp.hxx", bycopy.} = object ## ! Method of package gp
                                                     ## !
                                                     ## ! In geometric computations, defines the tolerance criterion
                                                     ## ! used to determine when two numbers can be considered equal.
                                                     ## ! Many class functions use this tolerance criterion, for
                                                     ## ! example, to avoid division by zero in geometric
                                                     ## ! computations. In the documentation, tolerance criterion is
                                                     ## ! always referred to as gp::Resolution().


proc resolution*(): cfloat {.cdecl, importcpp: "gp::Resolution(@)", header: "gp.hxx".}
proc origin*(): PntObj {.cdecl, importcpp: "gp::Origin(@)", header: "gp.hxx".}
proc dxAsDir*(): DirObj {.cdecl, importcpp: "gp::DX(@)", header: "gp.hxx".}
proc dyAsDir*(): DirObj {.cdecl, importcpp: "gp::DY(@)", header: "gp.hxx".}
proc dzAsDir*(): DirObj {.cdecl, importcpp: "gp::DZ(@)", header: "gp.hxx".}
proc ox*(): Ax1Obj {.cdecl, importcpp: "gp::OX(@)", header: "gp.hxx".}
proc oy*(): Ax1Obj {.cdecl, importcpp: "gp::OY(@)", header: "gp.hxx".}
proc oz*(): Ax1Obj {.cdecl, importcpp: "gp::OZ(@)", header: "gp.hxx".}
proc xoy*(): Ax2Obj {.cdecl, importcpp: "gp::XOY(@)", header: "gp.hxx".}
proc zox*(): Ax2Obj {.cdecl, importcpp: "gp::ZOX(@)", header: "gp.hxx".}
proc yoz*(): Ax2Obj {.cdecl, importcpp: "gp::YOZ(@)", header: "gp.hxx".}
proc origin2d*(): Pnt2dObj {.cdecl, importcpp: "gp::Origin2d(@)", header: "gp.hxx".}
proc dX2d*(): Dir2dObj {.cdecl, importcpp: "gp::DX2d(@)", header: "gp.hxx".}
proc dY2d*(): Dir2dObj {.cdecl, importcpp: "gp::DY2d(@)", header: "gp.hxx".}
proc oX2d*(): Ax2dObj {.cdecl, importcpp: "gp::OX2d(@)", header: "gp.hxx".}
proc oY2d*(): Ax2dObj {.cdecl, importcpp: "gp::OY2d(@)", header: "gp.hxx".}