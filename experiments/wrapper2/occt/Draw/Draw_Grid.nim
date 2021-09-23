##  Created on: 1994-02-03
##  Created by: Jean Marc LACHAUME
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, Draw_Drawable3D

discard "forward decl of Draw_Display"
discard "forward decl of Draw_Grid"
discard "forward decl of Draw_Grid"
type
  Handle_Draw_Grid* = handle[Draw_Grid]
  Draw_Grid* {.importcpp: "Draw_Grid", header: "Draw_Grid.hxx", bycopy.} = object of Draw_Drawable3D ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## grid.


proc constructDraw_Grid*(): Draw_Grid {.constructor, importcpp: "Draw_Grid(@)",
                                     header: "Draw_Grid.hxx".}
proc Steps*(this: var Draw_Grid; StepX: Standard_Real; StepY: Standard_Real;
           StepZ: Standard_Real) {.importcpp: "Steps", header: "Draw_Grid.hxx".}
proc StepX*(this: Draw_Grid): Standard_Real {.noSideEffect, importcpp: "StepX",
    header: "Draw_Grid.hxx".}
proc StepY*(this: Draw_Grid): Standard_Real {.noSideEffect, importcpp: "StepY",
    header: "Draw_Grid.hxx".}
proc StepZ*(this: Draw_Grid): Standard_Real {.noSideEffect, importcpp: "StepZ",
    header: "Draw_Grid.hxx".}
proc IsActive*(this: Draw_Grid): Standard_Boolean {.noSideEffect,
    importcpp: "IsActive", header: "Draw_Grid.hxx".}
proc DrawOn*(this: Draw_Grid; Out: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Grid.hxx".}
type
  Draw_Gridbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "Draw_Grid::get_type_name(@)",
                              header: "Draw_Grid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Grid::get_type_descriptor(@)", header: "Draw_Grid.hxx".}
proc DynamicType*(this: Draw_Grid): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Grid.hxx".}