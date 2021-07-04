##  Created on: 1997-03-27
##  Created by: Denis PASCAL
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Draw/Draw_Interpretor,
  ../Standard/Standard_OStream

discard "forward decl of TDataXtd_Constraint"
discard "forward decl of DDataStd_DrawPresentation"
discard "forward decl of DDataStd_DrawDriver"
discard "forward decl of DDataStd_TreeBrowser"
type
  DDataStd* {.importcpp: "DDataStd", header: "DDataStd.hxx", bycopy.} = object ## ! Used to browse tree nodes.
                                                                       ## ! commands
                                                                       ## ! ========
                                                                       ## ! command to set and get modeling
                                                                       ## attributes


proc AllCommands*(I: var Draw_Interpretor) {.importcpp: "DDataStd::AllCommands(@)",
    header: "DDataStd.hxx".}
proc NamedShapeCommands*(I: var Draw_Interpretor) {.
    importcpp: "DDataStd::NamedShapeCommands(@)", header: "DDataStd.hxx".}
proc BasicCommands*(I: var Draw_Interpretor) {.
    importcpp: "DDataStd::BasicCommands(@)", header: "DDataStd.hxx".}
proc DatumCommands*(I: var Draw_Interpretor) {.
    importcpp: "DDataStd::DatumCommands(@)", header: "DDataStd.hxx".}
proc ConstraintCommands*(I: var Draw_Interpretor) {.
    importcpp: "DDataStd::ConstraintCommands(@)", header: "DDataStd.hxx".}
proc ObjectCommands*(I: var Draw_Interpretor) {.
    importcpp: "DDataStd::ObjectCommands(@)", header: "DDataStd.hxx".}
proc DrawDisplayCommands*(I: var Draw_Interpretor) {.
    importcpp: "DDataStd::DrawDisplayCommands(@)", header: "DDataStd.hxx".}
proc NameCommands*(I: var Draw_Interpretor) {.
    importcpp: "DDataStd::NameCommands(@)", header: "DDataStd.hxx".}
proc TreeCommands*(I: var Draw_Interpretor) {.
    importcpp: "DDataStd::TreeCommands(@)", header: "DDataStd.hxx".}
proc DumpConstraint*(C: handle[TDataXtd_Constraint]; S: var Standard_OStream) {.
    importcpp: "DDataStd::DumpConstraint(@)", header: "DDataStd.hxx".}