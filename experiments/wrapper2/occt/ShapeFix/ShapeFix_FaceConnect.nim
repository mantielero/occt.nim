##  Created on: 1999-06-18
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shell"
type
  ShapeFix_FaceConnect* {.importcpp: "ShapeFix_FaceConnect",
                         header: "ShapeFix_FaceConnect.hxx", bycopy.} = object


proc constructShapeFix_FaceConnect*(): ShapeFix_FaceConnect {.constructor,
    importcpp: "ShapeFix_FaceConnect(@)", header: "ShapeFix_FaceConnect.hxx".}
proc Add*(this: var ShapeFix_FaceConnect; aFirst: TopoDS_Face; aSecond: TopoDS_Face): Standard_Boolean {.
    importcpp: "Add", header: "ShapeFix_FaceConnect.hxx".}
proc Build*(this: var ShapeFix_FaceConnect; shell: TopoDS_Shell;
           sewtoler: Standard_Real; fixtoler: Standard_Real): TopoDS_Shell {.
    importcpp: "Build", header: "ShapeFix_FaceConnect.hxx".}
proc Clear*(this: var ShapeFix_FaceConnect) {.importcpp: "Clear",
    header: "ShapeFix_FaceConnect.hxx".}