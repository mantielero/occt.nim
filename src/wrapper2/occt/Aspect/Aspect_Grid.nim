##  Created on: 1995-03-02
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Quantity/Quantity_Color,
  ../Standard/Standard_Boolean, Aspect_GridDrawMode,
  ../Standard/Standard_Transient

type
  Aspect_Grid* {.importcpp: "Aspect_Grid", header: "Aspect_Grid.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## defines
                                                                                                    ## the
                                                                                                    ## x
                                                                                                    ## Origin
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## grid.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## new
                                                                                                    ## grid.
                                                                                                    ## By
                                                                                                    ## default
                                                                                                    ## this
                                                                                                    ## grid
                                                                                                    ## is
                                                                                                    ## not
                                                                                                    ## active.

  Aspect_Gridbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Aspect_Grid::get_type_name(@)",
                              header: "Aspect_Grid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Aspect_Grid::get_type_descriptor(@)", header: "Aspect_Grid.hxx".}
proc DynamicType*(this: Aspect_Grid): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_Grid.hxx".}
proc SetXOrigin*(this: var Aspect_Grid; anOrigin: Standard_Real) {.
    importcpp: "SetXOrigin", header: "Aspect_Grid.hxx".}
proc SetYOrigin*(this: var Aspect_Grid; anOrigin: Standard_Real) {.
    importcpp: "SetYOrigin", header: "Aspect_Grid.hxx".}
proc SetRotationAngle*(this: var Aspect_Grid; anAngle: Standard_Real) {.
    importcpp: "SetRotationAngle", header: "Aspect_Grid.hxx".}
proc Rotate*(this: var Aspect_Grid; anAngle: Standard_Real) {.importcpp: "Rotate",
    header: "Aspect_Grid.hxx".}
proc Translate*(this: var Aspect_Grid; aDx: Standard_Real; aDy: Standard_Real) {.
    importcpp: "Translate", header: "Aspect_Grid.hxx".}
proc SetColors*(this: var Aspect_Grid; aColor: Quantity_Color;
               aTenthColor: Quantity_Color) {.importcpp: "SetColors",
    header: "Aspect_Grid.hxx".}
proc Hit*(this: Aspect_Grid; X: Standard_Real; Y: Standard_Real;
         gridX: var Standard_Real; gridY: var Standard_Real) {.noSideEffect,
    importcpp: "Hit", header: "Aspect_Grid.hxx".}
proc Compute*(this: Aspect_Grid; X: Standard_Real; Y: Standard_Real;
             gridX: var Standard_Real; gridY: var Standard_Real) {.noSideEffect,
    importcpp: "Compute", header: "Aspect_Grid.hxx".}
proc Activate*(this: var Aspect_Grid) {.importcpp: "Activate",
                                    header: "Aspect_Grid.hxx".}
proc Deactivate*(this: var Aspect_Grid) {.importcpp: "Deactivate",
                                      header: "Aspect_Grid.hxx".}
proc XOrigin*(this: Aspect_Grid): Standard_Real {.noSideEffect, importcpp: "XOrigin",
    header: "Aspect_Grid.hxx".}
proc YOrigin*(this: Aspect_Grid): Standard_Real {.noSideEffect, importcpp: "YOrigin",
    header: "Aspect_Grid.hxx".}
proc RotationAngle*(this: Aspect_Grid): Standard_Real {.noSideEffect,
    importcpp: "RotationAngle", header: "Aspect_Grid.hxx".}
proc IsActive*(this: Aspect_Grid): Standard_Boolean {.noSideEffect,
    importcpp: "IsActive", header: "Aspect_Grid.hxx".}
proc Colors*(this: Aspect_Grid; aColor: var Quantity_Color;
            aTenthColor: var Quantity_Color) {.noSideEffect, importcpp: "Colors",
    header: "Aspect_Grid.hxx".}
proc SetDrawMode*(this: var Aspect_Grid; aDrawMode: Aspect_GridDrawMode) {.
    importcpp: "SetDrawMode", header: "Aspect_Grid.hxx".}
proc DrawMode*(this: Aspect_Grid): Aspect_GridDrawMode {.noSideEffect,
    importcpp: "DrawMode", header: "Aspect_Grid.hxx".}
proc Display*(this: var Aspect_Grid) {.importcpp: "Display", header: "Aspect_Grid.hxx".}
proc Erase*(this: Aspect_Grid) {.noSideEffect, importcpp: "Erase",
                              header: "Aspect_Grid.hxx".}
proc IsDisplayed*(this: Aspect_Grid): Standard_Boolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "Aspect_Grid.hxx".}
proc Init*(this: var Aspect_Grid) {.importcpp: "Init", header: "Aspect_Grid.hxx".}
proc DumpJson*(this: Aspect_Grid; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Aspect_Grid.hxx".}
discard "forward decl of Aspect_Grid"
type
  Handle_Aspect_Grid* = handle[Aspect_Grid]
