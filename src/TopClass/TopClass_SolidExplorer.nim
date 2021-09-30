##  Created on: 1994-03-10
##  Created by: Laurent BUCHARD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"
discard "forward decl of TopoDS_Face"
type
  TopClassSolidExplorer* {.importcpp: "TopClass_SolidExplorer",
                          header: "TopClass_SolidExplorer.hxx", bycopy.} = object ## !
                                                                             ## Should
                                                                             ## return
                                                                             ## True  if the
                                                                             ## point  is
                                                                             ## outside a
                                                                             ## !
                                                                             ## bounding
                                                                             ## volume of the
                                                                             ## shape.


proc reject*(this: TopClassSolidExplorer; p: Pnt): bool {.noSideEffect,
    importcpp: "Reject", header: "TopClass_SolidExplorer.hxx".}
proc segment*(this: var TopClassSolidExplorer; p: Pnt; L: var Lin; par: var cfloat) {.
    importcpp: "Segment", header: "TopClass_SolidExplorer.hxx".}
proc otherSegment*(this: var TopClassSolidExplorer; p: Pnt; L: var Lin; par: var cfloat) {.
    importcpp: "OtherSegment", header: "TopClass_SolidExplorer.hxx".}
proc initShell*(this: var TopClassSolidExplorer) {.importcpp: "InitShell",
    header: "TopClass_SolidExplorer.hxx".}
proc moreShells*(this: TopClassSolidExplorer): bool {.noSideEffect,
    importcpp: "MoreShells", header: "TopClass_SolidExplorer.hxx".}
proc nextShell*(this: var TopClassSolidExplorer) {.importcpp: "NextShell",
    header: "TopClass_SolidExplorer.hxx".}
proc rejectShell*(this: TopClassSolidExplorer; L: Lin; par: cfloat): bool {.
    noSideEffect, importcpp: "RejectShell", header: "TopClass_SolidExplorer.hxx".}
proc initFace*(this: var TopClassSolidExplorer) {.importcpp: "InitFace",
    header: "TopClass_SolidExplorer.hxx".}
proc moreFaces*(this: TopClassSolidExplorer): bool {.noSideEffect,
    importcpp: "MoreFaces", header: "TopClass_SolidExplorer.hxx".}
proc nextFace*(this: var TopClassSolidExplorer) {.importcpp: "NextFace",
    header: "TopClass_SolidExplorer.hxx".}
proc currentFace*(this: TopClassSolidExplorer): TopoDS_Face {.noSideEffect,
    importcpp: "CurrentFace", header: "TopClass_SolidExplorer.hxx".}
proc rejectFace*(this: TopClassSolidExplorer; L: Lin; par: cfloat): bool {.noSideEffect,
    importcpp: "RejectFace", header: "TopClass_SolidExplorer.hxx".}

























