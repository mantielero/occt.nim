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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"
discard "forward decl of TopoDS_Face"
type
  TopClass_SolidExplorer* {.importcpp: "TopClass_SolidExplorer",
                           header: "TopClass_SolidExplorer.hxx", bycopy.} = object ## !
                                                                              ## Should
                                                                              ## return
                                                                              ## True  if
                                                                              ## the
                                                                              ## point  is
                                                                              ## outside a
                                                                              ## !
                                                                              ## bounding
                                                                              ## volume of
                                                                              ## the
                                                                              ## shape.


proc Reject*(this: TopClass_SolidExplorer; P: gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "Reject", header: "TopClass_SolidExplorer.hxx".}
proc Segment*(this: var TopClass_SolidExplorer; P: gp_Pnt; L: var gp_Lin;
             Par: var Standard_Real) {.importcpp: "Segment",
                                    header: "TopClass_SolidExplorer.hxx".}
proc OtherSegment*(this: var TopClass_SolidExplorer; P: gp_Pnt; L: var gp_Lin;
                  Par: var Standard_Real) {.importcpp: "OtherSegment",
    header: "TopClass_SolidExplorer.hxx".}
proc InitShell*(this: var TopClass_SolidExplorer) {.importcpp: "InitShell",
    header: "TopClass_SolidExplorer.hxx".}
proc MoreShells*(this: TopClass_SolidExplorer): Standard_Boolean {.noSideEffect,
    importcpp: "MoreShells", header: "TopClass_SolidExplorer.hxx".}
proc NextShell*(this: var TopClass_SolidExplorer) {.importcpp: "NextShell",
    header: "TopClass_SolidExplorer.hxx".}
proc RejectShell*(this: TopClass_SolidExplorer; L: gp_Lin; Par: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "RejectShell", header: "TopClass_SolidExplorer.hxx".}
proc InitFace*(this: var TopClass_SolidExplorer) {.importcpp: "InitFace",
    header: "TopClass_SolidExplorer.hxx".}
proc MoreFaces*(this: TopClass_SolidExplorer): Standard_Boolean {.noSideEffect,
    importcpp: "MoreFaces", header: "TopClass_SolidExplorer.hxx".}
proc NextFace*(this: var TopClass_SolidExplorer) {.importcpp: "NextFace",
    header: "TopClass_SolidExplorer.hxx".}
proc CurrentFace*(this: TopClass_SolidExplorer): TopoDS_Face {.noSideEffect,
    importcpp: "CurrentFace", header: "TopClass_SolidExplorer.hxx".}
proc RejectFace*(this: TopClass_SolidExplorer; L: gp_Lin; Par: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "RejectFace", header: "TopClass_SolidExplorer.hxx".}