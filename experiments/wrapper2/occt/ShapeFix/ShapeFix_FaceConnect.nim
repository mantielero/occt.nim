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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shell"
type
  ShapeFixFaceConnect* {.importcpp: "ShapeFix_FaceConnect",
                        header: "ShapeFix_FaceConnect.hxx", bycopy.} = object


proc constructShapeFixFaceConnect*(): ShapeFixFaceConnect {.constructor,
    importcpp: "ShapeFix_FaceConnect(@)", header: "ShapeFix_FaceConnect.hxx".}
proc add*(this: var ShapeFixFaceConnect; aFirst: TopoDS_Face; aSecond: TopoDS_Face): bool {.
    importcpp: "Add", header: "ShapeFix_FaceConnect.hxx".}
proc build*(this: var ShapeFixFaceConnect; shell: TopoDS_Shell; sewtoler: float;
           fixtoler: float): TopoDS_Shell {.importcpp: "Build",
    header: "ShapeFix_FaceConnect.hxx".}
proc clear*(this: var ShapeFixFaceConnect) {.importcpp: "Clear",
    header: "ShapeFix_FaceConnect.hxx".}
