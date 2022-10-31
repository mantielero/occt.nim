



##  Created on: 1998-02-23
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

type
  HandleInterfaceTypedValue* = Handle[InterfaceTypedValue]

## ! Now strictly equivalent to TypedValue from MoniTool,
## ! except for ParamType which remains for compatibility reasons
## !
## ! This class allows to dynamically manage .. typed values, i.e.
## ! values which have an alphanumeric expression, but with
## ! controls. Such as "must be an Integer" or "Enumerative Text"
## ! etc
## !
## ! Hence, a TypedValue brings a specification (type + constraints
## ! if any) and a value. Its basic form is a string, it can be
## ! specified as integer or real or enumerative string, then
## ! queried as such.
## ! Its string content, which is a Handle(HAsciiString) can be
## ! shared by other data structures, hence gives a direct on line
## ! access to its value.

type
  InterfaceTypedValue* {.importcpp: "Interface_TypedValue",
                        header: "Interface_TypedValue.hxx", bycopy.} = object of RootObj ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## TypedValue,
                                                                                             ## with
                                                                                             ## a
                                                                                             ## name
                                                                                             ##
                                                                                             ## !
                                                                                             ##
                                                                                             ## !
                                                                                             ## type
                                                                                             ## gives
                                                                                             ## the
                                                                                             ## type
                                                                                             ## of
                                                                                             ## the
                                                                                             ## parameter,
                                                                                             ## default
                                                                                             ## is
                                                                                             ## free
                                                                                             ## text
                                                                                             ##
                                                                                             ## !
                                                                                             ## Also
                                                                                             ## available
                                                                                             ## :
                                                                                             ## Integer,
                                                                                             ## Real,
                                                                                             ## Enum,
                                                                                             ## Entity
                                                                                             ## (i.e.
                                                                                             ## Object)
                                                                                             ##
                                                                                             ## !
                                                                                             ## More
                                                                                             ## precise
                                                                                             ## specifications,
                                                                                             ## titles,
                                                                                             ## can
                                                                                             ## be
                                                                                             ## given
                                                                                             ## to
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## TypedValue
                                                                                             ## once
                                                                                             ## created
                                                                                             ##
                                                                                             ## !
                                                                                             ##
                                                                                             ## !
                                                                                             ## init
                                                                                             ## gives
                                                                                             ## an
                                                                                             ## initial
                                                                                             ## value.
                                                                                             ## If
                                                                                             ## it
                                                                                             ## is
                                                                                             ## not
                                                                                             ## given,
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## TypedValue
                                                                                             ## begins
                                                                                             ## as
                                                                                             ## "not
                                                                                             ## set",
                                                                                             ## its
                                                                                             ## value
                                                                                             ## is
                                                                                             ## empty


proc newInterfaceTypedValue*(name: cstring;
                            `type`: InterfaceParamType = interfaceParamText;
                            init: cstring = ""): InterfaceTypedValue {.cdecl,
    constructor, importcpp: "Interface_TypedValue(@)", header: "Interface_TypedValue.hxx".}
proc `type`*(this: InterfaceTypedValue): InterfaceParamType {.noSideEffect, cdecl,
    importcpp: "Type", header: "Interface_TypedValue.hxx".}
#proc paramTypeToValueType*(typ: InterfaceParamType): MoniToolValueType {.cdecl,
#    importcpp: "Interface_TypedValue::ParamTypeToValueType(@)", header: "Interface_TypedValue.hxx".}
#proc valueTypeToParamType*(typ: MoniToolValueType): InterfaceParamType {.cdecl,
#    importcpp: "Interface_TypedValue::ValueTypeToParamType(@)", header: "Interface_TypedValue.hxx".}

