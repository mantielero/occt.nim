##  Created on: 2007-03-07
##  Created by: msv@EUCLIDEX
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

## *
##  General purpose buffer that is allocated on the stack with a
##  constant size MeshVS_BufSize, or is allocated dynamically if the requested
##  size exceeds the standard one.
##  It is useful when an allocation of an array of unknown size is needed,
##  and most often the array is small enough to allocate as automatic C array.
##
## ! define the constant to the size of 10 points

const
  MeshVS_BufSize* = 10 * 3 * sizeof((double))

type
  MeshVS_Buffer* {.importcpp: "MeshVS_Buffer", header: "MeshVS_Buffer.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Constructor
                                                                                      ## of
                                                                                      ## the
                                                                                      ## buffer
                                                                                      ## of
                                                                                      ## the
                                                                                      ## requested
                                                                                      ## size
                                                                                      ##
                                                                                      ## !
                                                                                      ## Deprecate
                                                                                      ## copy
                                                                                      ## constructor


proc constructMeshVS_Buffer*(theSize: StandardSize): MeshVS_Buffer {.constructor,
    importcpp: "MeshVS_Buffer(@)", header: "MeshVS_Buffer.hxx".}
proc destroyMeshVS_Buffer*(this: var MeshVS_Buffer) {.
    importcpp: "#.~MeshVS_Buffer()", header: "MeshVS_Buffer.hxx".}
converter `void*`*(this: var MeshVS_Buffer): pointer {.
    importcpp: "MeshVS_Buffer::operator void*", header: "MeshVS_Buffer.hxx".}
converter `standardReal&`*(this: var MeshVS_Buffer): var StandardReal {.
    importcpp: "MeshVS_Buffer::operator Standard_Real&",
    header: "MeshVS_Buffer.hxx".}
converter `standardInteger&`*(this: var MeshVS_Buffer): var StandardInteger {.
    importcpp: "MeshVS_Buffer::operator Standard_Integer&",
    header: "MeshVS_Buffer.hxx".}
converter `gpPnt&`*(this: var MeshVS_Buffer): var GpPnt {.
    importcpp: "MeshVS_Buffer::operator gp_Pnt&", header: "MeshVS_Buffer.hxx".}

