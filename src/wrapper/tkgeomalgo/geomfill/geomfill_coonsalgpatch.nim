import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../tkgeomalgo/law/law_types
import geomfill_types



##  Created on: 1995-12-04
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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





proc newGeomFillCoonsAlgPatch*(b1: Handle[GeomFillBoundary];
                              b2: Handle[GeomFillBoundary];
                              b3: Handle[GeomFillBoundary];
                              b4: Handle[GeomFillBoundary]): GeomFillCoonsAlgPatch {.
    cdecl, constructor, importcpp: "GeomFill_CoonsAlgPatch(@)", header: "GeomFill_CoonsAlgPatch.hxx".}
proc `func`*(this: GeomFillCoonsAlgPatch; f1: var Handle[LawFunction];
            f2: var Handle[LawFunction]) {.noSideEffect, cdecl, importcpp: "Func",
                                        header: "GeomFill_CoonsAlgPatch.hxx".}
proc setFunc*(this: var GeomFillCoonsAlgPatch; f1: Handle[LawFunction];
             f2: Handle[LawFunction]) {.cdecl, importcpp: "SetFunc",
                                      header: "GeomFill_CoonsAlgPatch.hxx".}
proc value*(this: GeomFillCoonsAlgPatch; u: cfloat; v: cfloat): PntObj {.noSideEffect,
    cdecl, importcpp: "Value", header: "GeomFill_CoonsAlgPatch.hxx".}
proc d1u*(this: GeomFillCoonsAlgPatch; u: cfloat; v: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "D1U", header: "GeomFill_CoonsAlgPatch.hxx".}
proc d1v*(this: GeomFillCoonsAlgPatch; u: cfloat; v: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "D1V", header: "GeomFill_CoonsAlgPatch.hxx".}
proc duv*(this: GeomFillCoonsAlgPatch; u: cfloat; v: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "DUV", header: "GeomFill_CoonsAlgPatch.hxx".}
proc corner*(this: GeomFillCoonsAlgPatch; i: cint): PntObj {.noSideEffect, cdecl,
    importcpp: "Corner", header: "GeomFill_CoonsAlgPatch.hxx".}
proc bound*(this: GeomFillCoonsAlgPatch; i: cint): Handle[GeomFillBoundary] {.
    noSideEffect, cdecl, importcpp: "Bound", header: "GeomFill_CoonsAlgPatch.hxx".}
proc `func`*(this: GeomFillCoonsAlgPatch; i: cint): Handle[LawFunction] {.
    noSideEffect, cdecl, importcpp: "Func", header: "GeomFill_CoonsAlgPatch.hxx".}

