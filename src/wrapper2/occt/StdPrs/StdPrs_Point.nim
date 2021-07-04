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
  ../Geom/Geom_Point, ../Prs3d/Prs3d_Point, ../Prs3d/Prs3d_Drawer,
  ../Prs3d/Prs3d_Presentation, StdPrs_ToolPoint

## computes the presentation of objects to be seen as points.

type
  StdPrs_Point* = Prs3d_Point[handle[Geom_Point], StdPrs_ToolPoint]