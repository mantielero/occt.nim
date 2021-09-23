##  Copyright (c) 1998-1999 Matra Datavision
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
  Standard_Type

## ! Root of "persistent" classes, a legacy support of
## ! object oriented databases, now outdated.

type
  Standard_Persistent* {.importcpp: "Standard_Persistent",
                        header: "Standard_Persistent.hxx", bycopy.} = object of Standard_Transient


proc constructStandard_Persistent*(): Standard_Persistent {.constructor,
    importcpp: "Standard_Persistent(@)", header: "Standard_Persistent.hxx".}
type
  Standard_Persistentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Standard_Persistent::get_type_name(@)",
                              header: "Standard_Persistent.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Standard_Persistent::get_type_descriptor(@)",
    header: "Standard_Persistent.hxx".}
proc DynamicType*(this: Standard_Persistent): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_Persistent.hxx".}
proc TypeNum*(this: var Standard_Persistent): var Standard_Integer {.
    importcpp: "TypeNum", header: "Standard_Persistent.hxx".}