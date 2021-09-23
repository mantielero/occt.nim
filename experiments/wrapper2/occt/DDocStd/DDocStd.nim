##  Created on: 2000-03-01
##  Created by: Denis PASCAL
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_CString, ../Draw/Draw_Interpretor

discard "forward decl of TDocStd_Application"
discard "forward decl of TDocStd_Document"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of DDocStd_DrawDocument"
type
  DDocStd* {.importcpp: "DDocStd", header: "DDocStd.hxx", bycopy.} = object ## ! Returns the global instance of application.


proc GetApplication*(): handle[TDocStd_Application] {.
    importcpp: "DDocStd::GetApplication(@)", header: "DDocStd.hxx".}
proc GetDocument*(Name: var Standard_CString; Doc: var handle[TDocStd_Document];
                 Complain: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "DDocStd::GetDocument(@)", header: "DDocStd.hxx".}
proc Find*(Document: handle[TDocStd_Document]; Entry: Standard_CString;
          Label: var TDF_Label; Complain: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "DDocStd::Find(@)", header: "DDocStd.hxx".}
proc Find*(Document: handle[TDocStd_Document]; Entry: Standard_CString;
          ID: Standard_GUID; A: var handle[TDF_Attribute];
          Complain: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "DDocStd::Find(@)", header: "DDocStd.hxx".}
proc Find*[T](Document: handle[TDocStd_Document]; Entry: Standard_CString;
             ID: Standard_GUID; A: var handle[T];
             Complain: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "DDocStd::Find(@)", header: "DDocStd.hxx".}
proc ReturnLabel*(theCommands: var Draw_Interpretor; L: TDF_Label): var Draw_Interpretor {.
    importcpp: "DDocStd::ReturnLabel(@)", header: "DDocStd.hxx".}
proc AllCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DDocStd::AllCommands(@)", header: "DDocStd.hxx".}
proc ApplicationCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DDocStd::ApplicationCommands(@)", header: "DDocStd.hxx".}
proc DocumentCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DDocStd::DocumentCommands(@)", header: "DDocStd.hxx".}
proc ToolsCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DDocStd::ToolsCommands(@)", header: "DDocStd.hxx".}
proc MTMCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DDocStd::MTMCommands(@)", header: "DDocStd.hxx".}
proc ShapeSchemaCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DDocStd::ShapeSchemaCommands(@)", header: "DDocStd.hxx".}