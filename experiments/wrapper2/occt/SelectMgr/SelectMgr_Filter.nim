##  Created on: 1997-03-05
##  Created by: Robert COUBLANC
##  Copyright (c) 1997-1999 Matra Datavision
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
discard "forward decl of SelectMgr_Filter"
discard "forward decl of SelectMgr_Filter"
type
  HandleC1C1* = Handle[SelectMgrFilter]

## ! The root class to define filter objects for selection.
## ! Advance handling of objects requires the services of
## ! filters. These only allow dynamic detection and
## ! selection of objects which correspond to the criteria defined in each.
## ! Eight standard filters inheriting SelectMgr_Filter are
## ! defined in Open CASCADE.
## ! You can create your own filters by defining new filter
## ! classes inheriting this framework. You use these
## ! filters by loading them into an AIS interactive context.

type
  SelectMgrFilter* {.importcpp: "SelectMgr_Filter", header: "SelectMgr_Filter.hxx",
                    bycopy.} = object of StandardTransient ## ! Indicates that the selected Interactive Object
                                                      ## ! passes the filter. The owner, anObj, can be either
                                                      ## ! direct or user. A direct owner is the corresponding
                                                      ## ! construction element, whereas a user is the
                                                      ## ! compound shape of which the entity forms a part.
                                                      ## ! When an object is detected by the mouse - in AIS,
                                                      ## ! this is done through a context selector - its owner
                                                      ## ! is passed to the filter as an argument.
                                                      ## ! If the object returns Standard_True, it is kept; if
                                                      ## ! not, it is rejected.
                                                      ## ! If you are creating a filter class inheriting this
                                                      ## ! framework, and the daughter class is to be used in
                                                      ## ! an AIS local context, you will need to implement the
                                                      ## ! virtual function ActsOn.


proc isOk*(this: SelectMgrFilter; anObj: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, importcpp: "IsOk", header: "SelectMgr_Filter.hxx".}
proc actsOn*(this: SelectMgrFilter; aStandardMode: TopAbsShapeEnum): bool {.
    noSideEffect, importcpp: "ActsOn", header: "SelectMgr_Filter.hxx".}
type
  SelectMgrFilterbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "SelectMgr_Filter::get_type_name(@)",
                            header: "SelectMgr_Filter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_Filter::get_type_descriptor(@)",
    header: "SelectMgr_Filter.hxx".}
proc dynamicType*(this: SelectMgrFilter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "SelectMgr_Filter.hxx".}

























