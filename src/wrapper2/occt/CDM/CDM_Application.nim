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

discard "forward decl of CDM_Reference"
discard "forward decl of CDM_MetaData"
discard "forward decl of CDM_Document"
discard "forward decl of Resource_Manager"
discard "forward decl of Message_Messenger"
discard "forward decl of CDM_Application"
discard "forward decl of CDM_Application"
type
  HandleCDM_Application* = Handle[CDM_Application]
  CDM_Application* {.importcpp: "CDM_Application", header: "CDM_Application.hxx",
                    bycopy.} = object of StandardTransient ## ! The manager returned by  this virtual  method will be
                                                      ## ! used to search for Format.Retrieval  resource items.


proc resources*(this: var CDM_Application): Handle[ResourceManager] {.
    importcpp: "Resources", header: "CDM_Application.hxx".}
proc messageDriver*(this: var CDM_Application): Handle[MessageMessenger] {.
    importcpp: "MessageDriver", header: "CDM_Application.hxx".}
proc beginOfUpdate*(this: var CDM_Application; aDocument: Handle[CDM_Document]) {.
    importcpp: "BeginOfUpdate", header: "CDM_Application.hxx".}
proc endOfUpdate*(this: var CDM_Application; aDocument: Handle[CDM_Document];
                 theStatus: StandardBoolean;
                 errorString: TCollectionExtendedString) {.
    importcpp: "EndOfUpdate", header: "CDM_Application.hxx".}
proc write*(this: var CDM_Application; aString: StandardExtString) {.
    importcpp: "Write", header: "CDM_Application.hxx".}
proc name*(this: CDM_Application): TCollectionExtendedString {.noSideEffect,
    importcpp: "Name", header: "CDM_Application.hxx".}
proc version*(this: CDM_Application): TCollectionAsciiString {.noSideEffect,
    importcpp: "Version", header: "CDM_Application.hxx".}
proc metaDataLookUpTable*(this: var CDM_Application): var CDM_MetaDataLookUpTable {.
    importcpp: "MetaDataLookUpTable", header: "CDM_Application.hxx".}
proc dumpJson*(this: CDM_Application; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "CDM_Application.hxx".}
type
  CDM_ApplicationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "CDM_Application::get_type_name(@)",
                            header: "CDM_Application.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "CDM_Application::get_type_descriptor(@)",
    header: "CDM_Application.hxx".}
proc dynamicType*(this: CDM_Application): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "CDM_Application.hxx".}

