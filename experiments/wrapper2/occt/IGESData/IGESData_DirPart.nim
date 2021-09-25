##  Created on: 1992-04-06
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of IGESData_IGESType"
type
  IGESDataDirPart* {.importcpp: "IGESData_DirPart", header: "IGESData_DirPart.hxx",
                    bycopy.} = object ## ! creates an empty DirPart, ready to be filled by Init


proc constructIGESDataDirPart*(): IGESDataDirPart {.constructor,
    importcpp: "IGESData_DirPart(@)", header: "IGESData_DirPart.hxx".}
proc init*(this: var IGESDataDirPart; i1: int; i2: int; i3: int; i4: int; i5: int; i6: int;
          i7: int; i8: int; i9: int; i19: int; i11: int; i12: int; i13: int; i14: int; i15: int;
          i16: int; i17: int; res1: StandardCString; res2: StandardCString;
          label: StandardCString; subscript: StandardCString) {.importcpp: "Init",
    header: "IGESData_DirPart.hxx".}
proc values*(this: IGESDataDirPart; i1: var int; i2: var int; i3: var int; i4: var int;
            i5: var int; i6: var int; i7: var int; i8: var int; i9: var int; i19: var int;
            i11: var int; i12: var int; i13: var int; i14: var int; i15: var int; i16: var int;
            i17: var int; res1: StandardCString; res2: StandardCString;
            label: StandardCString; subscript: StandardCString) {.noSideEffect,
    importcpp: "Values", header: "IGESData_DirPart.hxx".}
proc `type`*(this: IGESDataDirPart): IGESDataIGESType {.noSideEffect,
    importcpp: "Type", header: "IGESData_DirPart.hxx".}
