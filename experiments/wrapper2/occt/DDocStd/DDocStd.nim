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

discard "forward decl of TDocStd_Application"
discard "forward decl of TDocStd_Document"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of DDocStd_DrawDocument"
type
  DDocStd* {.importcpp: "DDocStd", header: "DDocStd.hxx", bycopy.} = object ## ! Returns the global instance of application.


proc getApplication*(): Handle[TDocStdApplication] {.
    importcpp: "DDocStd::GetApplication(@)", header: "DDocStd.hxx".}
proc getDocument*(name: var StandardCString; doc: var Handle[TDocStdDocument];
                 complain: bool = true): bool {.importcpp: "DDocStd::GetDocument(@)",
    header: "DDocStd.hxx".}
proc find*(document: Handle[TDocStdDocument]; entry: StandardCString;
          label: var TDF_Label; complain: bool = true): bool {.
    importcpp: "DDocStd::Find(@)", header: "DDocStd.hxx".}
proc find*(document: Handle[TDocStdDocument]; entry: StandardCString;
          id: StandardGUID; a: var Handle[TDF_Attribute]; complain: bool = true): bool {.
    importcpp: "DDocStd::Find(@)", header: "DDocStd.hxx".}
proc find*[T](document: Handle[TDocStdDocument]; entry: StandardCString;
             id: StandardGUID; a: var Handle[T]; complain: bool = true): bool {.
    importcpp: "DDocStd::Find(@)", header: "DDocStd.hxx".}
proc returnLabel*(theCommands: var DrawInterpretor; L: TDF_Label): var DrawInterpretor {.
    importcpp: "DDocStd::ReturnLabel(@)", header: "DDocStd.hxx".}
proc allCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DDocStd::AllCommands(@)", header: "DDocStd.hxx".}
proc applicationCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DDocStd::ApplicationCommands(@)", header: "DDocStd.hxx".}
proc documentCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DDocStd::DocumentCommands(@)", header: "DDocStd.hxx".}
proc toolsCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DDocStd::ToolsCommands(@)", header: "DDocStd.hxx".}
proc mTMCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DDocStd::MTMCommands(@)", header: "DDocStd.hxx".}
proc shapeSchemaCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DDocStd::ShapeSchemaCommands(@)", header: "DDocStd.hxx".}

























