##  Created on: 1997-08-07
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_GUID"
discard "forward decl of CDM_Document"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of PCDM_Reader"
discard "forward decl of CDM_MetaData"
discard "forward decl of PCDM_RetrievalDriver"
discard "forward decl of PCDM_StorageDriver"
discard "forward decl of CDF_Directory"
discard "forward decl of CDF_Application"
discard "forward decl of CDF_Application"
type
  HandleC1C1* = Handle[CDF_Application]
  CDF_Application* {.importcpp: "CDF_Application", header: "CDF_Application.hxx",
                    bycopy.} = object of CDM_Application ## ! plugs an application.
                                                    ## !
                                                    ## ! Open is used
                                                    ## ! - for opening a Document that has been created in an application
                                                    ## ! - for opening a Document from the database
                                                    ## ! - for opening a Document from a file.
                                                    ## ! The Open methods always add the document in the session directory and
                                                    ## ! calls the virtual Activate method. The document is considered to be
                                                    ## ! opened until Close is used. To be storable, a document must be
                                                    ## ! opened by an application since the application resources are
                                                    ## ! needed to store it.
                                                    ## ! Informs the  application that aDocument has  been
                                                    ## ! activated. A document is activated when it is created or
                                                    ## ! retrieved.
                                                    ## ! aTypeOfActivation will be:
                                                    ## ! - CDF_TOA_New if the document is a new one
                                                    ## ! (even empty or retrieved from the database for
                                                    ## ! the first time).
                                                    ## ! - CDF_TOA_Unchanged if the document was already
                                                    ## ! retrieved but had no changes since the previous retrieval.
                                                    ## ! - CDF_TOA_Modified if the document was already
                                                    ## ! retrieved and modified since the previous retrieval.
                                                    ## ! You do not need to call <Activate>, but you should  redefine
                                                    ## ! this method to implement application specific behavior.
    myMetaDataDriver* {.importc: "myMetaDataDriver".}: Handle[CDF_MetaDataDriver]
    myDirectory* {.importc: "myDirectory".}: Handle[CDF_Directory]


proc load*(aGUID: StandardGUID): Handle[CDF_Application] {.
    importcpp: "CDF_Application::Load(@)", header: "CDF_Application.hxx".}
proc open*(this: var CDF_Application; aDocument: Handle[CDM_Document]) {.
    importcpp: "Open", header: "CDF_Application.hxx".}
proc canClose*(this: var CDF_Application; aDocument: Handle[CDM_Document]): CDM_CanCloseStatus {.
    importcpp: "CanClose", header: "CDF_Application.hxx".}
proc close*(this: var CDF_Application; aDocument: Handle[CDM_Document]) {.
    importcpp: "Close", header: "CDF_Application.hxx".}
proc retrieve*(this: var CDF_Application; aFolder: TCollectionExtendedString;
              aName: TCollectionExtendedString;
              useStorageConfiguration: bool = true;
              theRange: MessageProgressRange = messageProgressRange()): Handle[
    CDM_Document] {.importcpp: "Retrieve", header: "CDF_Application.hxx".}
proc retrieve*(this: var CDF_Application; aFolder: TCollectionExtendedString;
              aName: TCollectionExtendedString;
              aVersion: TCollectionExtendedString;
              useStorageConfiguration: bool = true;
              theRange: MessageProgressRange = messageProgressRange()): Handle[
    CDM_Document] {.importcpp: "Retrieve", header: "CDF_Application.hxx".}
proc canRetrieve*(this: var CDF_Application; aFolder: TCollectionExtendedString;
                 aName: TCollectionExtendedString): PCDM_ReaderStatus {.
    importcpp: "CanRetrieve", header: "CDF_Application.hxx".}
proc canRetrieve*(this: var CDF_Application; aFolder: TCollectionExtendedString;
                 aName: TCollectionExtendedString;
                 aVersion: TCollectionExtendedString): PCDM_ReaderStatus {.
    importcpp: "CanRetrieve", header: "CDF_Application.hxx".}
proc getRetrieveStatus*(this: CDF_Application): PCDM_ReaderStatus {.noSideEffect,
    importcpp: "GetRetrieveStatus", header: "CDF_Application.hxx".}
proc read*(this: var CDF_Application; theIStream: var StandardIStream;
          theRange: MessageProgressRange = messageProgressRange()): Handle[
    CDM_Document] {.importcpp: "Read", header: "CDF_Application.hxx".}
proc readerFromFormat*(this: var CDF_Application; aFormat: TCollectionExtendedString): Handle[
    PCDM_Reader] {.importcpp: "ReaderFromFormat", header: "CDF_Application.hxx".}
proc writerFromFormat*(this: var CDF_Application; aFormat: TCollectionExtendedString): Handle[
    PCDM_StorageDriver] {.importcpp: "WriterFromFormat",
                         header: "CDF_Application.hxx".}
proc format*(this: var CDF_Application; aFileName: TCollectionExtendedString;
            theFormat: var TCollectionExtendedString): bool {.importcpp: "Format",
    header: "CDF_Application.hxx".}
proc defaultFolder*(this: var CDF_Application): StandardExtString {.
    importcpp: "DefaultFolder", header: "CDF_Application.hxx".}
proc setDefaultFolder*(this: var CDF_Application; aFolder: StandardExtString): bool {.
    importcpp: "SetDefaultFolder", header: "CDF_Application.hxx".}
proc metaDataDriver*(this: CDF_Application): Handle[CDF_MetaDataDriver] {.
    noSideEffect, importcpp: "MetaDataDriver", header: "CDF_Application.hxx".}
type
  CDF_ApplicationbaseType* = CDM_Application

proc getTypeName*(): cstring {.importcpp: "CDF_Application::get_type_name(@)",
                            header: "CDF_Application.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "CDF_Application::get_type_descriptor(@)",
    header: "CDF_Application.hxx".}
proc dynamicType*(this: CDF_Application): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "CDF_Application.hxx".}

























