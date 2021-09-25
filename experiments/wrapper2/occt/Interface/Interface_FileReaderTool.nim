##  Created on: 1993-02-04
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_FileReaderData"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Message_Messenger"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_ReaderLib"
type
  InterfaceFileReaderTool* {.importcpp: "Interface_FileReaderTool",
                            header: "Interface_FileReaderTool.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Sets
                                                                                 ## Data
                                                                                 ## to
                                                                                 ## a
                                                                                 ## FileReaderData.
                                                                                 ## Works
                                                                                 ## with
                                                                                 ## a
                                                                                 ## Protocol
                                                                                 ##
                                                                                 ## !
                                                                                 ## Constructor;
                                                                                 ## sets
                                                                                 ## default
                                                                                 ## fields


proc setData*(this: var InterfaceFileReaderTool;
             reader: Handle[InterfaceFileReaderData];
             protocol: Handle[InterfaceProtocol]) {.importcpp: "SetData",
    header: "Interface_FileReaderTool.hxx".}
proc protocol*(this: InterfaceFileReaderTool): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Protocol", header: "Interface_FileReaderTool.hxx".}
proc data*(this: InterfaceFileReaderTool): Handle[InterfaceFileReaderData] {.
    noSideEffect, importcpp: "Data", header: "Interface_FileReaderTool.hxx".}
proc setModel*(this: var InterfaceFileReaderTool;
              amodel: Handle[InterfaceInterfaceModel]) {.importcpp: "SetModel",
    header: "Interface_FileReaderTool.hxx".}
proc model*(this: InterfaceFileReaderTool): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Interface_FileReaderTool.hxx".}
proc setMessenger*(this: var InterfaceFileReaderTool;
                  messenger: Handle[MessageMessenger]) {.
    importcpp: "SetMessenger", header: "Interface_FileReaderTool.hxx".}
proc messenger*(this: InterfaceFileReaderTool): Handle[MessageMessenger] {.
    noSideEffect, importcpp: "Messenger", header: "Interface_FileReaderTool.hxx".}
proc setTraceLevel*(this: var InterfaceFileReaderTool; tracelev: int) {.
    importcpp: "SetTraceLevel", header: "Interface_FileReaderTool.hxx".}
proc traceLevel*(this: InterfaceFileReaderTool): int {.noSideEffect,
    importcpp: "TraceLevel", header: "Interface_FileReaderTool.hxx".}
proc setErrorHandle*(this: var InterfaceFileReaderTool; err: bool) {.
    importcpp: "SetErrorHandle", header: "Interface_FileReaderTool.hxx".}
proc errorHandle*(this: InterfaceFileReaderTool): bool {.noSideEffect,
    importcpp: "ErrorHandle", header: "Interface_FileReaderTool.hxx".}
proc setEntities*(this: var InterfaceFileReaderTool) {.importcpp: "SetEntities",
    header: "Interface_FileReaderTool.hxx".}
proc recognize*(this: var InterfaceFileReaderTool; num: int;
               ach: var Handle[InterfaceCheck]; ent: var Handle[StandardTransient]): bool {.
    importcpp: "Recognize", header: "Interface_FileReaderTool.hxx".}
proc recognizeByLib*(this: InterfaceFileReaderTool; num: int;
                    glib: var InterfaceGeneralLib; rlib: var InterfaceReaderLib;
                    ach: var Handle[InterfaceCheck];
                    ent: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "RecognizeByLib", header: "Interface_FileReaderTool.hxx".}
proc unknownEntity*(this: InterfaceFileReaderTool): Handle[StandardTransient] {.
    noSideEffect, importcpp: "UnknownEntity",
    header: "Interface_FileReaderTool.hxx".}
proc newModel*(this: InterfaceFileReaderTool): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "Interface_FileReaderTool.hxx".}
proc loadModel*(this: var InterfaceFileReaderTool;
               amodel: Handle[InterfaceInterfaceModel]) {.importcpp: "LoadModel",
    header: "Interface_FileReaderTool.hxx".}
proc loadedEntity*(this: var InterfaceFileReaderTool; num: int): Handle[
    StandardTransient] {.importcpp: "LoadedEntity",
                        header: "Interface_FileReaderTool.hxx".}
proc beginRead*(this: var InterfaceFileReaderTool;
               amodel: Handle[InterfaceInterfaceModel]) {.importcpp: "BeginRead",
    header: "Interface_FileReaderTool.hxx".}
proc analyseRecord*(this: var InterfaceFileReaderTool; num: int;
                   anent: Handle[StandardTransient];
                   acheck: var Handle[InterfaceCheck]): bool {.
    importcpp: "AnalyseRecord", header: "Interface_FileReaderTool.hxx".}
proc destroyInterfaceFileReaderTool*(this: var InterfaceFileReaderTool) {.
    importcpp: "#.~Interface_FileReaderTool()",
    header: "Interface_FileReaderTool.hxx".}
proc endRead*(this: var InterfaceFileReaderTool;
             amodel: Handle[InterfaceInterfaceModel]) {.importcpp: "EndRead",
    header: "Interface_FileReaderTool.hxx".}
proc clear*(this: var InterfaceFileReaderTool) {.importcpp: "Clear",
    header: "Interface_FileReaderTool.hxx".}
