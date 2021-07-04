##  Created on: 1992-04-07
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
  ../Standard/Standard, ../Standard/Standard_Type, IGESData_IGESEntity,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_LevelListEntity"
discard "forward decl of IGESData_LevelListEntity"
type
  Handle_IGESData_LevelListEntity* = handle[IGESData_LevelListEntity]

## ! defines required type for LevelList in directory part
## ! an effective LevelList entity must inherits it

type
  IGESData_LevelListEntity* {.importcpp: "IGESData_LevelListEntity",
                             header: "IGESData_LevelListEntity.hxx", bycopy.} = object of IGESData_IGESEntity ##
                                                                                                       ## !
                                                                                                       ## Must
                                                                                                       ## return
                                                                                                       ## the
                                                                                                       ## count
                                                                                                       ## of
                                                                                                       ## levels


proc NbLevelNumbers*(this: IGESData_LevelListEntity): Standard_Integer {.
    noSideEffect, importcpp: "NbLevelNumbers",
    header: "IGESData_LevelListEntity.hxx".}
proc LevelNumber*(this: IGESData_LevelListEntity; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "LevelNumber", header: "IGESData_LevelListEntity.hxx".}
proc HasLevelNumber*(this: IGESData_LevelListEntity; level: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasLevelNumber",
    header: "IGESData_LevelListEntity.hxx".}
type
  IGESData_LevelListEntitybase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESData_LevelListEntity::get_type_name(@)",
                              header: "IGESData_LevelListEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_LevelListEntity::get_type_descriptor(@)",
    header: "IGESData_LevelListEntity.hxx".}
proc DynamicType*(this: IGESData_LevelListEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_LevelListEntity.hxx".}