##  Created on: 1992-09-28
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
  ../Standard/Standard_Handle, GCE2d_Root, ../Geom2d/Geom2d_Line

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
type
  GCE2d_MakeLine* {.importcpp: "GCE2d_MakeLine", header: "GCE2d_MakeLine.hxx", bycopy.} = object of GCE2d_Root ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## a
                                                                                                     ## line
                                                                                                     ## located
                                                                                                     ## in
                                                                                                     ## 2D
                                                                                                     ## space
                                                                                                     ## with
                                                                                                     ## the
                                                                                                     ## axis
                                                                                                     ## placement
                                                                                                     ## A.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## The
                                                                                                     ## Location
                                                                                                     ## of
                                                                                                     ## A
                                                                                                     ## is
                                                                                                     ## the
                                                                                                     ## origin
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## line.


proc constructGCE2d_MakeLine*(A: gp_Ax2d): GCE2d_MakeLine {.constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc constructGCE2d_MakeLine*(L: gp_Lin2d): GCE2d_MakeLine {.constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc constructGCE2d_MakeLine*(P: gp_Pnt2d; V: gp_Dir2d): GCE2d_MakeLine {.constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc constructGCE2d_MakeLine*(Lin: gp_Lin2d; Point: gp_Pnt2d): GCE2d_MakeLine {.
    constructor, importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc constructGCE2d_MakeLine*(Lin: gp_Lin2d; Dist: Standard_Real): GCE2d_MakeLine {.
    constructor, importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc constructGCE2d_MakeLine*(P1: gp_Pnt2d; P2: gp_Pnt2d): GCE2d_MakeLine {.
    constructor, importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc Value*(this: GCE2d_MakeLine): handle[Geom2d_Line] {.noSideEffect,
    importcpp: "Value", header: "GCE2d_MakeLine.hxx".}
converter `constopencascade`*(this: GCE2d_MakeLine): handle[Geom2d_Line] {.
    noSideEffect, importcpp: "GCE2d_MakeLine::operator constopencascade",
    header: "GCE2d_MakeLine.hxx".}