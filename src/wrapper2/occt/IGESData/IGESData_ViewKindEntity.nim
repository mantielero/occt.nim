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
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of IGESData_ViewKindEntity"
type
  Handle_IGESData_ViewKindEntity* = handle[IGESData_ViewKindEntity]

## ! defines required type for ViewKind in directory part
## ! that is, Single view or Multiple view
## ! An effective ViewKind entity must inherit it and define
## ! IsSingle (True for Single, False for List of Views),
## ! NbViews and ViewItem (especially for a List)

type
  IGESData_ViewKindEntity* {.importcpp: "IGESData_ViewKindEntity",
                            header: "IGESData_ViewKindEntity.hxx", bycopy.} = object of IGESData_IGESEntity ##
                                                                                                     ## !
                                                                                                     ## says
                                                                                                     ## if
                                                                                                     ## "me"
                                                                                                     ## is
                                                                                                     ## a
                                                                                                     ## Single
                                                                                                     ## View
                                                                                                     ## (True)
                                                                                                     ## or
                                                                                                     ## a
                                                                                                     ## List
                                                                                                     ## of
                                                                                                     ## Views
                                                                                                     ## (False)


proc IsSingle*(this: IGESData_ViewKindEntity): Standard_Boolean {.noSideEffect,
    importcpp: "IsSingle", header: "IGESData_ViewKindEntity.hxx".}
proc NbViews*(this: IGESData_ViewKindEntity): Standard_Integer {.noSideEffect,
    importcpp: "NbViews", header: "IGESData_ViewKindEntity.hxx".}
proc ViewItem*(this: IGESData_ViewKindEntity; num: Standard_Integer): handle[
    IGESData_ViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                              header: "IGESData_ViewKindEntity.hxx".}
type
  IGESData_ViewKindEntitybase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESData_ViewKindEntity::get_type_name(@)",
                              header: "IGESData_ViewKindEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_ViewKindEntity::get_type_descriptor(@)",
    header: "IGESData_ViewKindEntity.hxx".}
proc DynamicType*(this: IGESData_ViewKindEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_ViewKindEntity.hxx".}