##  Created on: 1992-04-06
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Interface/Interface_GeneralLib,
  ../Interface/Interface_ReaderLib, ../Standard/Standard_Integer,
  IGESData_IGESType, IGESData_ReadStage, ../Standard/Standard_Real,
  ../Interface/Interface_FileReaderTool, ../Standard/Standard_Boolean

discard "forward decl of Interface_ParamList"
discard "forward decl of IGESData_FileRecognizer"
discard "forward decl of Interface_Check"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_DirPart"
discard "forward decl of IGESData_ParamReader"
type
  IGESData_IGESReaderTool* {.importcpp: "IGESData_IGESReaderTool",
                            header: "IGESData_IGESReaderTool.hxx", bycopy.} = object of Interface_FileReaderTool ##
                                                                                                          ## !
                                                                                                          ## creates
                                                                                                          ## IGESReaderTool
                                                                                                          ## to
                                                                                                          ## work
                                                                                                          ## with
                                                                                                          ## an
                                                                                                          ## IGESReaderData
                                                                                                          ## and
                                                                                                          ## an
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## IGES
                                                                                                          ## Protocol.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Actually,
                                                                                                          ## no
                                                                                                          ## Lib
                                                                                                          ## is
                                                                                                          ## used


proc constructIGESData_IGESReaderTool*(reader: handle[IGESData_IGESReaderData];
                                      protocol: handle[IGESData_Protocol]): IGESData_IGESReaderTool {.
    constructor, importcpp: "IGESData_IGESReaderTool(@)",
    header: "IGESData_IGESReaderTool.hxx".}
proc Prepare*(this: var IGESData_IGESReaderTool;
             reco: handle[IGESData_FileRecognizer]) {.importcpp: "Prepare",
    header: "IGESData_IGESReaderTool.hxx".}
proc Recognize*(this: var IGESData_IGESReaderTool; num: Standard_Integer;
               ach: var handle[Interface_Check];
               ent: var handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Recognize", header: "IGESData_IGESReaderTool.hxx".}
proc BeginRead*(this: var IGESData_IGESReaderTool;
               amodel: handle[Interface_InterfaceModel]) {.importcpp: "BeginRead",
    header: "IGESData_IGESReaderTool.hxx".}
proc AnalyseRecord*(this: var IGESData_IGESReaderTool; num: Standard_Integer;
                   anent: handle[Standard_Transient];
                   acheck: var handle[Interface_Check]): Standard_Boolean {.
    importcpp: "AnalyseRecord", header: "IGESData_IGESReaderTool.hxx".}
proc EndRead*(this: var IGESData_IGESReaderTool;
             amodel: handle[Interface_InterfaceModel]) {.importcpp: "EndRead",
    header: "IGESData_IGESReaderTool.hxx".}
proc ReadDir*(this: IGESData_IGESReaderTool; ent: handle[IGESData_IGESEntity];
             IR: handle[IGESData_IGESReaderData]; DP: IGESData_DirPart;
             ach: var handle[Interface_Check]) {.noSideEffect, importcpp: "ReadDir",
    header: "IGESData_IGESReaderTool.hxx".}
proc ReadOwnParams*(this: IGESData_IGESReaderTool;
                   ent: handle[IGESData_IGESEntity];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESData_IGESReaderTool.hxx".}
proc ReadProps*(this: IGESData_IGESReaderTool; ent: handle[IGESData_IGESEntity];
               IR: handle[IGESData_IGESReaderData]; PR: var IGESData_ParamReader) {.
    noSideEffect, importcpp: "ReadProps", header: "IGESData_IGESReaderTool.hxx".}
proc ReadAssocs*(this: IGESData_IGESReaderTool; ent: handle[IGESData_IGESEntity];
                IR: handle[IGESData_IGESReaderData]; PR: var IGESData_ParamReader) {.
    noSideEffect, importcpp: "ReadAssocs", header: "IGESData_IGESReaderTool.hxx".}