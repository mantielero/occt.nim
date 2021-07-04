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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Aspect_Grid, ../Standard/Standard_Boolean

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_NullValue"
discard "forward decl of Standard_NumericError"
type
  Aspect_RectangularGrid* {.importcpp: "Aspect_RectangularGrid",
                           header: "Aspect_RectangularGrid.hxx", bycopy.} = object of Aspect_Grid ##
                                                                                           ## !
                                                                                           ## creates
                                                                                           ## a
                                                                                           ## new
                                                                                           ## grid.
                                                                                           ## By
                                                                                           ## default
                                                                                           ## this
                                                                                           ## grid
                                                                                           ## is
                                                                                           ## not
                                                                                           ##
                                                                                           ## !
                                                                                           ## active.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## first
                                                                                           ## angle
                                                                                           ## is
                                                                                           ## given
                                                                                           ## relatively
                                                                                           ## to
                                                                                           ## the
                                                                                           ## horizontal.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## second
                                                                                           ## angle
                                                                                           ## is
                                                                                           ## given
                                                                                           ## relatively
                                                                                           ## to
                                                                                           ## the
                                                                                           ## vertical.

  Aspect_RectangularGridbase_type* = Aspect_Grid

proc get_type_name*(): cstring {.importcpp: "Aspect_RectangularGrid::get_type_name(@)",
                              header: "Aspect_RectangularGrid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Aspect_RectangularGrid::get_type_descriptor(@)",
    header: "Aspect_RectangularGrid.hxx".}
proc DynamicType*(this: Aspect_RectangularGrid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Aspect_RectangularGrid.hxx".}
proc constructAspect_RectangularGrid*(aXStep: Standard_Real; aYStep: Standard_Real;
                                     anXOrigin: Standard_Real = 0;
                                     anYOrigin: Standard_Real = 0;
                                     aFirstAngle: Standard_Real = 0;
                                     aSecondAngle: Standard_Real = 0;
                                     aRotationAngle: Standard_Real = 0): Aspect_RectangularGrid {.
    constructor, importcpp: "Aspect_RectangularGrid(@)",
    header: "Aspect_RectangularGrid.hxx".}
proc SetXStep*(this: var Aspect_RectangularGrid; aStep: Standard_Real) {.
    importcpp: "SetXStep", header: "Aspect_RectangularGrid.hxx".}
proc SetYStep*(this: var Aspect_RectangularGrid; aStep: Standard_Real) {.
    importcpp: "SetYStep", header: "Aspect_RectangularGrid.hxx".}
proc SetAngle*(this: var Aspect_RectangularGrid; anAngle1: Standard_Real;
              anAngle2: Standard_Real) {.importcpp: "SetAngle",
                                       header: "Aspect_RectangularGrid.hxx".}
proc SetGridValues*(this: var Aspect_RectangularGrid; XOrigin: Standard_Real;
                   YOrigin: Standard_Real; XStep: Standard_Real;
                   YStep: Standard_Real; RotationAngle: Standard_Real) {.
    importcpp: "SetGridValues", header: "Aspect_RectangularGrid.hxx".}
proc Compute*(this: Aspect_RectangularGrid; X: Standard_Real; Y: Standard_Real;
             gridX: var Standard_Real; gridY: var Standard_Real) {.noSideEffect,
    importcpp: "Compute", header: "Aspect_RectangularGrid.hxx".}
proc XStep*(this: Aspect_RectangularGrid): Standard_Real {.noSideEffect,
    importcpp: "XStep", header: "Aspect_RectangularGrid.hxx".}
proc YStep*(this: Aspect_RectangularGrid): Standard_Real {.noSideEffect,
    importcpp: "YStep", header: "Aspect_RectangularGrid.hxx".}
proc FirstAngle*(this: Aspect_RectangularGrid): Standard_Real {.noSideEffect,
    importcpp: "FirstAngle", header: "Aspect_RectangularGrid.hxx".}
proc SecondAngle*(this: Aspect_RectangularGrid): Standard_Real {.noSideEffect,
    importcpp: "SecondAngle", header: "Aspect_RectangularGrid.hxx".}
proc Init*(this: var Aspect_RectangularGrid) {.importcpp: "Init",
    header: "Aspect_RectangularGrid.hxx".}
proc DumpJson*(this: Aspect_RectangularGrid; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Aspect_RectangularGrid.hxx".}
discard "forward decl of Aspect_RectangularGrid"
type
  Handle_Aspect_RectangularGrid* = handle[Aspect_RectangularGrid]
