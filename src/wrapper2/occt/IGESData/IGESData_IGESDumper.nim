##  Created on: 1993-09-06
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

discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_IGESEntity"
type
  IGESDataIGESDumper* {.importcpp: "IGESData_IGESDumper",
                       header: "IGESData_IGESDumper.hxx", bycopy.} = object ## ! Returns an
                                                                       ## IGESDumper ready to work. The IGESModel provides
                                                                       ## ! the numbering of Entities : as for any
                                                                       ## InterfaceModel, it
                                                                       ## ! gives each Entity a number; but for
                                                                       ## IGESEntities, the "Number
                                                                       ## ! of Directory Entry" according to the
                                                                       ## definition of IGES Files,
                                                                       ## ! is also usefull


proc constructIGESDataIGESDumper*(model: Handle[IGESDataIGESModel];
                                 protocol: Handle[IGESDataProtocol]): IGESDataIGESDumper {.
    constructor, importcpp: "IGESData_IGESDumper(@)",
    header: "IGESData_IGESDumper.hxx".}
proc printDNum*(this: IGESDataIGESDumper; ent: Handle[IGESDataIGESEntity];
               s: var StandardOStream) {.noSideEffect, importcpp: "PrintDNum",
                                      header: "IGESData_IGESDumper.hxx".}
proc printShort*(this: IGESDataIGESDumper; ent: Handle[IGESDataIGESEntity];
                s: var StandardOStream) {.noSideEffect, importcpp: "PrintShort",
                                       header: "IGESData_IGESDumper.hxx".}
proc dump*(this: IGESDataIGESDumper; ent: Handle[IGESDataIGESEntity];
          s: var StandardOStream; own: StandardInteger;
          attached: StandardInteger = -1) {.noSideEffect, importcpp: "Dump",
                                        header: "IGESData_IGESDumper.hxx".}
proc ownDump*(this: IGESDataIGESDumper; ent: Handle[IGESDataIGESEntity];
             s: var StandardOStream; own: StandardInteger) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESData_IGESDumper.hxx".}

