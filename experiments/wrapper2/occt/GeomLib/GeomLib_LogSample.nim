##  Created on: 1998-09-23
##  Created by: Philippe MANGIN
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../math/math_FunctionSample, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
type
  GeomLib_LogSample* {.importcpp: "GeomLib_LogSample",
                      header: "GeomLib_LogSample.hxx", bycopy.} = object of math_FunctionSample


proc constructGeomLib_LogSample*(A: Standard_Real; B: Standard_Real;
                                N: Standard_Integer): GeomLib_LogSample {.
    constructor, importcpp: "GeomLib_LogSample(@)", header: "GeomLib_LogSample.hxx".}
proc GetParameter*(this: GeomLib_LogSample; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GetParameter", header: "GeomLib_LogSample.hxx".}