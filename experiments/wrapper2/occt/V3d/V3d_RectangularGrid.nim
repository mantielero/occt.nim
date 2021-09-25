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

discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_Group"
type
  V3dRectangularGrid* {.importcpp: "V3d_RectangularGrid",
                       header: "V3d_RectangularGrid.hxx", bycopy.} = object of AspectRectangularGrid ##
                                                                                              ## !
                                                                                              ## Custom
                                                                                              ## Graphic3d_Structure
                                                                                              ## implementation.

  V3dRectangularGridbaseType* = AspectRectangularGrid

proc getTypeName*(): cstring {.importcpp: "V3d_RectangularGrid::get_type_name(@)",
                            header: "V3d_RectangularGrid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "V3d_RectangularGrid::get_type_descriptor(@)",
    header: "V3d_RectangularGrid.hxx".}
proc dynamicType*(this: V3dRectangularGrid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_RectangularGrid.hxx".}
proc constructV3dRectangularGrid*(aViewer: V3dViewerPointer; aColor: QuantityColor;
                                 aTenthColor: QuantityColor): V3dRectangularGrid {.
    constructor, importcpp: "V3d_RectangularGrid(@)",
    header: "V3d_RectangularGrid.hxx".}
proc destroyV3dRectangularGrid*(this: var V3dRectangularGrid) {.
    importcpp: "#.~V3d_RectangularGrid()", header: "V3d_RectangularGrid.hxx".}
proc setColors*(this: var V3dRectangularGrid; aColor: QuantityColor;
               aTenthColor: QuantityColor) {.importcpp: "SetColors",
    header: "V3d_RectangularGrid.hxx".}
proc display*(this: var V3dRectangularGrid) {.importcpp: "Display",
    header: "V3d_RectangularGrid.hxx".}
proc erase*(this: V3dRectangularGrid) {.noSideEffect, importcpp: "Erase",
                                     header: "V3d_RectangularGrid.hxx".}
proc isDisplayed*(this: V3dRectangularGrid): bool {.noSideEffect,
    importcpp: "IsDisplayed", header: "V3d_RectangularGrid.hxx".}
proc graphicValues*(this: V3dRectangularGrid; xSize: var float; ySize: var float;
                   offSet: var float) {.noSideEffect, importcpp: "GraphicValues",
                                     header: "V3d_RectangularGrid.hxx".}
proc setGraphicValues*(this: var V3dRectangularGrid; xSize: float; ySize: float;
                      offSet: float) {.importcpp: "SetGraphicValues",
                                     header: "V3d_RectangularGrid.hxx".}
proc dumpJson*(this: V3dRectangularGrid; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "V3d_RectangularGrid.hxx".}
discard "forward decl of V3d_RectangularGrid"
type
  HandleV3dRectangularGrid* = Handle[V3dRectangularGrid]

