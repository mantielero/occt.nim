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
  MakeLine* {.importcpp: "GC_MakeLine", header: "GC_MakeLine.hxx", bycopy.} = object of Root ##
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


proc newMakeLine*(a1: Ax1): MakeLine {.cdecl, constructor,
                                   importcpp: "GC_MakeLine(@)", header: "GC_MakeLine.hxx".}
proc newMakeLine*(L: Lin): MakeLine {.cdecl, constructor, importcpp: "GC_MakeLine(@)",
                                  header: "GC_MakeLine.hxx".}
proc newMakeLine*(p: Pnt; v: Dir): MakeLine {.cdecl, constructor,
                                        importcpp: "GC_MakeLine(@)",
                                        header: "GC_MakeLine.hxx".}
proc newMakeLine*(lin: Lin; point: Pnt): MakeLine {.cdecl, constructor,
    importcpp: "GC_MakeLine(@)", header: "GC_MakeLine.hxx".}
proc newMakeLine*(p1: Pnt; p2: Pnt): MakeLine {.cdecl, constructor,
    importcpp: "GC_MakeLine(@)", header: "GC_MakeLine.hxx".}
proc value*(this: MakeLine): Handle[GeomLine] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GC_MakeLine.hxx".}
converter `constopencascade`*(this: MakeLine): Handle[GeomLine] {.noSideEffect,
    cdecl, importcpp: "GC_MakeLine::operator constopencascade", header: "GC_MakeLine.hxx".}