##  Created on: 1995-01-23
##  Created by: Mister rmi
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Integer

## ! interface class for dynamic selection

type
  SelectBasics* {.importcpp: "SelectBasics", header: "SelectBasics.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Structure
                                                                                   ## to
                                                                                   ## provide
                                                                                   ## all-in-one
                                                                                   ## result
                                                                                   ## of
                                                                                   ## selection
                                                                                   ## of
                                                                                   ## sensitive
                                                                                   ## for
                                                                                   ## "Matches"
                                                                                   ## method
                                                                                   ## of
                                                                                   ## Select3D_SensitiveEntity.


proc MaxOwnerPriority*(): Standard_Integer {.
    importcpp: "SelectBasics::MaxOwnerPriority(@)", header: "SelectBasics.hxx".}
proc MinOwnerPriority*(): Standard_Integer {.
    importcpp: "SelectBasics::MinOwnerPriority(@)", header: "SelectBasics.hxx".}