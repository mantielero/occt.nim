##  Created on: 2008-01-21
##  Created by: Galina KULIKOVA
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
  Interface_VectorOfFileParameter, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_OutOfMemory"
discard "forward decl of Interface_FileParameter"
discard "forward decl of Interface_ParamList"
discard "forward decl of Interface_ParamList"
type
  Handle_Interface_ParamList* = handle[Interface_ParamList]
  Interface_ParamList* {.importcpp: "Interface_ParamList",
                        header: "Interface_ParamList.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## vector
                                                                                            ## with
                                                                                            ## size
                                                                                            ## of
                                                                                            ## memmory
                                                                                            ## blok
                                                                                            ## equal
                                                                                            ## to
                                                                                            ## theIncrement


proc constructInterface_ParamList*(theIncrement: Standard_Integer = 256): Interface_ParamList {.
    constructor, importcpp: "Interface_ParamList(@)",
    header: "Interface_ParamList.hxx".}
proc Length*(this: Interface_ParamList): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "Interface_ParamList.hxx".}
proc Lower*(this: Interface_ParamList): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "Interface_ParamList.hxx".}
proc Upper*(this: Interface_ParamList): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "Interface_ParamList.hxx".}
proc SetValue*(this: var Interface_ParamList; Index: Standard_Integer;
              Value: Interface_FileParameter) {.importcpp: "SetValue",
    header: "Interface_ParamList.hxx".}
proc Value*(this: Interface_ParamList; Index: Standard_Integer): Interface_FileParameter {.
    noSideEffect, importcpp: "Value", header: "Interface_ParamList.hxx".}
proc `()`*(this: Interface_ParamList; Index: Standard_Integer): Interface_FileParameter {.
    noSideEffect, importcpp: "#(@)", header: "Interface_ParamList.hxx".}
proc ChangeValue*(this: var Interface_ParamList; Index: Standard_Integer): var Interface_FileParameter {.
    importcpp: "ChangeValue", header: "Interface_ParamList.hxx".}
proc `()`*(this: var Interface_ParamList; Index: Standard_Integer): var Interface_FileParameter {.
    importcpp: "#(@)", header: "Interface_ParamList.hxx".}
proc Clear*(this: var Interface_ParamList) {.importcpp: "Clear",
    header: "Interface_ParamList.hxx".}
type
  Interface_ParamListbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_ParamList::get_type_name(@)",
                              header: "Interface_ParamList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_ParamList::get_type_descriptor(@)",
    header: "Interface_ParamList.hxx".}
proc DynamicType*(this: Interface_ParamList): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_ParamList.hxx".}