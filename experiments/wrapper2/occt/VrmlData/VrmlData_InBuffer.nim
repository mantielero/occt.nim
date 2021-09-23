##  Created on: 2006-10-08
##  Created by: Alexander GRIGORIEV
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
  ../Standard/Standard_IStream, ../Standard/Standard_Boolean

## *
##  Structure passed to the methods dealing with input stream.
##

type
  VrmlData_InBuffer* {.importcpp: "VrmlData_InBuffer",
                      header: "VrmlData_InBuffer.hxx", bycopy.} = object
    Input* {.importc: "Input".}: var Standard_IStream
    Line* {.importc: "Line".}: array[8096, char]
    LinePtr* {.importc: "LinePtr".}: cstring
    IsProcessed* {.importc: "IsProcessed".}: Standard_Boolean
    LineCount* {.importc: "LineCount".}: Standard_Integer


proc constructVrmlData_InBuffer*(theStream: var Standard_IStream): VrmlData_InBuffer {.
    constructor, importcpp: "VrmlData_InBuffer(@)", header: "VrmlData_InBuffer.hxx".}