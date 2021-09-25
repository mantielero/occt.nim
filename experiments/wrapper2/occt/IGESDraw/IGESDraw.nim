##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen (Niraj RANGWALA)
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of IGESDraw_Protocol"
discard "forward decl of IGESDraw_ConnectPoint"
discard "forward decl of IGESDraw_NetworkSubfigureDef"
discard "forward decl of IGESDraw_ViewsVisible"
discard "forward decl of IGESDraw_ViewsVisibleWithAttr"
discard "forward decl of IGESDraw_LabelDisplay"
discard "forward decl of IGESDraw_Planar"
discard "forward decl of IGESDraw_SegmentedViewsVisible"
discard "forward decl of IGESDraw_Drawing"
discard "forward decl of IGESDraw_DrawingWithRotation"
discard "forward decl of IGESDraw_View"
discard "forward decl of IGESDraw_RectArraySubfigure"
discard "forward decl of IGESDraw_CircArraySubfigure"
discard "forward decl of IGESDraw_NetworkSubfigure"
discard "forward decl of IGESDraw_PerspectiveView"
discard "forward decl of IGESDraw_ToolConnectPoint"
discard "forward decl of IGESDraw_ToolNetworkSubfigureDef"
discard "forward decl of IGESDraw_ToolViewsVisible"
discard "forward decl of IGESDraw_ToolViewsVisibleWithAttr"
discard "forward decl of IGESDraw_ToolLabelDisplay"
discard "forward decl of IGESDraw_ToolPlanar"
discard "forward decl of IGESDraw_ToolSegmentedViewsVisible"
discard "forward decl of IGESDraw_ToolDrawing"
discard "forward decl of IGESDraw_ToolDrawingWithRotation"
discard "forward decl of IGESDraw_ToolView"
discard "forward decl of IGESDraw_ToolRectArraySubfigure"
discard "forward decl of IGESDraw_ToolCircArraySubfigure"
discard "forward decl of IGESDraw_ToolNetworkSubfigure"
discard "forward decl of IGESDraw_ToolPerspectiveView"
discard "forward decl of IGESDraw_Protocol"
discard "forward decl of IGESDraw_ReadWriteModule"
discard "forward decl of IGESDraw_GeneralModule"
discard "forward decl of IGESDraw_SpecificModule"
type
  IGESDraw* {.importcpp: "IGESDraw", header: "IGESDraw.hxx", bycopy.} = object ## ! Prepares dynamic data
                                                                       ## (Protocol, Modules) for this package


proc init*() {.importcpp: "IGESDraw::Init(@)", header: "IGESDraw.hxx".}
proc protocol*(): Handle[IGESDrawProtocol] {.importcpp: "IGESDraw::Protocol(@)",
    header: "IGESDraw.hxx".}
