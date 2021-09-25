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

discard "forward decl of Interface_ParamList"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_FileParameter"
discard "forward decl of Interface_ParamSet"
discard "forward decl of Interface_ParamSet"
type
  HandleInterfaceParamSet* = Handle[InterfaceParamSet]

## ! Defines an ordered set of FileParameters, in a way to be
## ! efficient as in memory requirement or in speed

type
  InterfaceParamSet* {.importcpp: "Interface_ParamSet",
                      header: "Interface_ParamSet.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## ParamSet,
                                                                                        ## beginning
                                                                                        ## at
                                                                                        ## number
                                                                                        ## "nst"
                                                                                        ## and
                                                                                        ## of
                                                                                        ##
                                                                                        ## !
                                                                                        ## initial
                                                                                        ## reservation
                                                                                        ## "nres"
                                                                                        ## :
                                                                                        ## the
                                                                                        ## "nres"
                                                                                        ## first
                                                                                        ## parameters
                                                                                        ##
                                                                                        ## !
                                                                                        ## which
                                                                                        ## follow
                                                                                        ## "ndeb"
                                                                                        ## (included)
                                                                                        ## will
                                                                                        ## be
                                                                                        ## put
                                                                                        ## in
                                                                                        ## an
                                                                                        ## Array
                                                                                        ##
                                                                                        ## !
                                                                                        ## (a
                                                                                        ## ParamList).
                                                                                        ## The
                                                                                        ## remainders
                                                                                        ## are
                                                                                        ## set
                                                                                        ## in
                                                                                        ## Next(s)
                                                                                        ## ParamSet(s)


proc constructInterfaceParamSet*(nres: int; nst: int = 1): InterfaceParamSet {.
    constructor, importcpp: "Interface_ParamSet(@)",
    header: "Interface_ParamSet.hxx".}
proc append*(this: var InterfaceParamSet; val: StandardCString; lnval: int;
            typ: InterfaceParamType; nument: int): int {.importcpp: "Append",
    header: "Interface_ParamSet.hxx".}
proc append*(this: var InterfaceParamSet; fp: InterfaceFileParameter): int {.
    importcpp: "Append", header: "Interface_ParamSet.hxx".}
proc nbParams*(this: InterfaceParamSet): int {.noSideEffect, importcpp: "NbParams",
    header: "Interface_ParamSet.hxx".}
proc param*(this: InterfaceParamSet; num: int): InterfaceFileParameter {.noSideEffect,
    importcpp: "Param", header: "Interface_ParamSet.hxx".}
proc changeParam*(this: var InterfaceParamSet; num: int): var InterfaceFileParameter {.
    importcpp: "ChangeParam", header: "Interface_ParamSet.hxx".}
proc setParam*(this: var InterfaceParamSet; num: int; fp: InterfaceFileParameter) {.
    importcpp: "SetParam", header: "Interface_ParamSet.hxx".}
proc params*(this: InterfaceParamSet; num: int; nb: int): Handle[InterfaceParamList] {.
    noSideEffect, importcpp: "Params", header: "Interface_ParamSet.hxx".}
proc destroy*(this: var InterfaceParamSet) {.importcpp: "Destroy",
    header: "Interface_ParamSet.hxx".}
proc destroyInterfaceParamSet*(this: var InterfaceParamSet) {.
    importcpp: "#.~Interface_ParamSet()", header: "Interface_ParamSet.hxx".}
type
  InterfaceParamSetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_ParamSet::get_type_name(@)",
                            header: "Interface_ParamSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_ParamSet::get_type_descriptor(@)",
    header: "Interface_ParamSet.hxx".}
proc dynamicType*(this: InterfaceParamSet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_ParamSet.hxx".}
