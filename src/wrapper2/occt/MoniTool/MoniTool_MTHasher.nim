##  Created on: 2001-12-19
##  Created by: Sergey KUUL
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_CString, ../Standard/Standard_Boolean

## ! The auxiliary class provides hash code for mapping objects

type
  MoniTool_MTHasher* {.importcpp: "MoniTool_MTHasher",
                      header: "MoniTool_MTHasher.hxx", bycopy.} = object ## ! Returns hash code for the given string, in the range [1,
                                                                    ## theUpperBound]
                                                                    ## ! @param theString the string which hash code is to be computed
                                                                    ## ! @param
                                                                    ## theUpperBound the upper bound of the range a computing hash code must be within
                                                                    ## ! @return a computed hash code, in the range [1,
                                                                    ## theUpperBound]


proc HashCode*(theString: Standard_CString; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "MoniTool_MTHasher::HashCode(@)", header: "MoniTool_MTHasher.hxx".}
proc IsEqual*(Str1: Standard_CString; Str2: Standard_CString): Standard_Boolean {.
    importcpp: "MoniTool_MTHasher::IsEqual(@)", header: "MoniTool_MTHasher.hxx".}