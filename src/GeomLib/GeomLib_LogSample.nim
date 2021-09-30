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

discard "forward decl of Standard_OutOfRange"
type
  GeomLibLogSample* {.importcpp: "GeomLib_LogSample",
                     header: "GeomLib_LogSample.hxx", bycopy.} = object of MathFunctionSample


proc `new`*(this: var GeomLibLogSample; theSize: csize_t): pointer {.
    importcpp: "GeomLib_LogSample::operator new", header: "GeomLib_LogSample.hxx".}
proc `delete`*(this: var GeomLibLogSample; theAddress: pointer) {.
    importcpp: "GeomLib_LogSample::operator delete",
    header: "GeomLib_LogSample.hxx".}
proc `new[]`*(this: var GeomLibLogSample; theSize: csize_t): pointer {.
    importcpp: "GeomLib_LogSample::operator new[]",
    header: "GeomLib_LogSample.hxx".}
proc `delete[]`*(this: var GeomLibLogSample; theAddress: pointer) {.
    importcpp: "GeomLib_LogSample::operator delete[]",
    header: "GeomLib_LogSample.hxx".}
proc `new`*(this: var GeomLibLogSample; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomLib_LogSample::operator new", header: "GeomLib_LogSample.hxx".}
proc `delete`*(this: var GeomLibLogSample; a2: pointer; a3: pointer) {.
    importcpp: "GeomLib_LogSample::operator delete",
    header: "GeomLib_LogSample.hxx".}
proc constructGeomLibLogSample*(a: StandardReal; b: StandardReal; n: int): GeomLibLogSample {.
    constructor, importcpp: "GeomLib_LogSample(@)", header: "GeomLib_LogSample.hxx".}
proc getParameter*(this: GeomLibLogSample; index: int): StandardReal {.noSideEffect,
    importcpp: "GetParameter", header: "GeomLib_LogSample.hxx".}