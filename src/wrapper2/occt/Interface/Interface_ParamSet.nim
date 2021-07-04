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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Standard/Standard_PCharacter, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  Interface_ParamType

discard "forward decl of Interface_ParamList"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_FileParameter"
discard "forward decl of Interface_ParamSet"
discard "forward decl of Interface_ParamSet"
type
  Handle_Interface_ParamSet* = handle[Interface_ParamSet]

## ! Defines an ordered set of FileParameters, in a way to be
## ! efficient as in memory requirement or in speed

type
  Interface_ParamSet* {.importcpp: "Interface_ParamSet",
                       header: "Interface_ParamSet.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructInterface_ParamSet*(nres: Standard_Integer; nst: Standard_Integer = 1): Interface_ParamSet {.
    constructor, importcpp: "Interface_ParamSet(@)",
    header: "Interface_ParamSet.hxx".}
proc Append*(this: var Interface_ParamSet; val: Standard_CString;
            lnval: Standard_Integer; typ: Interface_ParamType;
            nument: Standard_Integer): Standard_Integer {.importcpp: "Append",
    header: "Interface_ParamSet.hxx".}
proc Append*(this: var Interface_ParamSet; FP: Interface_FileParameter): Standard_Integer {.
    importcpp: "Append", header: "Interface_ParamSet.hxx".}
proc NbParams*(this: Interface_ParamSet): Standard_Integer {.noSideEffect,
    importcpp: "NbParams", header: "Interface_ParamSet.hxx".}
proc Param*(this: Interface_ParamSet; num: Standard_Integer): Interface_FileParameter {.
    noSideEffect, importcpp: "Param", header: "Interface_ParamSet.hxx".}
proc ChangeParam*(this: var Interface_ParamSet; num: Standard_Integer): var Interface_FileParameter {.
    importcpp: "ChangeParam", header: "Interface_ParamSet.hxx".}
proc SetParam*(this: var Interface_ParamSet; num: Standard_Integer;
              FP: Interface_FileParameter) {.importcpp: "SetParam",
    header: "Interface_ParamSet.hxx".}
proc Params*(this: Interface_ParamSet; num: Standard_Integer; nb: Standard_Integer): handle[
    Interface_ParamList] {.noSideEffect, importcpp: "Params",
                          header: "Interface_ParamSet.hxx".}
proc Destroy*(this: var Interface_ParamSet) {.importcpp: "Destroy",
    header: "Interface_ParamSet.hxx".}
proc destroyInterface_ParamSet*(this: var Interface_ParamSet) {.
    importcpp: "#.~Interface_ParamSet()", header: "Interface_ParamSet.hxx".}
type
  Interface_ParamSetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_ParamSet::get_type_name(@)",
                              header: "Interface_ParamSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_ParamSet::get_type_descriptor(@)",
    header: "Interface_ParamSet.hxx".}
proc DynamicType*(this: Interface_ParamSet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_ParamSet.hxx".}