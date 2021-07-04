##  Copyright (c) 2020 OPEN CASCADE SAS
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
  ../Prs3d/Prs3d_Presentation, ../Standard/Standard_Transient,
  ../Standard/Standard_Type

discard "forward decl of TopoDS_Shape"
discard "forward decl of Prs3d_Drawer"
discard "forward decl of Graphic3d_Camera"
type
  StdPrs_HLRShapeI* {.importcpp: "StdPrs_HLRShapeI",
                     header: "StdPrs_HLRShapeI.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Compute
                                                                                      ## presentation
                                                                                      ## for
                                                                                      ## specified
                                                                                      ## shape.

  StdPrs_HLRShapeIbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StdPrs_HLRShapeI::get_type_name(@)",
                              header: "StdPrs_HLRShapeI.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdPrs_HLRShapeI::get_type_descriptor(@)",
    header: "StdPrs_HLRShapeI.hxx".}
proc DynamicType*(this: StdPrs_HLRShapeI): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StdPrs_HLRShapeI.hxx".}
proc ComputeHLR*(this: StdPrs_HLRShapeI; thePrs: handle[Prs3d_Presentation];
                theShape: TopoDS_Shape; theDrawer: handle[Prs3d_Drawer];
                theProjector: handle[Graphic3d_Camera]) {.noSideEffect,
    importcpp: "ComputeHLR", header: "StdPrs_HLRShapeI.hxx".}