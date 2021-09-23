##  Created on: 2006-12-05
##  Created by: Sergey  KOCHETKOV
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, TColStd_PackedMapOfInteger,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer

discard "forward decl of TColStd_HPackedMapOfInteger"
discard "forward decl of TColStd_HPackedMapOfInteger"
type
  Handle_TColStd_HPackedMapOfInteger* = handle[TColStd_HPackedMapOfInteger]

## ! Extension of TColStd_PackedMapOfInteger class to be manipulated by handle.

type
  TColStd_HPackedMapOfInteger* {.importcpp: "TColStd_HPackedMapOfInteger",
                                header: "TColStd_HPackedMapOfInteger.hxx", bycopy.} = object of Standard_Transient


proc constructTColStd_HPackedMapOfInteger*(NbBuckets: Standard_Integer = 1): TColStd_HPackedMapOfInteger {.
    constructor, importcpp: "TColStd_HPackedMapOfInteger(@)",
    header: "TColStd_HPackedMapOfInteger.hxx".}
proc constructTColStd_HPackedMapOfInteger*(theOther: TColStd_PackedMapOfInteger): TColStd_HPackedMapOfInteger {.
    constructor, importcpp: "TColStd_HPackedMapOfInteger(@)",
    header: "TColStd_HPackedMapOfInteger.hxx".}
proc Map*(this: TColStd_HPackedMapOfInteger): TColStd_PackedMapOfInteger {.
    noSideEffect, importcpp: "Map", header: "TColStd_HPackedMapOfInteger.hxx".}
proc ChangeMap*(this: var TColStd_HPackedMapOfInteger): var TColStd_PackedMapOfInteger {.
    importcpp: "ChangeMap", header: "TColStd_HPackedMapOfInteger.hxx".}
type
  TColStd_HPackedMapOfIntegerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TColStd_HPackedMapOfInteger::get_type_name(@)",
                              header: "TColStd_HPackedMapOfInteger.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TColStd_HPackedMapOfInteger::get_type_descriptor(@)",
    header: "TColStd_HPackedMapOfInteger.hxx".}
proc DynamicType*(this: TColStd_HPackedMapOfInteger): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TColStd_HPackedMapOfInteger.hxx".}