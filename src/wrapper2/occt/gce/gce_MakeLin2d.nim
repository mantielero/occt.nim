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
  ../Standard/Standard_Handle, ../gp/gp_Lin2d, gce_Root, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Lin2d"
type
  gce_MakeLin2d* {.importcpp: "gce_MakeLin2d", header: "gce_MakeLin2d.hxx", bycopy.} = object of gce_Root ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## line
                                                                                                ## located
                                                                                                ## with
                                                                                                ## A.


proc constructgce_MakeLin2d*(A: gp_Ax2d): gce_MakeLin2d {.constructor,
    importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc constructgce_MakeLin2d*(P: gp_Pnt2d; V: gp_Dir2d): gce_MakeLin2d {.constructor,
    importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc constructgce_MakeLin2d*(A: Standard_Real; B: Standard_Real; C: Standard_Real): gce_MakeLin2d {.
    constructor, importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc constructgce_MakeLin2d*(Lin: gp_Lin2d; Dist: Standard_Real): gce_MakeLin2d {.
    constructor, importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc constructgce_MakeLin2d*(Lin: gp_Lin2d; Point: gp_Pnt2d): gce_MakeLin2d {.
    constructor, importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc constructgce_MakeLin2d*(P1: gp_Pnt2d; P2: gp_Pnt2d): gce_MakeLin2d {.constructor,
    importcpp: "gce_MakeLin2d(@)", header: "gce_MakeLin2d.hxx".}
proc Value*(this: gce_MakeLin2d): gp_Lin2d {.noSideEffect, importcpp: "Value",
    header: "gce_MakeLin2d.hxx".}
proc Operator*(this: gce_MakeLin2d): gp_Lin2d {.noSideEffect, importcpp: "Operator",
    header: "gce_MakeLin2d.hxx".}
converter `gp_Lin2d`*(this: gce_MakeLin2d): gp_Lin2d {.noSideEffect,
    importcpp: "gce_MakeLin2d::operator gp_Lin2d", header: "gce_MakeLin2d.hxx".}