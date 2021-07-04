##  Created on: 1999-06-30
##  Created by: Denis PASCAL
##  Copyright (c) 1999 Matra Datavision
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
  ../CDF/CDF_Application, ../Message/Message_Messenger,
  ../Standard/Standard_CString, ../Standard/Standard_Integer,
  ../Standard/Standard_IStream, ../TColStd/TColStd_SequenceOfAsciiString,
  ../PCDM/PCDM_ReaderStatus, ../PCDM/PCDM_StoreStatus

discard "forward decl of Resource_Manager"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TDocStd_Document"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDocStd_Application"
discard "forward decl of TDocStd_Application"
type
  Handle_TDocStd_Application* = handle[TDocStd_Application]

## ! The abstract root class for all application classes.
## ! They are in charge of:
## ! -   Creating documents
## ! -   Storing documents and retrieving them
## ! -   Initializing document views.
## ! To create a useful OCAF-based application, you
## ! derive a class from Application and implement
## ! the methods below. You will have to redefine the
## ! deferred (virtual) methods Formats,
## ! InitDocument, and Resources, and override others.
## ! The application is a container for a document,
## ! which in its turn is the container of the data
## ! framework made up of labels and attributes.
## ! Besides furnishing a container for documents,
## ! TDocStd_Application provides the following
## ! services for them:
## ! -   Creation of new documents
## ! -   Activation of documents in sessions of an application
## ! -   Storage and retrieval of documents
## ! -   Initialization of document views.
## ! Note:
## ! If a client needs detailed information concerning
## ! the events during the Open/Store operation, a MessageDriver
## ! based on Message_PrinterOStream may be used. In case of need client
## ! can implement his own version inheriting from Message_Printer class
## ! and add it to the Messanger.
## ! Also the trace level of messages can be tuned by setting trace level (SetTraceLevel (Gravity )) for the used Printer.
## ! By default, trace level is Message_Info, so that all messages are output.

type
  TDocStd_Application* {.importcpp: "TDocStd_Application",
                        header: "TDocStd_Application.hxx", bycopy.} = object of CDF_Application ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## the
                                                                                         ## new
                                                                                         ## instance
                                                                                         ## and
                                                                                         ## registers
                                                                                         ## it
                                                                                         ## in
                                                                                         ## CDM_Session


proc constructTDocStd_Application*(): TDocStd_Application {.constructor,
    importcpp: "TDocStd_Application(@)", header: "TDocStd_Application.hxx".}
proc IsDriverLoaded*(this: TDocStd_Application): Standard_Boolean {.noSideEffect,
    importcpp: "IsDriverLoaded", header: "TDocStd_Application.hxx".}
proc Resources*(this: var TDocStd_Application): handle[Resource_Manager] {.
    importcpp: "Resources", header: "TDocStd_Application.hxx".}
proc ResourcesName*(this: var TDocStd_Application): Standard_CString {.
    importcpp: "ResourcesName", header: "TDocStd_Application.hxx".}
proc DefineFormat*(this: var TDocStd_Application;
                  theFormat: TCollection_AsciiString;
                  theDescription: TCollection_AsciiString;
                  theExtension: TCollection_AsciiString;
                  theReader: handle[PCDM_RetrievalDriver];
                  theWriter: handle[PCDM_StorageDriver]) {.
    importcpp: "DefineFormat", header: "TDocStd_Application.hxx".}
proc ReadingFormats*(this: var TDocStd_Application;
                    theFormats: var TColStd_SequenceOfAsciiString) {.
    importcpp: "ReadingFormats", header: "TDocStd_Application.hxx".}
proc WritingFormats*(this: var TDocStd_Application;
                    theFormats: var TColStd_SequenceOfAsciiString) {.
    importcpp: "WritingFormats", header: "TDocStd_Application.hxx".}
proc NbDocuments*(this: TDocStd_Application): Standard_Integer {.noSideEffect,
    importcpp: "NbDocuments", header: "TDocStd_Application.hxx".}
proc GetDocument*(this: TDocStd_Application; index: Standard_Integer;
                 aDoc: var handle[TDocStd_Document]) {.noSideEffect,
    importcpp: "GetDocument", header: "TDocStd_Application.hxx".}
proc NewDocument*(this: var TDocStd_Application; format: TCollection_ExtendedString;
                 aDoc: var handle[TDocStd_Document]) {.importcpp: "NewDocument",
    header: "TDocStd_Application.hxx".}
proc InitDocument*(this: TDocStd_Application; aDoc: handle[TDocStd_Document]) {.
    noSideEffect, importcpp: "InitDocument", header: "TDocStd_Application.hxx".}
proc Close*(this: var TDocStd_Application; aDoc: handle[TDocStd_Document]) {.
    importcpp: "Close", header: "TDocStd_Application.hxx".}
proc IsInSession*(this: TDocStd_Application; path: TCollection_ExtendedString): Standard_Integer {.
    noSideEffect, importcpp: "IsInSession", header: "TDocStd_Application.hxx".}
proc Open*(this: var TDocStd_Application; path: TCollection_ExtendedString;
          aDoc: var handle[TDocStd_Document];
          theRange: Message_ProgressRange = Message_ProgressRange()): PCDM_ReaderStatus {.
    importcpp: "Open", header: "TDocStd_Application.hxx".}
proc Open*(this: var TDocStd_Application; theIStream: var Standard_IStream;
          theDoc: var handle[TDocStd_Document];
          theRange: Message_ProgressRange = Message_ProgressRange()): PCDM_ReaderStatus {.
    importcpp: "Open", header: "TDocStd_Application.hxx".}
proc SaveAs*(this: var TDocStd_Application; aDoc: handle[TDocStd_Document];
            path: TCollection_ExtendedString;
            theRange: Message_ProgressRange = Message_ProgressRange()): PCDM_StoreStatus {.
    importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc SaveAs*(this: var TDocStd_Application; theDoc: handle[TDocStd_Document];
            theOStream: var Standard_OStream;
            theRange: Message_ProgressRange = Message_ProgressRange()): PCDM_StoreStatus {.
    importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc Save*(this: var TDocStd_Application; aDoc: handle[TDocStd_Document];
          theRange: Message_ProgressRange = Message_ProgressRange()): PCDM_StoreStatus {.
    importcpp: "Save", header: "TDocStd_Application.hxx".}
proc SaveAs*(this: var TDocStd_Application; aDoc: handle[TDocStd_Document];
            path: TCollection_ExtendedString;
            theStatusMessage: var TCollection_ExtendedString;
            theRange: Message_ProgressRange = Message_ProgressRange()): PCDM_StoreStatus {.
    importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc SaveAs*(this: var TDocStd_Application; theDoc: handle[TDocStd_Document];
            theOStream: var Standard_OStream;
            theStatusMessage: var TCollection_ExtendedString;
            theRange: Message_ProgressRange = Message_ProgressRange()): PCDM_StoreStatus {.
    importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc Save*(this: var TDocStd_Application; aDoc: handle[TDocStd_Document];
          theStatusMessage: var TCollection_ExtendedString;
          theRange: Message_ProgressRange = Message_ProgressRange()): PCDM_StoreStatus {.
    importcpp: "Save", header: "TDocStd_Application.hxx".}
proc OnOpenTransaction*(this: var TDocStd_Application;
                       theDoc: handle[TDocStd_Document]) {.
    importcpp: "OnOpenTransaction", header: "TDocStd_Application.hxx".}
proc OnCommitTransaction*(this: var TDocStd_Application;
                         theDoc: handle[TDocStd_Document]) {.
    importcpp: "OnCommitTransaction", header: "TDocStd_Application.hxx".}
proc OnAbortTransaction*(this: var TDocStd_Application;
                        theDoc: handle[TDocStd_Document]) {.
    importcpp: "OnAbortTransaction", header: "TDocStd_Application.hxx".}
proc DumpJson*(this: TDocStd_Application; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDocStd_Application.hxx".}
type
  TDocStd_Applicationbase_type* = CDF_Application

proc get_type_name*(): cstring {.importcpp: "TDocStd_Application::get_type_name(@)",
                              header: "TDocStd_Application.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDocStd_Application::get_type_descriptor(@)",
    header: "TDocStd_Application.hxx".}
proc DynamicType*(this: TDocStd_Application): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_Application.hxx".}