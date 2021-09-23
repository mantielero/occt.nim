##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger, ../IGESData/IGESData_LevelListEntity,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGraph_DefinitionLevel"
discard "forward decl of IGESGraph_DefinitionLevel"
type
  Handle_IGESGraph_DefinitionLevel* = handle[IGESGraph_DefinitionLevel]

## ! defines IGESDefinitionLevel, Type <406> Form <1>
## ! in package IGESGraph
## !
## ! Indicates the no. of levels on which an entity is
## ! defined

type
  IGESGraph_DefinitionLevel* {.importcpp: "IGESGraph_DefinitionLevel",
                              header: "IGESGraph_DefinitionLevel.hxx", bycopy.} = object of IGESData_LevelListEntity


proc constructIGESGraph_DefinitionLevel*(): IGESGraph_DefinitionLevel {.
    constructor, importcpp: "IGESGraph_DefinitionLevel(@)",
    header: "IGESGraph_DefinitionLevel.hxx".}
proc Init*(this: var IGESGraph_DefinitionLevel;
          allLevelNumbers: handle[TColStd_HArray1OfInteger]) {.importcpp: "Init",
    header: "IGESGraph_DefinitionLevel.hxx".}
proc NbPropertyValues*(this: IGESGraph_DefinitionLevel): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESGraph_DefinitionLevel.hxx".}
proc NbLevelNumbers*(this: IGESGraph_DefinitionLevel): Standard_Integer {.
    noSideEffect, importcpp: "NbLevelNumbers",
    header: "IGESGraph_DefinitionLevel.hxx".}
proc LevelNumber*(this: IGESGraph_DefinitionLevel; LevelIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "LevelNumber", header: "IGESGraph_DefinitionLevel.hxx".}
type
  IGESGraph_DefinitionLevelbase_type* = IGESData_LevelListEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_DefinitionLevel::get_type_name(@)",
                              header: "IGESGraph_DefinitionLevel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_DefinitionLevel::get_type_descriptor(@)",
    header: "IGESGraph_DefinitionLevel.hxx".}
proc DynamicType*(this: IGESGraph_DefinitionLevel): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGraph_DefinitionLevel.hxx".}