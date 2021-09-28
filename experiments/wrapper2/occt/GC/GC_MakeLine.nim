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
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
type
  GC_MakeLine* {.importcpp: "GC_MakeLine", header: "GC_MakeLine.hxx", bycopy.} = object of GC_Root ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## line
                                                                                         ## located
                                                                                         ## in
                                                                                         ## 3D
                                                                                         ## space
                                                                                         ## with
                                                                                         ## the
                                                                                         ## axis
                                                                                         ## placement
                                                                                         ## A1.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## Location
                                                                                         ## of
                                                                                         ## A1
                                                                                         ## is
                                                                                         ## the
                                                                                         ## origin
                                                                                         ## of
                                                                                         ## the
                                                                                         ## line.


proc constructGC_MakeLine*(a1: Ax1): GC_MakeLine {.constructor,
    importcpp: "GC_MakeLine(@)", header: "GC_MakeLine.hxx".}
proc constructGC_MakeLine*(L: Lin): GC_MakeLine {.constructor,
    importcpp: "GC_MakeLine(@)", header: "GC_MakeLine.hxx".}
proc constructGC_MakeLine*(p: Pnt; v: Dir): GC_MakeLine {.constructor,
    importcpp: "GC_MakeLine(@)", header: "GC_MakeLine.hxx".}
proc constructGC_MakeLine*(lin: Lin; point: Pnt): GC_MakeLine {.constructor,
    importcpp: "GC_MakeLine(@)", header: "GC_MakeLine.hxx".}
proc constructGC_MakeLine*(p1: Pnt; p2: Pnt): GC_MakeLine {.constructor,
    importcpp: "GC_MakeLine(@)", header: "GC_MakeLine.hxx".}
proc value*(this: GC_MakeLine): Handle[GeomLine] {.noSideEffect, importcpp: "Value",
    header: "GC_MakeLine.hxx".}
converter `constopencascade`*(this: GC_MakeLine): Handle[GeomLine] {.noSideEffect,
    importcpp: "GC_MakeLine::operator constopencascade", header: "GC_MakeLine.hxx".}





















