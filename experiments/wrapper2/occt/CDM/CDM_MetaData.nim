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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  CDM_DocumentPointer, ../TCollection/TCollection_ExtendedString,
  ../Standard/Standard_Integer, ../Standard/Standard_Transient, CDM_Document,
  CDM_Application, ../Standard/Standard_OStream, CDM_MetaDataLookUpTable

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of CDM_Reference"
discard "forward decl of CDM_Document"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDM_Application"
discard "forward decl of CDM_MetaData"
discard "forward decl of CDM_MetaData"
type
  Handle_CDM_MetaData* = handle[CDM_MetaData]
  CDM_MetaData* {.importcpp: "CDM_MetaData", header: "CDM_MetaData.hxx", bycopy.} = object of Standard_Transient


proc LookUp*(theLookUpTable: var CDM_MetaDataLookUpTable;
            aFolder: TCollection_ExtendedString;
            aName: TCollection_ExtendedString; aPath: TCollection_ExtendedString;
            aFileName: TCollection_ExtendedString; ReadOnly: Standard_Boolean): handle[
    CDM_MetaData] {.importcpp: "CDM_MetaData::LookUp(@)",
                   header: "CDM_MetaData.hxx".}
proc LookUp*(theLookUpTable: var CDM_MetaDataLookUpTable;
            aFolder: TCollection_ExtendedString;
            aName: TCollection_ExtendedString; aPath: TCollection_ExtendedString;
            aVersion: TCollection_ExtendedString;
            aFileName: TCollection_ExtendedString; ReadOnly: Standard_Boolean): handle[
    CDM_MetaData] {.importcpp: "CDM_MetaData::LookUp(@)",
                   header: "CDM_MetaData.hxx".}
proc IsRetrieved*(this: CDM_MetaData): Standard_Boolean {.noSideEffect,
    importcpp: "IsRetrieved", header: "CDM_MetaData.hxx".}
proc Document*(this: CDM_MetaData): handle[CDM_Document] {.noSideEffect,
    importcpp: "Document", header: "CDM_MetaData.hxx".}
proc Folder*(this: CDM_MetaData): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Folder", header: "CDM_MetaData.hxx".}
proc Name*(this: CDM_MetaData): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Name", header: "CDM_MetaData.hxx".}
proc Version*(this: CDM_MetaData): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Version", header: "CDM_MetaData.hxx".}
proc HasVersion*(this: CDM_MetaData): Standard_Boolean {.noSideEffect,
    importcpp: "HasVersion", header: "CDM_MetaData.hxx".}
proc FileName*(this: CDM_MetaData): TCollection_ExtendedString {.noSideEffect,
    importcpp: "FileName", header: "CDM_MetaData.hxx".}
proc Print*(this: CDM_MetaData; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "CDM_MetaData.hxx".}
proc `<<`*(this: var CDM_MetaData; anOStream: var Standard_OStream): var Standard_OStream {.
    importcpp: "(# << #)", header: "CDM_MetaData.hxx".}
proc Path*(this: CDM_MetaData): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Path", header: "CDM_MetaData.hxx".}
proc UnsetDocument*(this: var CDM_MetaData) {.importcpp: "UnsetDocument",
    header: "CDM_MetaData.hxx".}
proc IsReadOnly*(this: CDM_MetaData): Standard_Boolean {.noSideEffect,
    importcpp: "IsReadOnly", header: "CDM_MetaData.hxx".}
proc SetIsReadOnly*(this: var CDM_MetaData) {.importcpp: "SetIsReadOnly",
    header: "CDM_MetaData.hxx".}
proc UnsetIsReadOnly*(this: var CDM_MetaData) {.importcpp: "UnsetIsReadOnly",
    header: "CDM_MetaData.hxx".}
proc DumpJson*(this: CDM_MetaData; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "CDM_MetaData.hxx".}
type
  CDM_MetaDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "CDM_MetaData::get_type_name(@)",
                              header: "CDM_MetaData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "CDM_MetaData::get_type_descriptor(@)", header: "CDM_MetaData.hxx".}
proc DynamicType*(this: CDM_MetaData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "CDM_MetaData.hxx".}