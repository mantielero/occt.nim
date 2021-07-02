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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_LevelListEntity"
discard "forward decl of IGESData_LevelListEntity"
type
  HandleIGESDataLevelListEntity* = Handle[IGESDataLevelListEntity]

## ! defines required type for LevelList in directory part
## ! an effective LevelList entity must inherits it

type
  IGESDataLevelListEntity* {.importcpp: "IGESData_LevelListEntity",
                            header: "IGESData_LevelListEntity.hxx", bycopy.} = object of IGESDataIGESEntity ##
                                                                                                     ## !
                                                                                                     ## Must
                                                                                                     ## return
                                                                                                     ## the
                                                                                                     ## count
                                                                                                     ## of
                                                                                                     ## levels


proc nbLevelNumbers*(this: IGESDataLevelListEntity): StandardInteger {.noSideEffect,
    importcpp: "NbLevelNumbers", header: "IGESData_LevelListEntity.hxx".}
proc levelNumber*(this: IGESDataLevelListEntity; num: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "LevelNumber", header: "IGESData_LevelListEntity.hxx".}
proc hasLevelNumber*(this: IGESDataLevelListEntity; level: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "HasLevelNumber",
    header: "IGESData_LevelListEntity.hxx".}
type
  IGESDataLevelListEntitybaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESData_LevelListEntity::get_type_name(@)",
                            header: "IGESData_LevelListEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_LevelListEntity::get_type_descriptor(@)",
    header: "IGESData_LevelListEntity.hxx".}
proc dynamicType*(this: IGESDataLevelListEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_LevelListEntity.hxx".}

