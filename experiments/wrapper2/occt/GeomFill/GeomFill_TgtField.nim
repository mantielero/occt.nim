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
discard "forward decl of GeomFill_TgtField"
type
  HandleGeomFillTgtField* = Handle[GeomFillTgtField]

## ! Root class defining the methods we need to make an
## ! algorithmic tangents field.

type
  GeomFillTgtField* {.importcpp: "GeomFill_TgtField",
                     header: "GeomFill_TgtField.hxx", bycopy.} = object of StandardTransient


proc isScalable*(this: GeomFillTgtField): bool {.noSideEffect,
    importcpp: "IsScalable", header: "GeomFill_TgtField.hxx".}
proc scale*(this: var GeomFillTgtField; `func`: Handle[LawBSpline]) {.
    importcpp: "Scale", header: "GeomFill_TgtField.hxx".}
proc value*(this: GeomFillTgtField; w: float): Vec {.noSideEffect, importcpp: "Value",
    header: "GeomFill_TgtField.hxx".}
proc d1*(this: GeomFillTgtField; w: float): Vec {.noSideEffect, importcpp: "D1",
    header: "GeomFill_TgtField.hxx".}
proc d1*(this: GeomFillTgtField; w: float; v: var Vec; dv: var Vec) {.noSideEffect,
    importcpp: "D1", header: "GeomFill_TgtField.hxx".}
type
  GeomFillTgtFieldbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GeomFill_TgtField::get_type_name(@)",
                            header: "GeomFill_TgtField.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_TgtField::get_type_descriptor(@)",
    header: "GeomFill_TgtField.hxx".}
proc dynamicType*(this: GeomFillTgtField): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_TgtField.hxx".}
