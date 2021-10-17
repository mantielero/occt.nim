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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Lin"
type
  GceMakeLin* {.importcpp: "gce_MakeLin", header: "gce_MakeLin.hxx", bycopy.} = object of GceRoot ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## a
                                                                                        ## line
                                                                                        ## located
                                                                                        ## along
                                                                                        ## the
                                                                                        ## axis
                                                                                        ## A1.


proc newGceMakeLin*(a1: Ax1): GceMakeLin {.cdecl, constructor,
                                       importcpp: "gce_MakeLin(@)", dynlib: tkmath.}
proc newGceMakeLin*(p: Pnt; v: Dir): GceMakeLin {.cdecl, constructor,
    importcpp: "gce_MakeLin(@)", dynlib: tkmath.}
proc newGceMakeLin*(lin: Lin; point: Pnt): GceMakeLin {.cdecl, constructor,
    importcpp: "gce_MakeLin(@)", dynlib: tkmath.}
proc newGceMakeLin*(p1: Pnt; p2: Pnt): GceMakeLin {.cdecl, constructor,
    importcpp: "gce_MakeLin(@)", dynlib: tkmath.}
proc value*(this: GceMakeLin): Lin {.noSideEffect, cdecl, importcpp: "Value",
                                 dynlib: tkmath.}
proc operator*(this: GceMakeLin): Lin {.noSideEffect, cdecl, importcpp: "Operator",
                                    dynlib: tkmath.}
converter `lin`*(this: GceMakeLin): Lin {.noSideEffect, cdecl, importcpp: "gce_MakeLin::operator gp_Lin",
                                      dynlib: tkmath.}