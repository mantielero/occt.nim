##  Created on: 2020-01-31
##  Created by: Svetlana SHUTINA
##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Builds a valid box, if points fulfill the conditions of a valid box.
## ! And allows to build a preview, otherwise.
## ! There are 4 cases:
## ! 1 - preview can be a vertex if thin box in all directions is a point;
## ! 2 - preview can be an edge if thin box in two directions is a point;
## ! 3 - preview can be a rectangular face if thin box in only one direction is a point;
## ! 4 - preview can be a valid box if point values fulfill the conditions of a valid box.

type
  BRepPreviewAPI_MakeBox* {.importcpp: "BRepPreviewAPI_MakeBox",
                           header: "BRepPreviewAPI_MakeBox.hxx", bycopy.} = object of BRepPrimAPI_MakeBox ##
                                                                                                   ## !
                                                                                                   ## Constructor
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Create
                                                                                                   ## a
                                                                                                   ## vertex
                                                                                                   ## if
                                                                                                   ## thin
                                                                                                   ## box
                                                                                                   ## in
                                                                                                   ## all
                                                                                                   ## directions
                                                                                                   ## is
                                                                                                   ## a
                                                                                                   ## point.


proc constructBRepPreviewAPI_MakeBox*(): BRepPreviewAPI_MakeBox {.constructor,
    importcpp: "BRepPreviewAPI_MakeBox(@)", header: "BRepPreviewAPI_MakeBox.hxx".}
proc build*(this: var BRepPreviewAPI_MakeBox) {.importcpp: "Build",
    header: "BRepPreviewAPI_MakeBox.hxx".}

