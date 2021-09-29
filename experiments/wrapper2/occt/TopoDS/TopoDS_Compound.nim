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

## ! Describes a compound which
## ! - references an underlying compound with the
## ! potential to be given a location and an orientation
## ! - has a location for the underlying compound, giving
## ! its placement in the local coordinate system
## ! - has an orientation for the underlying compound, in
## ! terms of its geometry (as opposed to orientation in
## ! relation to other shapes).
## ! Casts shape S to the more specialized return type, Compound.

type
  TopoDS_Compound* {.importcpp: "TopoDS_Compound", header: "TopoDS_Compound.hxx",
                    bycopy.} = object of TopoDS_Shape


proc `new`*(this: var TopoDS_Compound; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Compound::operator new", header: "TopoDS_Compound.hxx".}
proc `delete`*(this: var TopoDS_Compound; theAddress: pointer) {.
    importcpp: "TopoDS_Compound::operator delete", header: "TopoDS_Compound.hxx".}
proc `new[]`*(this: var TopoDS_Compound; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Compound::operator new[]", header: "TopoDS_Compound.hxx".}
proc `delete[]`*(this: var TopoDS_Compound; theAddress: pointer) {.
    importcpp: "TopoDS_Compound::operator delete[]", header: "TopoDS_Compound.hxx".}
proc `new`*(this: var TopoDS_Compound; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Compound::operator new", header: "TopoDS_Compound.hxx".}
proc `delete`*(this: var TopoDS_Compound; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Compound::operator delete", header: "TopoDS_Compound.hxx".}
proc constructTopoDS_Compound*(): TopoDS_Compound {.constructor,
    importcpp: "TopoDS_Compound(@)", header: "TopoDS_Compound.hxx".}