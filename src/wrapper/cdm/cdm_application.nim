import ../standard/standard_types
import ../tcollection/tcollection_types
import ../message/message_types
import cdm_types
import ../resource/resource_types



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



proc resources*(this: var CDM_Application): Handle[ResourceManager] {.cdecl,
    importcpp: "Resources", header: "CDM_Application.hxx".}
proc messageDriver*(this: var CDM_Application): Handle[MessageMessenger] {.cdecl,
    importcpp: "MessageDriver", header: "CDM_Application.hxx".}
proc beginOfUpdate*(this: var CDM_Application; aDocument: Handle[CDM_Document]) {.
    cdecl, importcpp: "BeginOfUpdate", header: "CDM_Application.hxx".}
proc endOfUpdate*(this: var CDM_Application; aDocument: Handle[CDM_Document];
                 theStatus: bool; errorString: TCollectionExtendedString) {.cdecl,
    importcpp: "EndOfUpdate", header: "CDM_Application.hxx".}
proc write*(this: var CDM_Application; aString: StandardExtString) {.cdecl,
    importcpp: "Write", header: "CDM_Application.hxx".}
proc name*(this: CDM_Application): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Name", header: "CDM_Application.hxx".}
proc version*(this: CDM_Application): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Version", header: "CDM_Application.hxx".}
proc metaDataLookUpTable*(this: var CDM_Application): var CDM_MetaDataLookUpTable {.
    cdecl, importcpp: "MetaDataLookUpTable", header: "CDM_Application.hxx".}
proc dumpJson*(this: CDM_Application; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "CDM_Application.hxx".}

