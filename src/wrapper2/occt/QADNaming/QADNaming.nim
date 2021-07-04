##  Created on: 1997-01-08
##  Created by: VAUTHIER Jean-Claude
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
  ../Standard/Standard_Handle, ../Standard/Standard_CString,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Address,
  ../Draw/Draw_Interpretor

discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Data"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TDF_Label"
type
  QADNaming* {.importcpp: "QADNaming", header: "QADNaming.hxx", bycopy.} = object


proc CurrentShape*(ShapeEntry: Standard_CString; Data: handle[TDF_Data]): TopoDS_Shape {.
    importcpp: "QADNaming::CurrentShape(@)", header: "QADNaming.hxx".}
proc GetShape*(ShapeEntry: Standard_CString; Data: handle[TDF_Data];
              Shapes: var TopTools_ListOfShape) {.
    importcpp: "QADNaming::GetShape(@)", header: "QADNaming.hxx".}
proc GetEntry*(Shape: TopoDS_Shape; Data: handle[TDF_Data];
              theStatus: var Standard_Integer): TCollection_AsciiString {.
    importcpp: "QADNaming::GetEntry(@)", header: "QADNaming.hxx".}
proc Entry*(theArguments: Standard_Address; theLabel: var TDF_Label): Standard_Boolean {.
    importcpp: "QADNaming::Entry(@)", header: "QADNaming.hxx".}
proc AllCommands*(DI: var Draw_Interpretor) {.
    importcpp: "QADNaming::AllCommands(@)", header: "QADNaming.hxx".}
proc BasicCommands*(DI: var Draw_Interpretor) {.
    importcpp: "QADNaming::BasicCommands(@)", header: "QADNaming.hxx".}
proc BuilderCommands*(DI: var Draw_Interpretor) {.
    importcpp: "QADNaming::BuilderCommands(@)", header: "QADNaming.hxx".}
proc IteratorsCommands*(DI: var Draw_Interpretor) {.
    importcpp: "QADNaming::IteratorsCommands(@)", header: "QADNaming.hxx".}
proc ToolsCommands*(DI: var Draw_Interpretor) {.
    importcpp: "QADNaming::ToolsCommands(@)", header: "QADNaming.hxx".}
proc SelectionCommands*(DI: var Draw_Interpretor) {.
    importcpp: "QADNaming::SelectionCommands(@)", header: "QADNaming.hxx".}