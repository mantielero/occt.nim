##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  ../Graphic3d/Graphic3d_ArrayOfPoints, ../Graphic3d/Graphic3d_Vertex,
  ../Graphic3d/Graphic3d_Group, Prs3d_Drawer, Prs3d_PointAspect

type
  Prs3d_Point*[AnyPoint; PointTool] {.importcpp: "Prs3d_Point<\'0,\'1>",
                                    header: "Prs3d_Point.hxx", bycopy.} = object


proc Add*[AnyPoint; PointTool](thePrs: handle[Prs3d_Presentation];
                             thePoint: AnyPoint; theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "Prs3d_Point::Add(@)", header: "Prs3d_Point.hxx".}
proc Match*[AnyPoint; PointTool](thePoint: AnyPoint; theX: Standard_Real;
                               theY: Standard_Real; theZ: Standard_Real;
                               theDistance: Standard_Real): Standard_Boolean {.
    importcpp: "Prs3d_Point::Match(@)", header: "Prs3d_Point.hxx".}