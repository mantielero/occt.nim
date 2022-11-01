import interface_types

import ../../tkernel/standard/standard_types
import ../../tkernel/message/message_types




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



proc setData*(this: var InterfaceFileReaderTool;
             reader: Handle[InterfaceFileReaderData];
             protocol: Handle[InterfaceProtocol]) {.cdecl, importcpp: "SetData",
    header: "Interface_FileReaderTool.hxx".}
proc protocol*(this: InterfaceFileReaderTool): Handle[InterfaceProtocol] {.
    noSideEffect, cdecl, importcpp: "Protocol", header: "Interface_FileReaderTool.hxx".}
proc data*(this: InterfaceFileReaderTool): Handle[InterfaceFileReaderData] {.
    noSideEffect, cdecl, importcpp: "Data", header: "Interface_FileReaderTool.hxx".}
proc setModel*(this: var InterfaceFileReaderTool;
              amodel: Handle[InterfaceInterfaceModel]) {.cdecl,
    importcpp: "SetModel", header: "Interface_FileReaderTool.hxx".}
proc model*(this: InterfaceFileReaderTool): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "Model", header: "Interface_FileReaderTool.hxx".}
proc setMessenger*(this: var InterfaceFileReaderTool;
                  messenger: Handle[MessageMessenger]) {.cdecl,
    importcpp: "SetMessenger", header: "Interface_FileReaderTool.hxx".}
proc messenger*(this: InterfaceFileReaderTool): Handle[MessageMessenger] {.
    noSideEffect, cdecl, importcpp: "Messenger", header: "Interface_FileReaderTool.hxx".}
proc setTraceLevel*(this: var InterfaceFileReaderTool; tracelev: cint) {.cdecl,
    importcpp: "SetTraceLevel", header: "Interface_FileReaderTool.hxx".}
proc traceLevel*(this: InterfaceFileReaderTool): cint {.noSideEffect, cdecl,
    importcpp: "TraceLevel", header: "Interface_FileReaderTool.hxx".}
proc setErrorHandle*(this: var InterfaceFileReaderTool; err: bool) {.cdecl,
    importcpp: "SetErrorHandle", header: "Interface_FileReaderTool.hxx".}
proc errorHandle*(this: InterfaceFileReaderTool): bool {.noSideEffect, cdecl,
    importcpp: "ErrorHandle", header: "Interface_FileReaderTool.hxx".}
proc setEntities*(this: var InterfaceFileReaderTool) {.cdecl,
    importcpp: "SetEntities", header: "Interface_FileReaderTool.hxx".}
proc recognize*(this: var InterfaceFileReaderTool; num: cint;
               ach: var Handle[InterfaceCheck]; ent: var Handle[StandardTransient]): bool {.
    cdecl, importcpp: "Recognize", header: "Interface_FileReaderTool.hxx".}
proc recognizeByLib*(this: InterfaceFileReaderTool; num: cint;
                    glib: var InterfaceGeneralLib; rlib: var InterfaceReaderLib;
                    ach: var Handle[InterfaceCheck];
                    ent: var Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "RecognizeByLib", header: "Interface_FileReaderTool.hxx".}
proc unknownEntity*(this: InterfaceFileReaderTool): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "UnknownEntity", header: "Interface_FileReaderTool.hxx".}
proc newModel*(this: InterfaceFileReaderTool): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "NewModel", header: "Interface_FileReaderTool.hxx".}
proc loadModel*(this: var InterfaceFileReaderTool;
               amodel: Handle[InterfaceInterfaceModel]) {.cdecl,
    importcpp: "LoadModel", header: "Interface_FileReaderTool.hxx".}
proc loadedEntity*(this: var InterfaceFileReaderTool; num: cint): Handle[
    StandardTransient] {.cdecl, importcpp: "LoadedEntity", header: "Interface_FileReaderTool.hxx".}
proc beginRead*(this: var InterfaceFileReaderTool;
               amodel: Handle[InterfaceInterfaceModel]) {.cdecl,
    importcpp: "BeginRead", header: "Interface_FileReaderTool.hxx".}
proc analyseRecord*(this: var InterfaceFileReaderTool; num: cint;
                   anent: Handle[StandardTransient];
                   acheck: var Handle[InterfaceCheck]): bool {.cdecl,
    importcpp: "AnalyseRecord", header: "Interface_FileReaderTool.hxx".}
proc destroyInterfaceFileReaderTool*(this: var InterfaceFileReaderTool) {.cdecl,
    importcpp: "#.~Interface_FileReaderTool()", header: "Interface_FileReaderTool.hxx".}
proc endRead*(this: var InterfaceFileReaderTool;
             amodel: Handle[InterfaceInterfaceModel]) {.cdecl,
    importcpp: "EndRead", header: "Interface_FileReaderTool.hxx".}
proc clear*(this: var InterfaceFileReaderTool) {.cdecl, importcpp: "Clear",
    header: "Interface_FileReaderTool.hxx".}


