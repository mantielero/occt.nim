##  Created on: 2000-10-23
##  Created by: Pavel TELKOV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of XDEDRAW_Shapes"
discard "forward decl of XDEDRAW_GDTs"
discard "forward decl of XDEDRAW_Colors"
discard "forward decl of XDEDRAW_Layers"
discard "forward decl of XDEDRAW_Props"
discard "forward decl of XDEDRAW_Common"
discard "forward decl of XDEDRAW_Views"
type
  Xdedraw* {.importcpp: "XDEDRAW", header: "XDEDRAW.hxx", bycopy.} = object ## ! Provides common commands for work XDE
                                                                    ## ! Initializes all the functions


proc init*(di: var DrawInterpretor) {.importcpp: "XDEDRAW::Init(@)",
                                  header: "XDEDRAW.hxx".}
proc factory*(theDI: var DrawInterpretor) {.importcpp: "XDEDRAW::Factory(@)",
                                        header: "XDEDRAW.hxx".}
