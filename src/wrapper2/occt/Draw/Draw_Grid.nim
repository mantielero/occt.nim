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

discard "forward decl of Draw_Display"
discard "forward decl of Draw_Grid"
discard "forward decl of Draw_Grid"
type
  HandleDrawGrid* = Handle[DrawGrid]
  DrawGrid* {.importcpp: "Draw_Grid", header: "Draw_Grid.hxx", bycopy.} = object of DrawDrawable3D ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## grid.


proc constructDrawGrid*(): DrawGrid {.constructor, importcpp: "Draw_Grid(@)",
                                   header: "Draw_Grid.hxx".}
proc steps*(this: var DrawGrid; stepX: StandardReal; stepY: StandardReal;
           stepZ: StandardReal) {.importcpp: "Steps", header: "Draw_Grid.hxx".}
proc stepX*(this: DrawGrid): StandardReal {.noSideEffect, importcpp: "StepX",
                                        header: "Draw_Grid.hxx".}
proc stepY*(this: DrawGrid): StandardReal {.noSideEffect, importcpp: "StepY",
                                        header: "Draw_Grid.hxx".}
proc stepZ*(this: DrawGrid): StandardReal {.noSideEffect, importcpp: "StepZ",
                                        header: "Draw_Grid.hxx".}
proc isActive*(this: DrawGrid): StandardBoolean {.noSideEffect,
    importcpp: "IsActive", header: "Draw_Grid.hxx".}
proc drawOn*(this: DrawGrid; `out`: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Grid.hxx".}
type
  DrawGridbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "Draw_Grid::get_type_name(@)",
                            header: "Draw_Grid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Grid::get_type_descriptor(@)", header: "Draw_Grid.hxx".}
proc dynamicType*(this: DrawGrid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Grid.hxx".}

