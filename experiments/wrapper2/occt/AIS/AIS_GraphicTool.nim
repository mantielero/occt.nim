##  Created on: 1997-02-10
##  Created by: Robert COUBLANC
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Quantity/Quantity_NameOfColor,
  ../Prs3d/Prs3d_Drawer, AIS_TypeOfAttribute, ../Standard/Standard_Real,
  ../Aspect/Aspect_TypeOfLine

discard "forward decl of Quantity_Color"
discard "forward decl of Graphic3d_MaterialAspect"
type
  AIS_GraphicTool* {.importcpp: "AIS_GraphicTool", header: "AIS_GraphicTool.hxx",
                    bycopy.} = object


proc GetLineColor*(aDrawer: handle[Prs3d_Drawer];
                  TheTypeOfAttributes: AIS_TypeOfAttribute): Quantity_NameOfColor {.
    importcpp: "AIS_GraphicTool::GetLineColor(@)", header: "AIS_GraphicTool.hxx".}
proc GetLineColor*(aDrawer: handle[Prs3d_Drawer];
                  TheTypeOfAttributes: AIS_TypeOfAttribute;
                  TheLineColor: var Quantity_Color) {.
    importcpp: "AIS_GraphicTool::GetLineColor(@)", header: "AIS_GraphicTool.hxx".}
proc GetLineWidth*(aDrawer: handle[Prs3d_Drawer];
                  TheTypeOfAttributes: AIS_TypeOfAttribute): Standard_Real {.
    importcpp: "AIS_GraphicTool::GetLineWidth(@)", header: "AIS_GraphicTool.hxx".}
proc GetLineType*(aDrawer: handle[Prs3d_Drawer];
                 TheTypeOfAttributes: AIS_TypeOfAttribute): Aspect_TypeOfLine {.
    importcpp: "AIS_GraphicTool::GetLineType(@)", header: "AIS_GraphicTool.hxx".}
proc GetLineAtt*(aDrawer: handle[Prs3d_Drawer];
                TheTypeOfAttributes: AIS_TypeOfAttribute;
                aCol: var Quantity_NameOfColor; aWidth: var Standard_Real;
                aTyp: var Aspect_TypeOfLine) {.
    importcpp: "AIS_GraphicTool::GetLineAtt(@)", header: "AIS_GraphicTool.hxx".}
proc GetInteriorColor*(aDrawer: handle[Prs3d_Drawer]): Quantity_NameOfColor {.
    importcpp: "AIS_GraphicTool::GetInteriorColor(@)",
    header: "AIS_GraphicTool.hxx".}
proc GetInteriorColor*(aDrawer: handle[Prs3d_Drawer]; aColor: var Quantity_Color) {.
    importcpp: "AIS_GraphicTool::GetInteriorColor(@)",
    header: "AIS_GraphicTool.hxx".}
proc GetMaterial*(aDrawer: handle[Prs3d_Drawer]): Graphic3d_MaterialAspect {.
    importcpp: "AIS_GraphicTool::GetMaterial(@)", header: "AIS_GraphicTool.hxx".}