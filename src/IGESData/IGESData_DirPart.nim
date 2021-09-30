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
proc init*(this: var IGESDataDirPart; i1: cint; i2: cint; i3: cint; i4: cint; i5: cint;
          i6: cint; i7: cint; i8: cint; i9: cint; i19: cint; i11: cint; i12: cint; i13: cint;
          i14: cint; i15: cint; i16: cint; i17: cint; res1: StandardCString;
          res2: StandardCString; label: StandardCString; subscript: StandardCString) {.
    importcpp: "Init", header: "IGESData_DirPart.hxx".}
proc values*(this: IGESDataDirPart; i1: var cint; i2: var cint; i3: var cint; i4: var cint;
            i5: var cint; i6: var cint; i7: var cint; i8: var cint; i9: var cint;
            i19: var cint; i11: var cint; i12: var cint; i13: var cint; i14: var cint;
            i15: var cint; i16: var cint; i17: var cint; res1: StandardCString;
            res2: StandardCString; label: StandardCString;
            subscript: StandardCString) {.noSideEffect, importcpp: "Values",
                                        header: "IGESData_DirPart.hxx".}
proc `type`*(this: IGESDataDirPart): IGESDataIGESType {.noSideEffect,
    importcpp: "Type", header: "IGESData_DirPart.hxx".}

























