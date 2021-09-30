##  Created on: 1990-12-17
##  Created by: Remi Lequette
##  Copyright (c) 1990-1999 Matra Datavision
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

## ! Describes a wire which
## ! - references an underlying wire with the potential to
## ! be given a location and an orientation
## ! - has a location for the underlying wire, giving its
## ! placement in the local coordinate system
## ! - has an orientation for the underlying wire, in terms
## ! of its geometry (as opposed to orientation in relation to other shapes).

type
  TopoDS_Wire* {.importcpp: "TopoDS_Wire", header: "TopoDS_Wire.hxx", bycopy.} = object of TopoDS_Shape


proc `new`*(this: var TopoDS_Wire; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Wire::operator new", header: "TopoDS_Wire.hxx".}
proc `delete`*(this: var TopoDS_Wire; theAddress: pointer) {.
    importcpp: "TopoDS_Wire::operator delete", header: "TopoDS_Wire.hxx".}
proc `new[]`*(this: var TopoDS_Wire; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Wire::operator new[]", header: "TopoDS_Wire.hxx".}
proc `delete[]`*(this: var TopoDS_Wire; theAddress: pointer) {.
    importcpp: "TopoDS_Wire::operator delete[]", header: "TopoDS_Wire.hxx".}
proc `new`*(this: var TopoDS_Wire; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Wire::operator new", header: "TopoDS_Wire.hxx".}
proc `delete`*(this: var TopoDS_Wire; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Wire::operator delete", header: "TopoDS_Wire.hxx".}
proc newTopoDS_Wire*(): TopoDS_Wire {.constructor,
    importcpp: "TopoDS_Wire(@)", header: "TopoDS_Wire.hxx".}