##  Created on: 1992-11-30
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Transient,
  ../Standard/Standard_CString

discard "forward decl of IFSelect_IntParam"
discard "forward decl of IFSelect_IntParam"
type
  Handle_IFSelect_IntParam* = handle[IFSelect_IntParam]

## ! This class simply allows to access an Integer value through a
## ! Handle, as a String can be (by using HString).
## ! Hence, this value can be accessed : read and modified, without
## ! passing through the specific object which detains it. Thus,
## ! parameters of a Selection or a Dispatch (according its type)
## ! can be controlled directly from the ShareOut which contains them
## !
## ! Additionnaly, an IntParam can be bound to a Static.
## ! Remember that for a String, binding is immediate, because the
## ! string value of a Static is a HAsciiString, it then suffices
## ! to get its Handle.
## ! For an Integer, an IntParam can designate (by its name) a
## ! Static : each time its value is required or set, the Static
## ! is aknowledged

type
  IFSelect_IntParam* {.importcpp: "IFSelect_IntParam",
                      header: "IFSelect_IntParam.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## IntParam.
                                                                                        ## Initial
                                                                                        ## value
                                                                                        ## is
                                                                                        ## set
                                                                                        ## to
                                                                                        ## zer


proc constructIFSelect_IntParam*(): IFSelect_IntParam {.constructor,
    importcpp: "IFSelect_IntParam(@)", header: "IFSelect_IntParam.hxx".}
proc SetStaticName*(this: var IFSelect_IntParam; statname: Standard_CString) {.
    importcpp: "SetStaticName", header: "IFSelect_IntParam.hxx".}
proc StaticName*(this: IFSelect_IntParam): Standard_CString {.noSideEffect,
    importcpp: "StaticName", header: "IFSelect_IntParam.hxx".}
proc Value*(this: IFSelect_IntParam): Standard_Integer {.noSideEffect,
    importcpp: "Value", header: "IFSelect_IntParam.hxx".}
proc SetValue*(this: var IFSelect_IntParam; val: Standard_Integer) {.
    importcpp: "SetValue", header: "IFSelect_IntParam.hxx".}
type
  IFSelect_IntParambase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_IntParam::get_type_name(@)",
                              header: "IFSelect_IntParam.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_IntParam::get_type_descriptor(@)",
    header: "IFSelect_IntParam.hxx".}
proc DynamicType*(this: IFSelect_IntParam): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_IntParam.hxx".}