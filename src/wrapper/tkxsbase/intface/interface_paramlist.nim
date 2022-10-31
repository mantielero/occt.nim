



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

type
  HandleInterfaceParamList* = Handle[InterfaceParamList]
  InterfaceParamList* {.importcpp: "Interface_ParamList",
                       header: "Interface_ParamList.hxx", bycopy.} = object of StandardTransient ##
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


proc newInterfaceParamList*(theIncrement: cint = 256): InterfaceParamList {.cdecl,
    constructor, importcpp: "Interface_ParamList(@)", header: "Interface_ParamList.hxx".}
proc length*(this: InterfaceParamList): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "Interface_ParamList.hxx".}
proc lower*(this: InterfaceParamList): cint {.noSideEffect, cdecl, importcpp: "Lower",
    header: "Interface_ParamList.hxx".}
proc upper*(this: InterfaceParamList): cint {.noSideEffect, cdecl, importcpp: "Upper",
    header: "Interface_ParamList.hxx".}
proc setValue*(this: var InterfaceParamList; index: cint;
              value: InterfaceFileParameter) {.cdecl, importcpp: "SetValue",
    header: "Interface_ParamList.hxx".}
proc value*(this: InterfaceParamList; index: cint): InterfaceFileParameter {.
    noSideEffect, cdecl, importcpp: "Value", header: "Interface_ParamList.hxx".}
proc `()`*(this: InterfaceParamList; index: cint): InterfaceFileParameter {.
    noSideEffect, cdecl, importcpp: "#(@)", header: "Interface_ParamList.hxx".}
proc changeValue*(this: var InterfaceParamList; index: cint): var InterfaceFileParameter {.
    cdecl, importcpp: "ChangeValue", header: "Interface_ParamList.hxx".}
proc `()`*(this: var InterfaceParamList; index: cint): var InterfaceFileParameter {.
    cdecl, importcpp: "#(@)", header: "Interface_ParamList.hxx".}
proc clear*(this: var InterfaceParamList) {.cdecl, importcpp: "Clear", header: "Interface_ParamList.hxx".}

