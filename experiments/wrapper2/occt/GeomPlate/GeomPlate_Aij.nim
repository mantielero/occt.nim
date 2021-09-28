##  Created on: 1998-11-25
##  Created by: Julia GERASIMOVA
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

discard "forward decl of GeomPlate_BuildAveragePlane"
discard "forward decl of gp_Vec"
type
  GeomPlateAij* {.importcpp: "GeomPlate_Aij", header: "GeomPlate_Aij.hxx", bycopy.} = object


proc `new`*(this: var GeomPlateAij; theSize: csize_t): pointer {.
    importcpp: "GeomPlate_Aij::operator new", header: "GeomPlate_Aij.hxx".}
proc `delete`*(this: var GeomPlateAij; theAddress: pointer) {.
    importcpp: "GeomPlate_Aij::operator delete", header: "GeomPlate_Aij.hxx".}
proc `new[]`*(this: var GeomPlateAij; theSize: csize_t): pointer {.
    importcpp: "GeomPlate_Aij::operator new[]", header: "GeomPlate_Aij.hxx".}
proc `delete[]`*(this: var GeomPlateAij; theAddress: pointer) {.
    importcpp: "GeomPlate_Aij::operator delete[]", header: "GeomPlate_Aij.hxx".}
proc `new`*(this: var GeomPlateAij; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomPlate_Aij::operator new", header: "GeomPlate_Aij.hxx".}
proc `delete`*(this: var GeomPlateAij; a2: pointer; a3: pointer) {.
    importcpp: "GeomPlate_Aij::operator delete", header: "GeomPlate_Aij.hxx".}
proc constructGeomPlateAij*(): GeomPlateAij {.constructor,
    importcpp: "GeomPlate_Aij(@)", header: "GeomPlate_Aij.hxx".}
proc constructGeomPlateAij*(anInd1: int; anInd2: int; aVec: Vec): GeomPlateAij {.
    constructor, importcpp: "GeomPlate_Aij(@)", header: "GeomPlate_Aij.hxx".}