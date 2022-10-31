import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/geomabs/geomabs_types
import geomfill_types



##  Created on: 1997-12-09
##  Created by: Philippe MANGIN
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





proc newGeomFillFixed*(tangent: VecObj; normal: VecObj): GeomFillFixed {.cdecl, constructor,
    importcpp: "GeomFill_Fixed(@)", header: "GeomFill_Fixed.hxx".}
proc copy*(this: GeomFillFixed): Handle[GeomFillTrihedronLaw] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "GeomFill_Fixed.hxx".}
proc d0*(this: var GeomFillFixed; param: cfloat; tangent: var VecObj; normal: var VecObj;
        biNormal: var VecObj): bool {.cdecl, importcpp: "D0", header: "GeomFill_Fixed.hxx".}
proc d1*(this: var GeomFillFixed; param: cfloat; tangent: var VecObj; dTangent: var VecObj;
        normal: var VecObj; dNormal: var VecObj; biNormal: var VecObj; dBiNormal: var VecObj): bool {.
    cdecl, importcpp: "D1", header: "GeomFill_Fixed.hxx".}
proc d2*(this: var GeomFillFixed; param: cfloat; tangent: var VecObj; dTangent: var VecObj;
        d2Tangent: var VecObj; normal: var VecObj; dNormal: var VecObj; d2Normal: var VecObj;
        biNormal: var VecObj; dBiNormal: var VecObj; d2BiNormal: var VecObj): bool {.cdecl,
    importcpp: "D2", header: "GeomFill_Fixed.hxx".}
proc nbIntervals*(this: GeomFillFixed; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "GeomFill_Fixed.hxx".}
proc intervals*(this: GeomFillFixed; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "GeomFill_Fixed.hxx".}
proc getAverageLaw*(this: var GeomFillFixed; aTangent: var VecObj; aNormal: var VecObj;
                   aBiNormal: var VecObj) {.cdecl, importcpp: "GetAverageLaw",
                                      header: "GeomFill_Fixed.hxx".}
proc isConstant*(this: GeomFillFixed): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", header: "GeomFill_Fixed.hxx".}

