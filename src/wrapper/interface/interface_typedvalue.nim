import interface_types







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



