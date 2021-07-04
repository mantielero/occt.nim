##  Created on: 1999-06-19
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Draw/Draw_Interpretor

## ! Contains commands to activate package ShapeProcessAPI

type
  SWDRAW_ShapeProcessAPI* {.importcpp: "SWDRAW_ShapeProcessAPI",
                           header: "SWDRAW_ShapeProcessAPI.hxx", bycopy.} = object ## !
                                                                              ## Loads
                                                                              ## commands
                                                                              ## defined in
                                                                              ## ShapeProcessAPI


proc InitCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "SWDRAW_ShapeProcessAPI::InitCommands(@)",
    header: "SWDRAW_ShapeProcessAPI.hxx".}