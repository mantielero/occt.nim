import intsurf_types
import ../../tkmath/gp/gp_types



##  Created on: 1992-05-15
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



proc newIntSurfInteriorPoint*(): IntSurfInteriorPoint {.cdecl, constructor,
    importcpp: "IntSurf_InteriorPoint(@)", header: "IntSurf_InteriorPoint.hxx".}
proc newIntSurfInteriorPoint*(p: PntObj; u: cfloat; v: cfloat; direc: VecObj; direc2d: Vec2dObj): IntSurfInteriorPoint {.
    cdecl, constructor, importcpp: "IntSurf_InteriorPoint(@)", header: "IntSurf_InteriorPoint.hxx".}
proc setValue*(this: var IntSurfInteriorPoint; p: PntObj; u: cfloat; v: cfloat; direc: VecObj;
              direc2d: Vec2dObj) {.cdecl, importcpp: "SetValue", header: "IntSurf_InteriorPoint.hxx".}
proc value*(this: IntSurfInteriorPoint): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "IntSurf_InteriorPoint.hxx".}
proc parameters*(this: IntSurfInteriorPoint; u: var cfloat; v: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Parameters", header: "IntSurf_InteriorPoint.hxx".}
proc uParameter*(this: IntSurfInteriorPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "UParameter", header: "IntSurf_InteriorPoint.hxx".}
proc vParameter*(this: IntSurfInteriorPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "VParameter", header: "IntSurf_InteriorPoint.hxx".}
proc direction*(this: IntSurfInteriorPoint): VecObj {.noSideEffect, cdecl,
    importcpp: "Direction", header: "IntSurf_InteriorPoint.hxx".}
proc direction2d*(this: IntSurfInteriorPoint): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Direction2d", header: "IntSurf_InteriorPoint.hxx".}

