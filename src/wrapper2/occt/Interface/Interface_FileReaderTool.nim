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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HArray1OfTransient

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
  Interface_FileReaderTool* {.importcpp: "Interface_FileReaderTool",
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


proc SetData*(this: var Interface_FileReaderTool;
             reader: handle[Interface_FileReaderData];
             protocol: handle[Interface_Protocol]) {.importcpp: "SetData",
    header: "Interface_FileReaderTool.hxx".}
proc Protocol*(this: Interface_FileReaderTool): handle[Interface_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "Interface_FileReaderTool.hxx".}
proc Data*(this: Interface_FileReaderTool): handle[Interface_FileReaderData] {.
    noSideEffect, importcpp: "Data", header: "Interface_FileReaderTool.hxx".}
proc SetModel*(this: var Interface_FileReaderTool;
              amodel: handle[Interface_InterfaceModel]) {.importcpp: "SetModel",
    header: "Interface_FileReaderTool.hxx".}
proc Model*(this: Interface_FileReaderTool): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Interface_FileReaderTool.hxx".}
proc SetMessenger*(this: var Interface_FileReaderTool;
                  messenger: handle[Message_Messenger]) {.
    importcpp: "SetMessenger", header: "Interface_FileReaderTool.hxx".}
proc Messenger*(this: Interface_FileReaderTool): handle[Message_Messenger] {.
    noSideEffect, importcpp: "Messenger", header: "Interface_FileReaderTool.hxx".}
proc SetTraceLevel*(this: var Interface_FileReaderTool; tracelev: Standard_Integer) {.
    importcpp: "SetTraceLevel", header: "Interface_FileReaderTool.hxx".}
proc TraceLevel*(this: Interface_FileReaderTool): Standard_Integer {.noSideEffect,
    importcpp: "TraceLevel", header: "Interface_FileReaderTool.hxx".}
proc SetErrorHandle*(this: var Interface_FileReaderTool; err: Standard_Boolean) {.
    importcpp: "SetErrorHandle", header: "Interface_FileReaderTool.hxx".}
proc ErrorHandle*(this: Interface_FileReaderTool): Standard_Boolean {.noSideEffect,
    importcpp: "ErrorHandle", header: "Interface_FileReaderTool.hxx".}
proc SetEntities*(this: var Interface_FileReaderTool) {.importcpp: "SetEntities",
    header: "Interface_FileReaderTool.hxx".}
proc Recognize*(this: var Interface_FileReaderTool; num: Standard_Integer;
               ach: var handle[Interface_Check];
               ent: var handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Recognize", header: "Interface_FileReaderTool.hxx".}
proc RecognizeByLib*(this: Interface_FileReaderTool; num: Standard_Integer;
                    glib: var Interface_GeneralLib; rlib: var Interface_ReaderLib;
                    ach: var handle[Interface_Check];
                    ent: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "RecognizeByLib",
    header: "Interface_FileReaderTool.hxx".}
proc UnknownEntity*(this: Interface_FileReaderTool): handle[Standard_Transient] {.
    noSideEffect, importcpp: "UnknownEntity",
    header: "Interface_FileReaderTool.hxx".}
proc NewModel*(this: Interface_FileReaderTool): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "Interface_FileReaderTool.hxx".}
proc LoadModel*(this: var Interface_FileReaderTool;
               amodel: handle[Interface_InterfaceModel]) {.importcpp: "LoadModel",
    header: "Interface_FileReaderTool.hxx".}
proc LoadedEntity*(this: var Interface_FileReaderTool; num: Standard_Integer): handle[
    Standard_Transient] {.importcpp: "LoadedEntity",
                         header: "Interface_FileReaderTool.hxx".}
proc BeginRead*(this: var Interface_FileReaderTool;
               amodel: handle[Interface_InterfaceModel]) {.importcpp: "BeginRead",
    header: "Interface_FileReaderTool.hxx".}
proc AnalyseRecord*(this: var Interface_FileReaderTool; num: Standard_Integer;
                   anent: handle[Standard_Transient];
                   acheck: var handle[Interface_Check]): Standard_Boolean {.
    importcpp: "AnalyseRecord", header: "Interface_FileReaderTool.hxx".}
proc destroyInterface_FileReaderTool*(this: var Interface_FileReaderTool) {.
    importcpp: "#.~Interface_FileReaderTool()",
    header: "Interface_FileReaderTool.hxx".}
proc EndRead*(this: var Interface_FileReaderTool;
             amodel: handle[Interface_InterfaceModel]) {.importcpp: "EndRead",
    header: "Interface_FileReaderTool.hxx".}
proc Clear*(this: var Interface_FileReaderTool) {.importcpp: "Clear",
    header: "Interface_FileReaderTool.hxx".}