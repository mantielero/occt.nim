##  Created on: 1992-08-26
##  Created by: Jean Louis FRENKEL
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! Describes supported modes of visualization of the shape's vertices:
## ! VDM_Isolated  - only isolated vertices (not belonging to a face) are displayed.
## ! VDM_All       - all vertices of the shape are displayed.
## ! VDM_Inherited - the global settings are inherited and applied to the shape's presentation.

type
  Prs3dVertexDrawMode* {.size: sizeof(cint), importcpp: "Prs3d_VertexDrawMode",
                        header: "Prs3d_VertexDrawMode.hxx".} = enum
    Prs3dVDM_Isolated, Prs3dVDM_All, Prs3dVDM_Inherited


