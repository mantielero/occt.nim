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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Law_BSpline"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_TgtField"
discard "forward decl of GeomFill_TgtField"
type
  Handle_GeomFill_TgtField* = handle[GeomFill_TgtField]

## ! Root class defining the methods we need to make an
## ! algorithmic tangents field.

type
  GeomFill_TgtField* {.importcpp: "GeomFill_TgtField",
                      header: "GeomFill_TgtField.hxx", bycopy.} = object of Standard_Transient


proc IsScalable*(this: GeomFill_TgtField): Standard_Boolean {.noSideEffect,
    importcpp: "IsScalable", header: "GeomFill_TgtField.hxx".}
proc Scale*(this: var GeomFill_TgtField; Func: handle[Law_BSpline]) {.
    importcpp: "Scale", header: "GeomFill_TgtField.hxx".}
proc Value*(this: GeomFill_TgtField; W: Standard_Real): gp_Vec {.noSideEffect,
    importcpp: "Value", header: "GeomFill_TgtField.hxx".}
proc D1*(this: GeomFill_TgtField; W: Standard_Real): gp_Vec {.noSideEffect,
    importcpp: "D1", header: "GeomFill_TgtField.hxx".}
proc D1*(this: GeomFill_TgtField; W: Standard_Real; V: var gp_Vec; DV: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomFill_TgtField.hxx".}
type
  GeomFill_TgtFieldbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "GeomFill_TgtField::get_type_name(@)",
                              header: "GeomFill_TgtField.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_TgtField::get_type_descriptor(@)",
    header: "GeomFill_TgtField.hxx".}
proc DynamicType*(this: GeomFill_TgtField): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_TgtField.hxx".}