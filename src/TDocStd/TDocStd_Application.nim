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

discard "forward decl of Resource_Manager"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TDocStd_Document"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDocStd_Application"
discard "forward decl of TDocStd_Application"
type
  HandleC1C1* = Handle[TDocStdApplication]

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
  TDocStdApplication* {.importcpp: "TDocStd_Application",
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


proc constructTDocStdApplication*(): TDocStdApplication {.constructor,
    importcpp: "TDocStd_Application(@)", header: "TDocStd_Application.hxx".}
proc isDriverLoaded*(this: TDocStdApplication): bool {.noSideEffect,
    importcpp: "IsDriverLoaded", header: "TDocStd_Application.hxx".}
proc resources*(this: var TDocStdApplication): Handle[ResourceManager] {.
    importcpp: "Resources", header: "TDocStd_Application.hxx".}
proc resourcesName*(this: var TDocStdApplication): StandardCString {.
    importcpp: "ResourcesName", header: "TDocStd_Application.hxx".}
proc defineFormat*(this: var TDocStdApplication; theFormat: TCollectionAsciiString;
                  theDescription: TCollectionAsciiString;
                  theExtension: TCollectionAsciiString;
                  theReader: Handle[PCDM_RetrievalDriver];
                  theWriter: Handle[PCDM_StorageDriver]) {.
    importcpp: "DefineFormat", header: "TDocStd_Application.hxx".}
proc readingFormats*(this: var TDocStdApplication;
                    theFormats: var TColStdSequenceOfAsciiString) {.
    importcpp: "ReadingFormats", header: "TDocStd_Application.hxx".}
proc writingFormats*(this: var TDocStdApplication;
                    theFormats: var TColStdSequenceOfAsciiString) {.
    importcpp: "WritingFormats", header: "TDocStd_Application.hxx".}
proc nbDocuments*(this: TDocStdApplication): cint {.noSideEffect,
    importcpp: "NbDocuments", header: "TDocStd_Application.hxx".}
proc getDocument*(this: TDocStdApplication; index: cint;
                 aDoc: var Handle[TDocStdDocument]) {.noSideEffect,
    importcpp: "GetDocument", header: "TDocStd_Application.hxx".}
proc newDocument*(this: var TDocStdApplication; format: TCollectionExtendedString;
                 aDoc: var Handle[TDocStdDocument]) {.importcpp: "NewDocument",
    header: "TDocStd_Application.hxx".}
proc initDocument*(this: TDocStdApplication; aDoc: Handle[TDocStdDocument]) {.
    noSideEffect, importcpp: "InitDocument", header: "TDocStd_Application.hxx".}
proc close*(this: var TDocStdApplication; aDoc: Handle[TDocStdDocument]) {.
    importcpp: "Close", header: "TDocStd_Application.hxx".}
proc isInSession*(this: TDocStdApplication; path: TCollectionExtendedString): cint {.
    noSideEffect, importcpp: "IsInSession", header: "TDocStd_Application.hxx".}
proc open*(this: var TDocStdApplication; path: TCollectionExtendedString;
          aDoc: var Handle[TDocStdDocument];
          theRange: MessageProgressRange = messageProgressRange()): PCDM_ReaderStatus {.
    importcpp: "Open", header: "TDocStd_Application.hxx".}
proc open*(this: var TDocStdApplication; theIStream: var StandardIStream;
          theDoc: var Handle[TDocStdDocument];
          theRange: MessageProgressRange = messageProgressRange()): PCDM_ReaderStatus {.
    importcpp: "Open", header: "TDocStd_Application.hxx".}
proc saveAs*(this: var TDocStdApplication; aDoc: Handle[TDocStdDocument];
            path: TCollectionExtendedString;
            theRange: MessageProgressRange = messageProgressRange()): PCDM_StoreStatus {.
    importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc saveAs*(this: var TDocStdApplication; theDoc: Handle[TDocStdDocument];
            theOStream: var StandardOStream;
            theRange: MessageProgressRange = messageProgressRange()): PCDM_StoreStatus {.
    importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc save*(this: var TDocStdApplication; aDoc: Handle[TDocStdDocument];
          theRange: MessageProgressRange = messageProgressRange()): PCDM_StoreStatus {.
    importcpp: "Save", header: "TDocStd_Application.hxx".}
proc saveAs*(this: var TDocStdApplication; aDoc: Handle[TDocStdDocument];
            path: TCollectionExtendedString;
            theStatusMessage: var TCollectionExtendedString;
            theRange: MessageProgressRange = messageProgressRange()): PCDM_StoreStatus {.
    importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc saveAs*(this: var TDocStdApplication; theDoc: Handle[TDocStdDocument];
            theOStream: var StandardOStream;
            theStatusMessage: var TCollectionExtendedString;
            theRange: MessageProgressRange = messageProgressRange()): PCDM_StoreStatus {.
    importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc save*(this: var TDocStdApplication; aDoc: Handle[TDocStdDocument];
          theStatusMessage: var TCollectionExtendedString;
          theRange: MessageProgressRange = messageProgressRange()): PCDM_StoreStatus {.
    importcpp: "Save", header: "TDocStd_Application.hxx".}
proc onOpenTransaction*(this: var TDocStdApplication;
                       theDoc: Handle[TDocStdDocument]) {.
    importcpp: "OnOpenTransaction", header: "TDocStd_Application.hxx".}
proc onCommitTransaction*(this: var TDocStdApplication;
                         theDoc: Handle[TDocStdDocument]) {.
    importcpp: "OnCommitTransaction", header: "TDocStd_Application.hxx".}
proc onAbortTransaction*(this: var TDocStdApplication;
                        theDoc: Handle[TDocStdDocument]) {.
    importcpp: "OnAbortTransaction", header: "TDocStd_Application.hxx".}
proc dumpJson*(this: TDocStdApplication; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDocStd_Application.hxx".}
type
  TDocStdApplicationbaseType* = CDF_Application

proc getTypeName*(): cstring {.importcpp: "TDocStd_Application::get_type_name(@)",
                            header: "TDocStd_Application.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDocStd_Application::get_type_descriptor(@)",
    header: "TDocStd_Application.hxx".}
proc dynamicType*(this: TDocStdApplication): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_Application.hxx".}

























