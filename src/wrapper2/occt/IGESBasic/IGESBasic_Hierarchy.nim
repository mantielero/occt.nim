##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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

discard "forward decl of IGESBasic_Hierarchy"
discard "forward decl of IGESBasic_Hierarchy"
type
  HandleIGESBasicHierarchy* = Handle[IGESBasicHierarchy]

## ! defines Hierarchy, Type <406> Form <10>
## ! in package IGESBasic
## ! Provides ability to control the hierarchy of each
## ! directory entry attribute.

type
  IGESBasicHierarchy* {.importcpp: "IGESBasic_Hierarchy",
                       header: "IGESBasic_Hierarchy.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESBasicHierarchy*(): IGESBasicHierarchy {.constructor,
    importcpp: "IGESBasic_Hierarchy(@)", header: "IGESBasic_Hierarchy.hxx".}
proc init*(this: var IGESBasicHierarchy; nbPropVal: StandardInteger;
          aLineFont: StandardInteger; aView: StandardInteger;
          anEntityLevel: StandardInteger; aBlankStatus: StandardInteger;
          aLineWt: StandardInteger; aColorNum: StandardInteger) {.importcpp: "Init",
    header: "IGESBasic_Hierarchy.hxx".}
proc nbPropertyValues*(this: IGESBasicHierarchy): StandardInteger {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESBasic_Hierarchy.hxx".}
proc newLineFont*(this: IGESBasicHierarchy): StandardInteger {.noSideEffect,
    importcpp: "NewLineFont", header: "IGESBasic_Hierarchy.hxx".}
proc newView*(this: IGESBasicHierarchy): StandardInteger {.noSideEffect,
    importcpp: "NewView", header: "IGESBasic_Hierarchy.hxx".}
proc newEntityLevel*(this: IGESBasicHierarchy): StandardInteger {.noSideEffect,
    importcpp: "NewEntityLevel", header: "IGESBasic_Hierarchy.hxx".}
proc newBlankStatus*(this: IGESBasicHierarchy): StandardInteger {.noSideEffect,
    importcpp: "NewBlankStatus", header: "IGESBasic_Hierarchy.hxx".}
proc newLineWeight*(this: IGESBasicHierarchy): StandardInteger {.noSideEffect,
    importcpp: "NewLineWeight", header: "IGESBasic_Hierarchy.hxx".}
proc newColorNum*(this: IGESBasicHierarchy): StandardInteger {.noSideEffect,
    importcpp: "NewColorNum", header: "IGESBasic_Hierarchy.hxx".}
type
  IGESBasicHierarchybaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_Hierarchy::get_type_name(@)",
                            header: "IGESBasic_Hierarchy.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_Hierarchy::get_type_descriptor(@)",
    header: "IGESBasic_Hierarchy.hxx".}
proc dynamicType*(this: IGESBasicHierarchy): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESBasic_Hierarchy.hxx".}

