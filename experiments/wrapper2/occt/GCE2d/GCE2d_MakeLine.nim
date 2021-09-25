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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
type
  GCE2dMakeLine* {.importcpp: "GCE2d_MakeLine", header: "GCE2d_MakeLine.hxx", bycopy.} = object of GCE2dRoot ##
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


proc constructGCE2dMakeLine*(a: Ax2d): GCE2dMakeLine {.constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc constructGCE2dMakeLine*(L: Lin2d): GCE2dMakeLine {.constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc constructGCE2dMakeLine*(p: Pnt2d; v: Dir2d): GCE2dMakeLine {.constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc constructGCE2dMakeLine*(lin: Lin2d; point: Pnt2d): GCE2dMakeLine {.constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc constructGCE2dMakeLine*(lin: Lin2d; dist: float): GCE2dMakeLine {.constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc constructGCE2dMakeLine*(p1: Pnt2d; p2: Pnt2d): GCE2dMakeLine {.constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc value*(this: GCE2dMakeLine): Handle[Geom2dLine] {.noSideEffect,
    importcpp: "Value", header: "GCE2d_MakeLine.hxx".}
converter `constopencascade`*(this: GCE2dMakeLine): Handle[Geom2dLine] {.
    noSideEffect, importcpp: "GCE2d_MakeLine::operator constopencascade",
    header: "GCE2d_MakeLine.hxx".}
