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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, IGESData_SpecificLib, ../Standard/Standard_Integer

discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_IGESEntity"
type
  IGESData_IGESDumper* {.importcpp: "IGESData_IGESDumper",
                        header: "IGESData_IGESDumper.hxx", bycopy.} = object ## ! Returns an
                                                                        ## IGESDumper ready to work. The
                                                                        ## IGESModel provides
                                                                        ## ! the
                                                                        ## numbering of Entities : as for any
                                                                        ## InterfaceModel, it
                                                                        ## ! gives each Entity a number; but for
                                                                        ## IGESEntities, the "Number
                                                                        ## ! of
                                                                        ## Directory Entry"
                                                                        ## according to the
                                                                        ## definition of IGES Files,
                                                                        ## ! is also usefull


proc constructIGESData_IGESDumper*(model: handle[IGESData_IGESModel];
                                  protocol: handle[IGESData_Protocol]): IGESData_IGESDumper {.
    constructor, importcpp: "IGESData_IGESDumper(@)",
    header: "IGESData_IGESDumper.hxx".}
proc PrintDNum*(this: IGESData_IGESDumper; ent: handle[IGESData_IGESEntity];
               S: var Standard_OStream) {.noSideEffect, importcpp: "PrintDNum",
                                       header: "IGESData_IGESDumper.hxx".}
proc PrintShort*(this: IGESData_IGESDumper; ent: handle[IGESData_IGESEntity];
                S: var Standard_OStream) {.noSideEffect, importcpp: "PrintShort",
                                        header: "IGESData_IGESDumper.hxx".}
proc Dump*(this: IGESData_IGESDumper; ent: handle[IGESData_IGESEntity];
          S: var Standard_OStream; own: Standard_Integer;
          attached: Standard_Integer = -1) {.noSideEffect, importcpp: "Dump",
    header: "IGESData_IGESDumper.hxx".}
proc OwnDump*(this: IGESData_IGESDumper; ent: handle[IGESData_IGESEntity];
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESData_IGESDumper.hxx".}