##  Created on: 1993-09-08
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
  ../Standard/Standard, ../Standard/Standard_Type, IGESData_GeneralModule,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IGESData_DefaultGeneral"
discard "forward decl of IGESData_DefaultGeneral"
type
  Handle_IGESData_DefaultGeneral* = handle[IGESData_DefaultGeneral]

## ! Processes the specific case of UndefinedEntity from IGESData
## ! (Case Number 1)

type
  IGESData_DefaultGeneral* {.importcpp: "IGESData_DefaultGeneral",
                            header: "IGESData_DefaultGeneral.hxx", bycopy.} = object of IGESData_GeneralModule ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## DefaultGeneral
                                                                                                        ## and
                                                                                                        ## puts
                                                                                                        ## it
                                                                                                        ## into
                                                                                                        ## GeneralLib,
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## bound
                                                                                                        ## with
                                                                                                        ## a
                                                                                                        ## Protocol
                                                                                                        ## from
                                                                                                        ## IGESData


proc constructIGESData_DefaultGeneral*(): IGESData_DefaultGeneral {.constructor,
    importcpp: "IGESData_DefaultGeneral(@)", header: "IGESData_DefaultGeneral.hxx".}
proc OwnSharedCase*(this: IGESData_DefaultGeneral; CN: Standard_Integer;
                   ent: handle[IGESData_IGESEntity];
                   iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnSharedCase", header: "IGESData_DefaultGeneral.hxx".}
proc DirChecker*(this: IGESData_DefaultGeneral; CN: Standard_Integer;
                ent: handle[IGESData_IGESEntity]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESData_DefaultGeneral.hxx".}
proc OwnCheckCase*(this: IGESData_DefaultGeneral; CN: Standard_Integer;
                  ent: handle[IGESData_IGESEntity]; shares: Interface_ShareTool;
                  ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "OwnCheckCase", header: "IGESData_DefaultGeneral.hxx".}
proc NewVoid*(this: IGESData_DefaultGeneral; CN: Standard_Integer;
             entto: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "NewVoid", header: "IGESData_DefaultGeneral.hxx".}
proc OwnCopyCase*(this: IGESData_DefaultGeneral; CN: Standard_Integer;
                 entfrom: handle[IGESData_IGESEntity];
                 entto: handle[IGESData_IGESEntity]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopyCase", header: "IGESData_DefaultGeneral.hxx".}
type
  IGESData_DefaultGeneralbase_type* = IGESData_GeneralModule

proc get_type_name*(): cstring {.importcpp: "IGESData_DefaultGeneral::get_type_name(@)",
                              header: "IGESData_DefaultGeneral.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_DefaultGeneral::get_type_descriptor(@)",
    header: "IGESData_DefaultGeneral.hxx".}
proc DynamicType*(this: IGESData_DefaultGeneral): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_DefaultGeneral.hxx".}