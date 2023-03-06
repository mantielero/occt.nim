{.experimental: "callOperator".}

import ../../tkmath/math/math_types
import geomfill_types





##  Created on: 1996-12-05
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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



proc newGeomFillTensor*(nbRow: cint; nbCol: cint; nbMat: cint): GeomFillTensor {.cdecl,
    constructor, importcpp: "GeomFill_Tensor(@)", header: "GeomFill_Tensor.hxx".}
proc init*(this: var GeomFillTensor; initialValue: cfloat) {.cdecl, importcpp: "Init",
    header: "GeomFill_Tensor.hxx".}
proc value*(this: GeomFillTensor; row: cint; col: cint; mat: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "Value", header: "GeomFill_Tensor.hxx".}
proc `()`*(this: GeomFillTensor; row: cint; col: cint; mat: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "#(@)", header: "GeomFill_Tensor.hxx".}
proc changeValue*(this: var GeomFillTensor; row: cint; col: cint; mat: cint): var cfloat {.
    cdecl, importcpp: "ChangeValue", header: "GeomFill_Tensor.hxx".}
proc `()`*(this: var GeomFillTensor; row: cint; col: cint; mat: cint): var cfloat {.cdecl,
    importcpp: "#(@)", header: "GeomFill_Tensor.hxx".}
proc multiply*(this: GeomFillTensor; right: MathVector; product: var MathMatrix) {.
    noSideEffect, cdecl, importcpp: "Multiply", header: "GeomFill_Tensor.hxx".}


