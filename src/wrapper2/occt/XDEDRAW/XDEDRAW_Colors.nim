##  Created on: 2000-08-04
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Draw/Draw_Interpretor

## ! Contains commands to work with colors

type
  XDEDRAW_Colors* {.importcpp: "XDEDRAW_Colors", header: "XDEDRAW_Colors.hxx", bycopy.} = object


proc InitCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "XDEDRAW_Colors::InitCommands(@)", header: "XDEDRAW_Colors.hxx".}