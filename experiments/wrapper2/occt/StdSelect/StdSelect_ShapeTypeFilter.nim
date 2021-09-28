##  Created on: 1996-09-17
##  Created by: Odile Olivier
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of StdSelect_ShapeTypeFilter"
type
  HandleC1C1* = Handle[StdSelectShapeTypeFilter]

## ! A filter framework which allows you to define a filter for a specific shape type.

type
  StdSelectShapeTypeFilter* {.importcpp: "StdSelect_ShapeTypeFilter",
                             header: "StdSelect_ShapeTypeFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                                    ## !
                                                                                                    ## Constructs
                                                                                                    ## a
                                                                                                    ## filter
                                                                                                    ## object
                                                                                                    ## defined
                                                                                                    ## by
                                                                                                    ## the
                                                                                                    ## shape
                                                                                                    ## type
                                                                                                    ## aType.

  StdSelectShapeTypeFilterbaseType* = SelectMgrFilter

proc getTypeName*(): cstring {.importcpp: "StdSelect_ShapeTypeFilter::get_type_name(@)",
                            header: "StdSelect_ShapeTypeFilter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdSelect_ShapeTypeFilter::get_type_descriptor(@)",
    header: "StdSelect_ShapeTypeFilter.hxx".}
proc dynamicType*(this: StdSelectShapeTypeFilter): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StdSelect_ShapeTypeFilter.hxx".}
proc constructStdSelectShapeTypeFilter*(aType: TopAbsShapeEnum): StdSelectShapeTypeFilter {.
    constructor, importcpp: "StdSelect_ShapeTypeFilter(@)",
    header: "StdSelect_ShapeTypeFilter.hxx".}
proc `type`*(this: StdSelectShapeTypeFilter): TopAbsShapeEnum {.noSideEffect,
    importcpp: "Type", header: "StdSelect_ShapeTypeFilter.hxx".}
proc isOk*(this: StdSelectShapeTypeFilter; anobj: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, importcpp: "IsOk", header: "StdSelect_ShapeTypeFilter.hxx".}
proc actsOn*(this: StdSelectShapeTypeFilter; aStandardMode: TopAbsShapeEnum): bool {.
    noSideEffect, importcpp: "ActsOn", header: "StdSelect_ShapeTypeFilter.hxx".}

























