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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Character, ../Standard/Standard_CString

discard "forward decl of IGESData_IGESType"
type
  IGESData_DirPart* {.importcpp: "IGESData_DirPart",
                     header: "IGESData_DirPart.hxx", bycopy.} = object ## ! creates an empty DirPart, ready to be filled by Init


proc constructIGESData_DirPart*(): IGESData_DirPart {.constructor,
    importcpp: "IGESData_DirPart(@)", header: "IGESData_DirPart.hxx".}
proc Init*(this: var IGESData_DirPart; i1: Standard_Integer; i2: Standard_Integer;
          i3: Standard_Integer; i4: Standard_Integer; i5: Standard_Integer;
          i6: Standard_Integer; i7: Standard_Integer; i8: Standard_Integer;
          i9: Standard_Integer; i19: Standard_Integer; i11: Standard_Integer;
          i12: Standard_Integer; i13: Standard_Integer; i14: Standard_Integer;
          i15: Standard_Integer; i16: Standard_Integer; i17: Standard_Integer;
          res1: Standard_CString; res2: Standard_CString; label: Standard_CString;
          subscript: Standard_CString) {.importcpp: "Init",
                                       header: "IGESData_DirPart.hxx".}
proc Values*(this: IGESData_DirPart; i1: var Standard_Integer;
            i2: var Standard_Integer; i3: var Standard_Integer;
            i4: var Standard_Integer; i5: var Standard_Integer;
            i6: var Standard_Integer; i7: var Standard_Integer;
            i8: var Standard_Integer; i9: var Standard_Integer;
            i19: var Standard_Integer; i11: var Standard_Integer;
            i12: var Standard_Integer; i13: var Standard_Integer;
            i14: var Standard_Integer; i15: var Standard_Integer;
            i16: var Standard_Integer; i17: var Standard_Integer;
            res1: Standard_CString; res2: Standard_CString; label: Standard_CString;
            subscript: Standard_CString) {.noSideEffect, importcpp: "Values",
    header: "IGESData_DirPart.hxx".}
proc Type*(this: IGESData_DirPart): IGESData_IGESType {.noSideEffect,
    importcpp: "Type", header: "IGESData_DirPart.hxx".}