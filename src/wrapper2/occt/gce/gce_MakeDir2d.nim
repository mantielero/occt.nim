##  Created on: 1992-08-26
##  Created by: Remi GILET
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Dir2d, gce_Root, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
type
  gce_MakeDir2d* {.importcpp: "gce_MakeDir2d", header: "gce_MakeDir2d.hxx", bycopy.} = object of gce_Root ##
                                                                                                ## !
                                                                                                ## Normalizes
                                                                                                ## the
                                                                                                ## vector
                                                                                                ## V
                                                                                                ## and
                                                                                                ## creates
                                                                                                ## a
                                                                                                ## direction.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Status
                                                                                                ## is
                                                                                                ## "NullVector"
                                                                                                ## if
                                                                                                ## V.Magnitude()
                                                                                                ## <=
                                                                                                ## Resolution.


proc constructgce_MakeDir2d*(V: gp_Vec2d): gce_MakeDir2d {.constructor,
    importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc constructgce_MakeDir2d*(Coord: gp_XY): gce_MakeDir2d {.constructor,
    importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc constructgce_MakeDir2d*(Xv: Standard_Real; Yv: Standard_Real): gce_MakeDir2d {.
    constructor, importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc constructgce_MakeDir2d*(P1: gp_Pnt2d; P2: gp_Pnt2d): gce_MakeDir2d {.constructor,
    importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc Value*(this: gce_MakeDir2d): gp_Dir2d {.noSideEffect, importcpp: "Value",
    header: "gce_MakeDir2d.hxx".}
proc Operator*(this: gce_MakeDir2d): gp_Dir2d {.noSideEffect, importcpp: "Operator",
    header: "gce_MakeDir2d.hxx".}
converter `gp_Dir2d`*(this: gce_MakeDir2d): gp_Dir2d {.noSideEffect,
    importcpp: "gce_MakeDir2d::operator gp_Dir2d", header: "gce_MakeDir2d.hxx".}