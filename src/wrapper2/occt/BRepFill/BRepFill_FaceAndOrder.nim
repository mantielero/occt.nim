##  Created on: 1998-09-03
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face, ../GeomAbs/GeomAbs_Shape

discard "forward decl of BRepFill_Filling"
discard "forward decl of TopoDS_Face"
type
  BRepFill_FaceAndOrder* {.importcpp: "BRepFill_FaceAndOrder",
                          header: "BRepFill_FaceAndOrder.hxx", bycopy.} = object


proc constructBRepFill_FaceAndOrder*(): BRepFill_FaceAndOrder {.constructor,
    importcpp: "BRepFill_FaceAndOrder(@)", header: "BRepFill_FaceAndOrder.hxx".}
proc constructBRepFill_FaceAndOrder*(aFace: TopoDS_Face; anOrder: GeomAbs_Shape): BRepFill_FaceAndOrder {.
    constructor, importcpp: "BRepFill_FaceAndOrder(@)",
    header: "BRepFill_FaceAndOrder.hxx".}