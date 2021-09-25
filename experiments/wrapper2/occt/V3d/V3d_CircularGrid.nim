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
  V3dCircularGrid* {.importcpp: "V3d_CircularGrid", header: "V3d_CircularGrid.hxx",
                    bycopy.} = object of AspectCircularGrid ## ! Custom Graphic3d_Structure implementation.

  V3dCircularGridbaseType* = AspectCircularGrid

proc getTypeName*(): cstring {.importcpp: "V3d_CircularGrid::get_type_name(@)",
                            header: "V3d_CircularGrid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "V3d_CircularGrid::get_type_descriptor(@)",
    header: "V3d_CircularGrid.hxx".}
proc dynamicType*(this: V3dCircularGrid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_CircularGrid.hxx".}
proc constructV3dCircularGrid*(aViewer: V3dViewerPointer; aColor: QuantityColor;
                              aTenthColor: QuantityColor): V3dCircularGrid {.
    constructor, importcpp: "V3d_CircularGrid(@)", header: "V3d_CircularGrid.hxx".}
proc destroyV3dCircularGrid*(this: var V3dCircularGrid) {.
    importcpp: "#.~V3d_CircularGrid()", header: "V3d_CircularGrid.hxx".}
proc setColors*(this: var V3dCircularGrid; aColor: QuantityColor;
               aTenthColor: QuantityColor) {.importcpp: "SetColors",
    header: "V3d_CircularGrid.hxx".}
proc display*(this: var V3dCircularGrid) {.importcpp: "Display",
                                       header: "V3d_CircularGrid.hxx".}
proc erase*(this: V3dCircularGrid) {.noSideEffect, importcpp: "Erase",
                                  header: "V3d_CircularGrid.hxx".}
proc isDisplayed*(this: V3dCircularGrid): bool {.noSideEffect,
    importcpp: "IsDisplayed", header: "V3d_CircularGrid.hxx".}
proc graphicValues*(this: V3dCircularGrid; radius: var float; offSet: var float) {.
    noSideEffect, importcpp: "GraphicValues", header: "V3d_CircularGrid.hxx".}
proc setGraphicValues*(this: var V3dCircularGrid; radius: float; offSet: float) {.
    importcpp: "SetGraphicValues", header: "V3d_CircularGrid.hxx".}
proc dumpJson*(this: V3dCircularGrid; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "V3d_CircularGrid.hxx".}
discard "forward decl of V3d_CircularGrid"
type
  HandleV3dCircularGrid* = Handle[V3dCircularGrid]

