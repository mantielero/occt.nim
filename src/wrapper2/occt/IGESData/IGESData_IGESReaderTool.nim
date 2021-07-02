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
  IGESDataIGESReaderTool* {.importcpp: "IGESData_IGESReaderTool",
                           header: "IGESData_IGESReaderTool.hxx", bycopy.} = object of InterfaceFileReaderTool ##
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


proc constructIGESDataIGESReaderTool*(reader: Handle[IGESDataIGESReaderData];
                                     protocol: Handle[IGESDataProtocol]): IGESDataIGESReaderTool {.
    constructor, importcpp: "IGESData_IGESReaderTool(@)",
    header: "IGESData_IGESReaderTool.hxx".}
proc prepare*(this: var IGESDataIGESReaderTool; reco: Handle[IGESDataFileRecognizer]) {.
    importcpp: "Prepare", header: "IGESData_IGESReaderTool.hxx".}
proc recognize*(this: var IGESDataIGESReaderTool; num: StandardInteger;
               ach: var Handle[InterfaceCheck]; ent: var Handle[StandardTransient]): StandardBoolean {.
    importcpp: "Recognize", header: "IGESData_IGESReaderTool.hxx".}
proc beginRead*(this: var IGESDataIGESReaderTool;
               amodel: Handle[InterfaceInterfaceModel]) {.importcpp: "BeginRead",
    header: "IGESData_IGESReaderTool.hxx".}
proc analyseRecord*(this: var IGESDataIGESReaderTool; num: StandardInteger;
                   anent: Handle[StandardTransient];
                   acheck: var Handle[InterfaceCheck]): StandardBoolean {.
    importcpp: "AnalyseRecord", header: "IGESData_IGESReaderTool.hxx".}
proc endRead*(this: var IGESDataIGESReaderTool;
             amodel: Handle[InterfaceInterfaceModel]) {.importcpp: "EndRead",
    header: "IGESData_IGESReaderTool.hxx".}
proc readDir*(this: IGESDataIGESReaderTool; ent: Handle[IGESDataIGESEntity];
             ir: Handle[IGESDataIGESReaderData]; dp: IGESDataDirPart;
             ach: var Handle[InterfaceCheck]) {.noSideEffect, importcpp: "ReadDir",
    header: "IGESData_IGESReaderTool.hxx".}
proc readOwnParams*(this: IGESDataIGESReaderTool; ent: Handle[IGESDataIGESEntity];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESData_IGESReaderTool.hxx".}
proc readProps*(this: IGESDataIGESReaderTool; ent: Handle[IGESDataIGESEntity];
               ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadProps", header: "IGESData_IGESReaderTool.hxx".}
proc readAssocs*(this: IGESDataIGESReaderTool; ent: Handle[IGESDataIGESEntity];
                ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadAssocs", header: "IGESData_IGESReaderTool.hxx".}

