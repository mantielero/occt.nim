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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Mat"
discard "forward decl of gp_Quaternion"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Cone"
discard "forward decl of gp_XY"
discard "forward decl of gp_Mat2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
type
  gp* {.importcpp: "gp", header: "gp.hxx", bycopy.} = object ## ! Method of package gp
                                                     ## !
                                                     ## ! In geometric computations, defines the tolerance criterion
                                                     ## ! used to determine when two numbers can be considered equal.
                                                     ## ! Many class functions use this tolerance criterion, for
                                                     ## ! example, to avoid division by zero in geometric
                                                     ## ! computations. In the documentation, tolerance criterion is
                                                     ## ! always referred to as gp::Resolution().


proc Resolution*(): Standard_Real {.importcpp: "gp::Resolution(@)", header: "gp.hxx".}
proc Origin*(): gp_Pnt {.importcpp: "gp::Origin(@)", header: "gp.hxx".}
proc DX*(): gp_Dir {.importcpp: "gp::DX(@)", header: "gp.hxx".}
proc DY*(): gp_Dir {.importcpp: "gp::DY(@)", header: "gp.hxx".}
proc DZ*(): gp_Dir {.importcpp: "gp::DZ(@)", header: "gp.hxx".}
proc OX*(): gp_Ax1 {.importcpp: "gp::OX(@)", header: "gp.hxx".}
proc OY*(): gp_Ax1 {.importcpp: "gp::OY(@)", header: "gp.hxx".}
proc OZ*(): gp_Ax1 {.importcpp: "gp::OZ(@)", header: "gp.hxx".}
proc XOY*(): gp_Ax2 {.importcpp: "gp::XOY(@)", header: "gp.hxx".}
proc ZOX*(): gp_Ax2 {.importcpp: "gp::ZOX(@)", header: "gp.hxx".}
proc YOZ*(): gp_Ax2 {.importcpp: "gp::YOZ(@)", header: "gp.hxx".}
proc Origin2d*(): gp_Pnt2d {.importcpp: "gp::Origin2d(@)", header: "gp.hxx".}
proc DX2d*(): gp_Dir2d {.importcpp: "gp::DX2d(@)", header: "gp.hxx".}
proc DY2d*(): gp_Dir2d {.importcpp: "gp::DY2d(@)", header: "gp.hxx".}
proc OX2d*(): gp_Ax2d {.importcpp: "gp::OX2d(@)", header: "gp.hxx".}
proc OY2d*(): gp_Ax2d {.importcpp: "gp::OY2d(@)", header: "gp.hxx".}