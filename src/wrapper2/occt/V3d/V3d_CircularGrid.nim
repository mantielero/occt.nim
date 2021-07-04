##  Created on: 1998-07-16
##  Created by: CAL
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Ax3, V3d_ViewerPointer,
  ../Standard/Standard_Boolean, ../Aspect/Aspect_GridDrawMode,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Aspect/Aspect_CircularGrid

discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_Group"
type
  V3d_CircularGrid* {.importcpp: "V3d_CircularGrid",
                     header: "V3d_CircularGrid.hxx", bycopy.} = object of Aspect_CircularGrid ##
                                                                                       ## !
                                                                                       ## Custom
                                                                                       ## Graphic3d_Structure
                                                                                       ## implementation.

  V3d_CircularGridbase_type* = Aspect_CircularGrid

proc get_type_name*(): cstring {.importcpp: "V3d_CircularGrid::get_type_name(@)",
                              header: "V3d_CircularGrid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "V3d_CircularGrid::get_type_descriptor(@)",
    header: "V3d_CircularGrid.hxx".}
proc DynamicType*(this: V3d_CircularGrid): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_CircularGrid.hxx".}
proc constructV3d_CircularGrid*(aViewer: V3d_ViewerPointer; aColor: Quantity_Color;
                               aTenthColor: Quantity_Color): V3d_CircularGrid {.
    constructor, importcpp: "V3d_CircularGrid(@)", header: "V3d_CircularGrid.hxx".}
proc destroyV3d_CircularGrid*(this: var V3d_CircularGrid) {.
    importcpp: "#.~V3d_CircularGrid()", header: "V3d_CircularGrid.hxx".}
proc SetColors*(this: var V3d_CircularGrid; aColor: Quantity_Color;
               aTenthColor: Quantity_Color) {.importcpp: "SetColors",
    header: "V3d_CircularGrid.hxx".}
proc Display*(this: var V3d_CircularGrid) {.importcpp: "Display",
                                        header: "V3d_CircularGrid.hxx".}
proc Erase*(this: V3d_CircularGrid) {.noSideEffect, importcpp: "Erase",
                                   header: "V3d_CircularGrid.hxx".}
proc IsDisplayed*(this: V3d_CircularGrid): Standard_Boolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "V3d_CircularGrid.hxx".}
proc GraphicValues*(this: V3d_CircularGrid; Radius: var Standard_Real;
                   OffSet: var Standard_Real) {.noSideEffect,
    importcpp: "GraphicValues", header: "V3d_CircularGrid.hxx".}
proc SetGraphicValues*(this: var V3d_CircularGrid; Radius: Standard_Real;
                      OffSet: Standard_Real) {.importcpp: "SetGraphicValues",
    header: "V3d_CircularGrid.hxx".}
proc DumpJson*(this: V3d_CircularGrid; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "V3d_CircularGrid.hxx".}
discard "forward decl of V3d_CircularGrid"
type
  Handle_V3d_CircularGrid* = handle[V3d_CircularGrid]
