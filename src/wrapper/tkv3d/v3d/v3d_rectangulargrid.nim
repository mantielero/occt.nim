import v3d_types

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


proc newV3dRectangularGrid*(aViewer: V3dViewerPointer; aColor: QuantityColor;
                           aTenthColor: QuantityColor): V3dRectangularGrid {.cdecl,
    constructor, importcpp: "V3d_RectangularGrid(@)", header: "V3d_RectangularGrid.hxx".}
proc destroyV3dRectangularGrid*(this: var V3dRectangularGrid) {.cdecl,
    importcpp: "#.~V3d_RectangularGrid()", header: "V3d_RectangularGrid.hxx".}
proc setColors*(this: var V3dRectangularGrid; aColor: QuantityColor;
               aTenthColor: QuantityColor) {.cdecl, importcpp: "SetColors",
    header: "V3d_RectangularGrid.hxx".}
proc display*(this: var V3dRectangularGrid) {.cdecl, importcpp: "Display",
    header: "V3d_RectangularGrid.hxx".}
proc erase*(this: V3dRectangularGrid) {.noSideEffect, cdecl, importcpp: "Erase",
                                     header: "V3d_RectangularGrid.hxx".}
proc isDisplayed*(this: V3dRectangularGrid): bool {.noSideEffect, cdecl,
    importcpp: "IsDisplayed", header: "V3d_RectangularGrid.hxx".}
proc graphicValues*(this: V3dRectangularGrid; xSize: var cfloat; ySize: var cfloat;
                   offSet: var cfloat) {.noSideEffect, cdecl,
                                      importcpp: "GraphicValues", header: "V3d_RectangularGrid.hxx".}
proc setGraphicValues*(this: var V3dRectangularGrid; xSize: cfloat; ySize: cfloat;
                      offSet: cfloat) {.cdecl, importcpp: "SetGraphicValues",
                                      header: "V3d_RectangularGrid.hxx".}
proc dumpJson*(this: V3dRectangularGrid; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "V3d_RectangularGrid.hxx".}

