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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGraph_DefinitionLevel"
discard "forward decl of IGESGraph_DefinitionLevel"
type
  HandleIGESGraphDefinitionLevel* = Handle[IGESGraphDefinitionLevel]

## ! defines IGESDefinitionLevel, Type <406> Form <1>
## ! in package IGESGraph
## !
## ! Indicates the no. of levels on which an entity is
## ! defined

type
  IGESGraphDefinitionLevel* {.importcpp: "IGESGraph_DefinitionLevel",
                             header: "IGESGraph_DefinitionLevel.hxx", bycopy.} = object of IGESDataLevelListEntity


proc constructIGESGraphDefinitionLevel*(): IGESGraphDefinitionLevel {.constructor,
    importcpp: "IGESGraph_DefinitionLevel(@)",
    header: "IGESGraph_DefinitionLevel.hxx".}
proc init*(this: var IGESGraphDefinitionLevel;
          allLevelNumbers: Handle[TColStdHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESGraph_DefinitionLevel.hxx".}
proc nbPropertyValues*(this: IGESGraphDefinitionLevel): StandardInteger {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESGraph_DefinitionLevel.hxx".}
proc nbLevelNumbers*(this: IGESGraphDefinitionLevel): StandardInteger {.
    noSideEffect, importcpp: "NbLevelNumbers",
    header: "IGESGraph_DefinitionLevel.hxx".}
proc levelNumber*(this: IGESGraphDefinitionLevel; levelIndex: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "LevelNumber", header: "IGESGraph_DefinitionLevel.hxx".}
type
  IGESGraphDefinitionLevelbaseType* = IGESDataLevelListEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_DefinitionLevel::get_type_name(@)",
                            header: "IGESGraph_DefinitionLevel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_DefinitionLevel::get_type_descriptor(@)",
    header: "IGESGraph_DefinitionLevel.hxx".}
proc dynamicType*(this: IGESGraphDefinitionLevel): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGraph_DefinitionLevel.hxx".}

