##  Created on: 1993-03-10
##  Created by: Philippe DAUTRY
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
  ../gp/gp_Dir, TColgp_Array1OfDir, ../NCollection/NCollection_DefineHArray1

type
  TColgp_HArray1OfDir* {.importcpp: "TColgp_HArray1OfDir",
                        header: "TColgp_HArray1OfDir.hxx", bycopy.} = object of TColgp_Array1OfDir


proc constructTColgp_HArray1OfDir*(theLower: Standard_Integer;
                                  theUpper: Standard_Integer): TColgp_HArray1OfDir {.
    constructor, importcpp: "TColgp_HArray1OfDir(@)",
    header: "TColgp_HArray1OfDir.hxx".}
proc constructTColgp_HArray1OfDir*(theLower: Standard_Integer;
                                  theUpper: Standard_Integer; theValue: value_type): TColgp_HArray1OfDir {.
    constructor, importcpp: "TColgp_HArray1OfDir(@)",
    header: "TColgp_HArray1OfDir.hxx".}
proc constructTColgp_HArray1OfDir*(theOther: TColgp_Array1OfDir): TColgp_HArray1OfDir {.
    constructor, importcpp: "TColgp_HArray1OfDir(@)",
    header: "TColgp_HArray1OfDir.hxx".}
proc Array1*(this: TColgp_HArray1OfDir): TColgp_Array1OfDir {.noSideEffect,
    importcpp: "Array1", header: "TColgp_HArray1OfDir.hxx".}
proc ChangeArray1*(this: var TColgp_HArray1OfDir): var TColgp_Array1OfDir {.
    importcpp: "ChangeArray1", header: "TColgp_HArray1OfDir.hxx".}
type
  TColgp_HArray1OfDirbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TColgp_HArray1OfDir::get_type_name(@)",
                              header: "TColgp_HArray1OfDir.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TColgp_HArray1OfDir::get_type_descriptor(@)",
    header: "TColgp_HArray1OfDir.hxx".}
proc DynamicType*(this: TColgp_HArray1OfDir): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TColgp_HArray1OfDir.hxx".}