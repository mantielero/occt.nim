##  Created on: 1993-01-11
##  Created by: SIVA
##  Copyright (c) 1993-1999 Matra Datavision
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
  IGESSolid_Shell, IGESSolid_Array1OfShell,
  ../NCollection/NCollection_DefineHArray1

type
  IGESSolid_HArray1OfShell* {.importcpp: "IGESSolid_HArray1OfShell",
                             header: "IGESSolid_HArray1OfShell.hxx", bycopy.} = object of IGESSolid_Array1OfShell


proc constructIGESSolid_HArray1OfShell*(theLower: Standard_Integer;
                                       theUpper: Standard_Integer): IGESSolid_HArray1OfShell {.
    constructor, importcpp: "IGESSolid_HArray1OfShell(@)",
    header: "IGESSolid_HArray1OfShell.hxx".}
proc constructIGESSolid_HArray1OfShell*(theLower: Standard_Integer;
                                       theUpper: Standard_Integer;
                                       theValue: value_type): IGESSolid_HArray1OfShell {.
    constructor, importcpp: "IGESSolid_HArray1OfShell(@)",
    header: "IGESSolid_HArray1OfShell.hxx".}
proc constructIGESSolid_HArray1OfShell*(theOther: IGESSolid_Array1OfShell): IGESSolid_HArray1OfShell {.
    constructor, importcpp: "IGESSolid_HArray1OfShell(@)",
    header: "IGESSolid_HArray1OfShell.hxx".}
proc Array1*(this: IGESSolid_HArray1OfShell): IGESSolid_Array1OfShell {.
    noSideEffect, importcpp: "Array1", header: "IGESSolid_HArray1OfShell.hxx".}
proc ChangeArray1*(this: var IGESSolid_HArray1OfShell): var IGESSolid_Array1OfShell {.
    importcpp: "ChangeArray1", header: "IGESSolid_HArray1OfShell.hxx".}
type
  IGESSolid_HArray1OfShellbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESSolid_HArray1OfShell::get_type_name(@)",
                              header: "IGESSolid_HArray1OfShell.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_HArray1OfShell::get_type_descriptor(@)",
    header: "IGESSolid_HArray1OfShell.hxx".}
proc DynamicType*(this: IGESSolid_HArray1OfShell): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_HArray1OfShell.hxx".}