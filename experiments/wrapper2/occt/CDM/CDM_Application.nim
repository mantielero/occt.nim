##  Created on: 1997-10-22
##  Created by: Jean-Louis Frenkel
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_ExtString, ../TCollection/TCollection_AsciiString,
  ../TCollection/TCollection_ExtendedString, CDM_MetaDataLookUpTable,
  ../Message/Message_ProgressRange

discard "forward decl of CDM_Reference"
discard "forward decl of CDM_MetaData"
discard "forward decl of CDM_Document"
discard "forward decl of Resource_Manager"
discard "forward decl of Message_Messenger"
discard "forward decl of CDM_Application"
discard "forward decl of CDM_Application"
type
  Handle_CDM_Application* = handle[CDM_Application]
  CDM_Application* {.importcpp: "CDM_Application", header: "CDM_Application.hxx",
                    bycopy.} = object of Standard_Transient ## ! The manager returned by  this virtual  method will be
                                                       ## ! used to search for Format.Retrieval  resource items.


proc Resources*(this: var CDM_Application): handle[Resource_Manager] {.
    importcpp: "Resources", header: "CDM_Application.hxx".}
proc MessageDriver*(this: var CDM_Application): handle[Message_Messenger] {.
    importcpp: "MessageDriver", header: "CDM_Application.hxx".}
proc BeginOfUpdate*(this: var CDM_Application; aDocument: handle[CDM_Document]) {.
    importcpp: "BeginOfUpdate", header: "CDM_Application.hxx".}
proc EndOfUpdate*(this: var CDM_Application; aDocument: handle[CDM_Document];
                 theStatus: Standard_Boolean;
                 ErrorString: TCollection_ExtendedString) {.
    importcpp: "EndOfUpdate", header: "CDM_Application.hxx".}
proc Write*(this: var CDM_Application; aString: Standard_ExtString) {.
    importcpp: "Write", header: "CDM_Application.hxx".}
proc Name*(this: CDM_Application): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Name", header: "CDM_Application.hxx".}
proc Version*(this: CDM_Application): TCollection_AsciiString {.noSideEffect,
    importcpp: "Version", header: "CDM_Application.hxx".}
proc MetaDataLookUpTable*(this: var CDM_Application): var CDM_MetaDataLookUpTable {.
    importcpp: "MetaDataLookUpTable", header: "CDM_Application.hxx".}
proc DumpJson*(this: CDM_Application; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "CDM_Application.hxx".}
type
  CDM_Applicationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "CDM_Application::get_type_name(@)",
                              header: "CDM_Application.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "CDM_Application::get_type_descriptor(@)",
    header: "CDM_Application.hxx".}
proc DynamicType*(this: CDM_Application): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "CDM_Application.hxx".}