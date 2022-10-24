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

discard "forward decl of Law_BSpline"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_TgtField"




proc isScalable*(this: GeomFillTgtField): bool {.noSideEffect, cdecl,
    importcpp: "IsScalable", header: "GeomFill_TgtField.hxx".}
proc scale*(this: var GeomFillTgtField; `func`: Handle[LawBSpline]) {.cdecl,
    importcpp: "Scale", header: "GeomFill_TgtField.hxx".}
proc value*(this: GeomFillTgtField; w: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "GeomFill_TgtField.hxx".}
proc d1*(this: GeomFillTgtField; w: cfloat): VecObj {.noSideEffect, cdecl, importcpp: "D1",
    header: "GeomFill_TgtField.hxx".}
proc d1*(this: GeomFillTgtField; w: cfloat; v: var VecObj; dv: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "GeomFill_TgtField.hxx".}
