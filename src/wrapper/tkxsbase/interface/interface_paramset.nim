import interface_types
import ../../tkernel/standard/standard_types







##  Created on: 1992-10-29
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





proc newInterfaceParamSet*(nres: cint; nst: cint = 1): InterfaceParamSet {.cdecl,
    constructor, importcpp: "Interface_ParamSet(@)", header: "Interface_ParamSet.hxx".}
proc append*(this: var InterfaceParamSet; val: cstring; lnval: cint;
            typ: InterfaceParamType; nument: cint): cint {.cdecl, importcpp: "Append",
    header: "Interface_ParamSet.hxx".}
proc append*(this: var InterfaceParamSet; fp: InterfaceFileParameter): cint {.cdecl,
    importcpp: "Append", header: "Interface_ParamSet.hxx".}
proc nbParams*(this: InterfaceParamSet): cint {.noSideEffect, cdecl,
    importcpp: "NbParams", header: "Interface_ParamSet.hxx".}
proc param*(this: InterfaceParamSet; num: cint): InterfaceFileParameter {.
    noSideEffect, cdecl, importcpp: "Param", header: "Interface_ParamSet.hxx".}
proc changeParam*(this: var InterfaceParamSet; num: cint): var InterfaceFileParameter {.
    cdecl, importcpp: "ChangeParam", header: "Interface_ParamSet.hxx".}
proc setParam*(this: var InterfaceParamSet; num: cint; fp: InterfaceFileParameter) {.
    cdecl, importcpp: "SetParam", header: "Interface_ParamSet.hxx".}
proc params*(this: InterfaceParamSet; num: cint; nb: cint): Handle[InterfaceParamList] {.
    noSideEffect, cdecl, importcpp: "Params", header: "Interface_ParamSet.hxx".}
proc destroy*(this: var InterfaceParamSet) {.cdecl, importcpp: "Destroy",
    header: "Interface_ParamSet.hxx".}
proc destroyInterfaceParamSet*(this: var InterfaceParamSet) {.cdecl,
    importcpp: "#.~Interface_ParamSet()", header: "Interface_ParamSet.hxx".}



