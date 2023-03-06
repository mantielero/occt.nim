import ../tcolgp/tcolgp_types
import ../gp/gp_types
import geomfill_types





##  Created on: 1997-07-18
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



proc newGeomFillPolynomialConvertor*(): GeomFillPolynomialConvertor {.cdecl,
    constructor, importcpp: "GeomFill_PolynomialConvertor(@)", header: "GeomFill_PolynomialConvertor.hxx".}
proc initialized*(this: GeomFillPolynomialConvertor): bool {.noSideEffect, cdecl,
    importcpp: "Initialized", header: "GeomFill_PolynomialConvertor.hxx".}
proc init*(this: var GeomFillPolynomialConvertor) {.cdecl, importcpp: "Init",
    header: "GeomFill_PolynomialConvertor.hxx".}
proc section*(this: GeomFillPolynomialConvertor; firstPnt: gp_Pnt; center: gp_Pnt; dir: VecObj;
             angle: cfloat; poles: var TColgpArray1OfPnt) {.noSideEffect, cdecl,
    importcpp: "Section", header: "GeomFill_PolynomialConvertor.hxx".}
proc section*(this: GeomFillPolynomialConvertor; firstPnt: gp_Pnt; dFirstPnt: VecObj;
             center: gp_Pnt; dCenter: VecObj; dir: VecObj; dDir: VecObj; angle: cfloat;
             dAngle: cfloat; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec) {.noSideEffect, cdecl,
    importcpp: "Section", header: "GeomFill_PolynomialConvertor.hxx".}
proc section*(this: GeomFillPolynomialConvertor; firstPnt: gp_Pnt; dFirstPnt: VecObj;
             d2FirstPnt: VecObj; center: gp_Pnt; dCenter: VecObj; d2Center: VecObj; dir: VecObj;
             dDir: VecObj; d2Dir: VecObj; angle: cfloat; dAngle: cfloat; d2Angle: cfloat;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec) {.noSideEffect, cdecl,
    importcpp: "Section", header: "GeomFill_PolynomialConvertor.hxx".}


