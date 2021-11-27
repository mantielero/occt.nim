##  Created on: 1992-10-01
##  Created by: Jacques GOUSSARD
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

discard "forward decl of IntSurf_InteriorPoint"
type
  IntSurfInteriorPointTool* {.importcpp: "IntSurf_InteriorPointTool",
                             header: "IntSurf_InteriorPointTool.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## the
                                                                                   ## 3d
                                                                                   ## coordinates
                                                                                   ## of
                                                                                   ## the
                                                                                   ## starting
                                                                                   ## point.


proc value3d*(pStart: IntSurfInteriorPoint): Pnt {.cdecl,
    importcpp: "IntSurf_InteriorPointTool::Value3d(@)", header: "IntSurf_InteriorPointTool.hxx".}
proc value2d*(pStart: IntSurfInteriorPoint; u: var cfloat; v: var cfloat) {.cdecl,
    importcpp: "IntSurf_InteriorPointTool::Value2d(@)", header: "IntSurf_InteriorPointTool.hxx".}
proc direction3d*(pStart: IntSurfInteriorPoint): Vec {.cdecl,
    importcpp: "IntSurf_InteriorPointTool::Direction3d(@)", header: "IntSurf_InteriorPointTool.hxx".}
proc direction2d*(pStart: IntSurfInteriorPoint): Dir2d {.cdecl,
    importcpp: "IntSurf_InteriorPointTool::Direction2d(@)", header: "IntSurf_InteriorPointTool.hxx".}