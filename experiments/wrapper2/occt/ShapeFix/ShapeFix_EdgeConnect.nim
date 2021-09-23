##  Created on: 1999-05-11
##  Created by: Sergei ZERTCHANINOV
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
type
  ShapeFix_EdgeConnect* {.importcpp: "ShapeFix_EdgeConnect",
                         header: "ShapeFix_EdgeConnect.hxx", bycopy.} = object


proc constructShapeFix_EdgeConnect*(): ShapeFix_EdgeConnect {.constructor,
    importcpp: "ShapeFix_EdgeConnect(@)", header: "ShapeFix_EdgeConnect.hxx".}
proc Add*(this: var ShapeFix_EdgeConnect; aFirst: TopoDS_Edge; aSecond: TopoDS_Edge) {.
    importcpp: "Add", header: "ShapeFix_EdgeConnect.hxx".}
proc Add*(this: var ShapeFix_EdgeConnect; aShape: TopoDS_Shape) {.importcpp: "Add",
    header: "ShapeFix_EdgeConnect.hxx".}
proc Build*(this: var ShapeFix_EdgeConnect) {.importcpp: "Build",
    header: "ShapeFix_EdgeConnect.hxx".}
proc Clear*(this: var ShapeFix_EdgeConnect) {.importcpp: "Clear",
    header: "ShapeFix_EdgeConnect.hxx".}