import ../standard/standard_types
import ../tcollection/tcollection_types
import cdm_types



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



proc lookUp*(theLookUpTable: var CDM_MetaDataLookUpTable;
            aFolder: TCollectionExtendedString; aName: TCollectionExtendedString;
            aPath: TCollectionExtendedString;
            aFileName: TCollectionExtendedString; readOnly: bool): Handle[
    CDM_MetaData] {.cdecl, importcpp: "CDM_MetaData::LookUp(@)",
                   header: "CDM_MetaData.hxx".}
proc lookUp*(theLookUpTable: var CDM_MetaDataLookUpTable;
            aFolder: TCollectionExtendedString; aName: TCollectionExtendedString;
            aPath: TCollectionExtendedString; aVersion: TCollectionExtendedString;
            aFileName: TCollectionExtendedString; readOnly: bool): Handle[
    CDM_MetaData] {.cdecl, importcpp: "CDM_MetaData::LookUp(@)",
                   header: "CDM_MetaData.hxx".}
proc isRetrieved*(this: CDM_MetaData): bool {.noSideEffect, cdecl,
    importcpp: "IsRetrieved", header: "CDM_MetaData.hxx".}
proc document*(this: CDM_MetaData): Handle[CDM_Document] {.noSideEffect, cdecl,
    importcpp: "Document", header: "CDM_MetaData.hxx".}
proc folder*(this: CDM_MetaData): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Folder", header: "CDM_MetaData.hxx".}
proc name*(this: CDM_MetaData): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Name", header: "CDM_MetaData.hxx".}
proc version*(this: CDM_MetaData): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Version", header: "CDM_MetaData.hxx".}
proc hasVersion*(this: CDM_MetaData): bool {.noSideEffect, cdecl,
    importcpp: "HasVersion", header: "CDM_MetaData.hxx".}
proc fileName*(this: CDM_MetaData): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "FileName", header: "CDM_MetaData.hxx".}
proc print*(this: CDM_MetaData; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Print", header: "CDM_MetaData.hxx".}
proc `<<`*(this: var CDM_MetaData; anOStream: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "(# << #)", header: "CDM_MetaData.hxx".}
proc path*(this: CDM_MetaData): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Path", header: "CDM_MetaData.hxx".}
proc unsetDocument*(this: var CDM_MetaData) {.cdecl, importcpp: "UnsetDocument",
    header: "CDM_MetaData.hxx".}
proc isReadOnly*(this: CDM_MetaData): bool {.noSideEffect, cdecl,
    importcpp: "IsReadOnly", header: "CDM_MetaData.hxx".}
proc setIsReadOnly*(this: var CDM_MetaData) {.cdecl, importcpp: "SetIsReadOnly",
    header: "CDM_MetaData.hxx".}
proc unsetIsReadOnly*(this: var CDM_MetaData) {.cdecl, importcpp: "UnsetIsReadOnly",
    header: "CDM_MetaData.hxx".}
proc dumpJson*(this: CDM_MetaData; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "CDM_MetaData.hxx".}

