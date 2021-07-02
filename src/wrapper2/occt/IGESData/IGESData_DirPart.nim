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
proc init*(this: var IGESDataDirPart; i1: StandardInteger; i2: StandardInteger;
          i3: StandardInteger; i4: StandardInteger; i5: StandardInteger;
          i6: StandardInteger; i7: StandardInteger; i8: StandardInteger;
          i9: StandardInteger; i19: StandardInteger; i11: StandardInteger;
          i12: StandardInteger; i13: StandardInteger; i14: StandardInteger;
          i15: StandardInteger; i16: StandardInteger; i17: StandardInteger;
          res1: StandardCString; res2: StandardCString; label: StandardCString;
          subscript: StandardCString) {.importcpp: "Init",
                                      header: "IGESData_DirPart.hxx".}
proc values*(this: IGESDataDirPart; i1: var StandardInteger; i2: var StandardInteger;
            i3: var StandardInteger; i4: var StandardInteger; i5: var StandardInteger;
            i6: var StandardInteger; i7: var StandardInteger; i8: var StandardInteger;
            i9: var StandardInteger; i19: var StandardInteger;
            i11: var StandardInteger; i12: var StandardInteger;
            i13: var StandardInteger; i14: var StandardInteger;
            i15: var StandardInteger; i16: var StandardInteger;
            i17: var StandardInteger; res1: StandardCString; res2: StandardCString;
            label: StandardCString; subscript: StandardCString) {.noSideEffect,
    importcpp: "Values", header: "IGESData_DirPart.hxx".}
proc `type`*(this: IGESDataDirPart): IGESDataIGESType {.noSideEffect,
    importcpp: "Type", header: "IGESData_DirPart.hxx".}

