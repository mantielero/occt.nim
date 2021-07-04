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
  ../Standard/Standard_Real, ../Aspect/Aspect_RectangularGrid

discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_Group"
type
  V3d_RectangularGrid* {.importcpp: "V3d_RectangularGrid",
                        header: "V3d_RectangularGrid.hxx", bycopy.} = object of Aspect_RectangularGrid ##
                                                                                                ## !
                                                                                                ## Custom
                                                                                                ## Graphic3d_Structure
                                                                                                ## implementation.

  V3d_RectangularGridbase_type* = Aspect_RectangularGrid

proc get_type_name*(): cstring {.importcpp: "V3d_RectangularGrid::get_type_name(@)",
                              header: "V3d_RectangularGrid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "V3d_RectangularGrid::get_type_descriptor(@)",
    header: "V3d_RectangularGrid.hxx".}
proc DynamicType*(this: V3d_RectangularGrid): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_RectangularGrid.hxx".}
proc constructV3d_RectangularGrid*(aViewer: V3d_ViewerPointer;
                                  aColor: Quantity_Color;
                                  aTenthColor: Quantity_Color): V3d_RectangularGrid {.
    constructor, importcpp: "V3d_RectangularGrid(@)",
    header: "V3d_RectangularGrid.hxx".}
proc destroyV3d_RectangularGrid*(this: var V3d_RectangularGrid) {.
    importcpp: "#.~V3d_RectangularGrid()", header: "V3d_RectangularGrid.hxx".}
proc SetColors*(this: var V3d_RectangularGrid; aColor: Quantity_Color;
               aTenthColor: Quantity_Color) {.importcpp: "SetColors",
    header: "V3d_RectangularGrid.hxx".}
proc Display*(this: var V3d_RectangularGrid) {.importcpp: "Display",
    header: "V3d_RectangularGrid.hxx".}
proc Erase*(this: V3d_RectangularGrid) {.noSideEffect, importcpp: "Erase",
                                      header: "V3d_RectangularGrid.hxx".}
proc IsDisplayed*(this: V3d_RectangularGrid): Standard_Boolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "V3d_RectangularGrid.hxx".}
proc GraphicValues*(this: V3d_RectangularGrid; XSize: var Standard_Real;
                   YSize: var Standard_Real; OffSet: var Standard_Real) {.
    noSideEffect, importcpp: "GraphicValues", header: "V3d_RectangularGrid.hxx".}
proc SetGraphicValues*(this: var V3d_RectangularGrid; XSize: Standard_Real;
                      YSize: Standard_Real; OffSet: Standard_Real) {.
    importcpp: "SetGraphicValues", header: "V3d_RectangularGrid.hxx".}
proc DumpJson*(this: V3d_RectangularGrid; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "V3d_RectangularGrid.hxx".}
discard "forward decl of V3d_RectangularGrid"
type
  Handle_V3d_RectangularGrid* = handle[V3d_RectangularGrid]
