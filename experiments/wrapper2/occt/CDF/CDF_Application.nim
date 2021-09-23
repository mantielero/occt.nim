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

import
  ../TCollection/TCollection_ExtendedString, ../PCDM/PCDM_ReaderStatus,
  CDF_TypeOfActivation, CDF_MetaDataDriver, ../CDM/CDM_Application,
  ../CDM/CDM_CanCloseStatus, ../TColStd/TColStd_SequenceOfExtendedString,
  ../Standard/Standard_IStream, ../NCollection/NCollection_IndexedDataMap

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
  Handle_CDF_Application* = handle[CDF_Application]
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
    myMetaDataDriver* {.importc: "myMetaDataDriver".}: handle[CDF_MetaDataDriver]
    myDirectory* {.importc: "myDirectory".}: handle[CDF_Directory]


proc Load*(aGUID: Standard_GUID): handle[CDF_Application] {.
    importcpp: "CDF_Application::Load(@)", header: "CDF_Application.hxx".}
proc Open*(this: var CDF_Application; aDocument: handle[CDM_Document]) {.
    importcpp: "Open", header: "CDF_Application.hxx".}
proc CanClose*(this: var CDF_Application; aDocument: handle[CDM_Document]): CDM_CanCloseStatus {.
    importcpp: "CanClose", header: "CDF_Application.hxx".}
proc Close*(this: var CDF_Application; aDocument: handle[CDM_Document]) {.
    importcpp: "Close", header: "CDF_Application.hxx".}
proc Retrieve*(this: var CDF_Application; aFolder: TCollection_ExtendedString;
              aName: TCollection_ExtendedString;
              UseStorageConfiguration: Standard_Boolean = Standard_True;
              theRange: Message_ProgressRange = Message_ProgressRange()): handle[
    CDM_Document] {.importcpp: "Retrieve", header: "CDF_Application.hxx".}
proc Retrieve*(this: var CDF_Application; aFolder: TCollection_ExtendedString;
              aName: TCollection_ExtendedString;
              aVersion: TCollection_ExtendedString;
              UseStorageConfiguration: Standard_Boolean = Standard_True;
              theRange: Message_ProgressRange = Message_ProgressRange()): handle[
    CDM_Document] {.importcpp: "Retrieve", header: "CDF_Application.hxx".}
proc CanRetrieve*(this: var CDF_Application; aFolder: TCollection_ExtendedString;
                 aName: TCollection_ExtendedString): PCDM_ReaderStatus {.
    importcpp: "CanRetrieve", header: "CDF_Application.hxx".}
proc CanRetrieve*(this: var CDF_Application; aFolder: TCollection_ExtendedString;
                 aName: TCollection_ExtendedString;
                 aVersion: TCollection_ExtendedString): PCDM_ReaderStatus {.
    importcpp: "CanRetrieve", header: "CDF_Application.hxx".}
proc GetRetrieveStatus*(this: CDF_Application): PCDM_ReaderStatus {.noSideEffect,
    importcpp: "GetRetrieveStatus", header: "CDF_Application.hxx".}
proc Read*(this: var CDF_Application; theIStream: var Standard_IStream;
          theRange: Message_ProgressRange = Message_ProgressRange()): handle[
    CDM_Document] {.importcpp: "Read", header: "CDF_Application.hxx".}
proc ReaderFromFormat*(this: var CDF_Application;
                      aFormat: TCollection_ExtendedString): handle[PCDM_Reader] {.
    importcpp: "ReaderFromFormat", header: "CDF_Application.hxx".}
proc WriterFromFormat*(this: var CDF_Application;
                      aFormat: TCollection_ExtendedString): handle[
    PCDM_StorageDriver] {.importcpp: "WriterFromFormat",
                         header: "CDF_Application.hxx".}
proc Format*(this: var CDF_Application; aFileName: TCollection_ExtendedString;
            theFormat: var TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "Format", header: "CDF_Application.hxx".}
proc DefaultFolder*(this: var CDF_Application): Standard_ExtString {.
    importcpp: "DefaultFolder", header: "CDF_Application.hxx".}
proc SetDefaultFolder*(this: var CDF_Application; aFolder: Standard_ExtString): Standard_Boolean {.
    importcpp: "SetDefaultFolder", header: "CDF_Application.hxx".}
proc MetaDataDriver*(this: CDF_Application): handle[CDF_MetaDataDriver] {.
    noSideEffect, importcpp: "MetaDataDriver", header: "CDF_Application.hxx".}
type
  CDF_Applicationbase_type* = CDM_Application

proc get_type_name*(): cstring {.importcpp: "CDF_Application::get_type_name(@)",
                              header: "CDF_Application.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "CDF_Application::get_type_descriptor(@)",
    header: "CDF_Application.hxx".}
proc DynamicType*(this: CDF_Application): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "CDF_Application.hxx".}