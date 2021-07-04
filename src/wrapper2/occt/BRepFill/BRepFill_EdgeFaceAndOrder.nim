##  Created on: 1998-10-02
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Face,
  ../GeomAbs/GeomAbs_Shape

discard "forward decl of BRepFill_Filling"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  BRepFill_EdgeFaceAndOrder* {.importcpp: "BRepFill_EdgeFaceAndOrder",
                              header: "BRepFill_EdgeFaceAndOrder.hxx", bycopy.} = object


proc constructBRepFill_EdgeFaceAndOrder*(): BRepFill_EdgeFaceAndOrder {.
    constructor, importcpp: "BRepFill_EdgeFaceAndOrder(@)",
    header: "BRepFill_EdgeFaceAndOrder.hxx".}
proc constructBRepFill_EdgeFaceAndOrder*(anEdge: TopoDS_Edge; aFace: TopoDS_Face;
                                        anOrder: GeomAbs_Shape): BRepFill_EdgeFaceAndOrder {.
    constructor, importcpp: "BRepFill_EdgeFaceAndOrder(@)",
    header: "BRepFill_EdgeFaceAndOrder.hxx".}