##  Created on: 1995-03-17
##  Created by: Mister rmi
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, Aspect_Grid

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_NullValue"
discard "forward decl of Standard_NumericError"
type
  Aspect_CircularGrid* {.importcpp: "Aspect_CircularGrid",
                        header: "Aspect_CircularGrid.hxx", bycopy.} = object of Aspect_Grid ##
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

  Aspect_CircularGridbase_type* = Aspect_Grid

proc get_type_name*(): cstring {.importcpp: "Aspect_CircularGrid::get_type_name(@)",
                              header: "Aspect_CircularGrid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Aspect_CircularGrid::get_type_descriptor(@)",
    header: "Aspect_CircularGrid.hxx".}
proc DynamicType*(this: Aspect_CircularGrid): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_CircularGrid.hxx".}
proc constructAspect_CircularGrid*(aRadiusStep: Standard_Real;
                                  aDivisionNumber: Standard_Integer;
                                  XOrigin: Standard_Real = 0;
                                  anYOrigin: Standard_Real = 0;
                                  aRotationAngle: Standard_Real = 0): Aspect_CircularGrid {.
    constructor, importcpp: "Aspect_CircularGrid(@)",
    header: "Aspect_CircularGrid.hxx".}
proc SetRadiusStep*(this: var Aspect_CircularGrid; aStep: Standard_Real) {.
    importcpp: "SetRadiusStep", header: "Aspect_CircularGrid.hxx".}
proc SetDivisionNumber*(this: var Aspect_CircularGrid; aNumber: Standard_Integer) {.
    importcpp: "SetDivisionNumber", header: "Aspect_CircularGrid.hxx".}
proc SetGridValues*(this: var Aspect_CircularGrid; XOrigin: Standard_Real;
                   YOrigin: Standard_Real; RadiusStep: Standard_Real;
                   DivisionNumber: Standard_Integer; RotationAngle: Standard_Real) {.
    importcpp: "SetGridValues", header: "Aspect_CircularGrid.hxx".}
proc Compute*(this: Aspect_CircularGrid; X: Standard_Real; Y: Standard_Real;
             gridX: var Standard_Real; gridY: var Standard_Real) {.noSideEffect,
    importcpp: "Compute", header: "Aspect_CircularGrid.hxx".}
proc RadiusStep*(this: Aspect_CircularGrid): Standard_Real {.noSideEffect,
    importcpp: "RadiusStep", header: "Aspect_CircularGrid.hxx".}
proc DivisionNumber*(this: Aspect_CircularGrid): Standard_Integer {.noSideEffect,
    importcpp: "DivisionNumber", header: "Aspect_CircularGrid.hxx".}
proc Init*(this: var Aspect_CircularGrid) {.importcpp: "Init",
                                        header: "Aspect_CircularGrid.hxx".}
proc DumpJson*(this: Aspect_CircularGrid; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Aspect_CircularGrid.hxx".}
discard "forward decl of Aspect_CircularGrid"
type
  Handle_Aspect_CircularGrid* = handle[Aspect_CircularGrid]
