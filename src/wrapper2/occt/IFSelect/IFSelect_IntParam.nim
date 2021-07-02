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

discard "forward decl of IFSelect_IntParam"
discard "forward decl of IFSelect_IntParam"
type
  HandleIFSelectIntParam* = Handle[IFSelectIntParam]

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
  IFSelectIntParam* {.importcpp: "IFSelect_IntParam",
                     header: "IFSelect_IntParam.hxx", bycopy.} = object of StandardTransient ##
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


proc constructIFSelectIntParam*(): IFSelectIntParam {.constructor,
    importcpp: "IFSelect_IntParam(@)", header: "IFSelect_IntParam.hxx".}
proc setStaticName*(this: var IFSelectIntParam; statname: StandardCString) {.
    importcpp: "SetStaticName", header: "IFSelect_IntParam.hxx".}
proc staticName*(this: IFSelectIntParam): StandardCString {.noSideEffect,
    importcpp: "StaticName", header: "IFSelect_IntParam.hxx".}
proc value*(this: IFSelectIntParam): StandardInteger {.noSideEffect,
    importcpp: "Value", header: "IFSelect_IntParam.hxx".}
proc setValue*(this: var IFSelectIntParam; val: StandardInteger) {.
    importcpp: "SetValue", header: "IFSelect_IntParam.hxx".}
type
  IFSelectIntParambaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IFSelect_IntParam::get_type_name(@)",
                            header: "IFSelect_IntParam.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_IntParam::get_type_descriptor(@)",
    header: "IFSelect_IntParam.hxx".}
proc dynamicType*(this: IFSelectIntParam): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_IntParam.hxx".}

