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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer, ../gp/gp_Vec

discard "forward decl of GeomPlate_BuildAveragePlane"
discard "forward decl of gp_Vec"
type
  GeomPlate_Aij* {.importcpp: "GeomPlate_Aij", header: "GeomPlate_Aij.hxx", bycopy.} = object


proc constructGeomPlate_Aij*(): GeomPlate_Aij {.constructor,
    importcpp: "GeomPlate_Aij(@)", header: "GeomPlate_Aij.hxx".}
proc constructGeomPlate_Aij*(anInd1: Standard_Integer; anInd2: Standard_Integer;
                            aVec: gp_Vec): GeomPlate_Aij {.constructor,
    importcpp: "GeomPlate_Aij(@)", header: "GeomPlate_Aij.hxx".}