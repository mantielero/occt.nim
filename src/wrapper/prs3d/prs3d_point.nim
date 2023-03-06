import prs3d_types
import ../../tkernel/standard/standard_types





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



proc add*[AnyPoint; PointTool](thePrs: Handle[Prs3dPresentation];
                             thePoint: AnyPoint; theDrawer: Handle[Prs3dDrawer]) {.
    cdecl, importcpp: "Prs3d_Point::Add(@)", header: "Prs3d_Point.hxx".}
proc match*[AnyPoint; PointTool](thePoint: AnyPoint; theX: cfloat; theY: cfloat;
                               theZ: cfloat; theDistance: cfloat): bool {.cdecl,
    importcpp: "Prs3d_Point::Match(@)", header: "Prs3d_Point.hxx".}


