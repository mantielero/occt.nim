##  Created on: 1993-10-14
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
type
  BRepAlgoCut* {.importcpp: "BRepAlgo_Cut", header: "BRepAlgo_Cut.hxx", bycopy.} = object of BRepAlgoBooleanOperation


proc `new`*(this: var BRepAlgoCut; theSize: csize_t): pointer {.
    importcpp: "BRepAlgo_Cut::operator new", header: "BRepAlgo_Cut.hxx".}
proc `delete`*(this: var BRepAlgoCut; theAddress: pointer) {.
    importcpp: "BRepAlgo_Cut::operator delete", header: "BRepAlgo_Cut.hxx".}
proc `new[]`*(this: var BRepAlgoCut; theSize: csize_t): pointer {.
    importcpp: "BRepAlgo_Cut::operator new[]", header: "BRepAlgo_Cut.hxx".}
proc `delete[]`*(this: var BRepAlgoCut; theAddress: pointer) {.
    importcpp: "BRepAlgo_Cut::operator delete[]", header: "BRepAlgo_Cut.hxx".}
proc `new`*(this: var BRepAlgoCut; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepAlgo_Cut::operator new", header: "BRepAlgo_Cut.hxx".}
proc `delete`*(this: var BRepAlgoCut; a2: pointer; a3: pointer) {.
    importcpp: "BRepAlgo_Cut::operator delete", header: "BRepAlgo_Cut.hxx".}
proc constructBRepAlgoCut*(s1: TopoDS_Shape; s2: TopoDS_Shape): BRepAlgoCut {.
    constructor, importcpp: "BRepAlgo_Cut(@)", header: "BRepAlgo_Cut.hxx".}