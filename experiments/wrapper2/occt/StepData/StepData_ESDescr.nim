##  Created on: 1997-05-09
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../TCollection/TCollection_AsciiString, ../TColStd/TColStd_HArray1OfTransient,
  StepData_EDescr, ../Standard/Standard_CString, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../NCollection/NCollection_DataMap,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Transient

discard "forward decl of StepData_PDescr"
discard "forward decl of StepData_Described"
discard "forward decl of StepData_ESDescr"
discard "forward decl of StepData_ESDescr"
type
  Handle_StepData_ESDescr* = handle[StepData_ESDescr]

## ! This class is intended to describe the authorized form for a
## ! Simple (not Plex) Entity, as a list of fields

type
  StepData_ESDescr* {.importcpp: "StepData_ESDescr",
                     header: "StepData_ESDescr.hxx", bycopy.} = object of StepData_EDescr ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## ESDescr
                                                                                   ## with
                                                                                   ## a
                                                                                   ## type
                                                                                   ## name


proc constructStepData_ESDescr*(name: Standard_CString): StepData_ESDescr {.
    constructor, importcpp: "StepData_ESDescr(@)", header: "StepData_ESDescr.hxx".}
proc SetNbFields*(this: var StepData_ESDescr; nb: Standard_Integer) {.
    importcpp: "SetNbFields", header: "StepData_ESDescr.hxx".}
proc SetField*(this: var StepData_ESDescr; num: Standard_Integer;
              name: Standard_CString; descr: handle[StepData_PDescr]) {.
    importcpp: "SetField", header: "StepData_ESDescr.hxx".}
proc SetBase*(this: var StepData_ESDescr; base: handle[StepData_ESDescr]) {.
    importcpp: "SetBase", header: "StepData_ESDescr.hxx".}
proc SetSuper*(this: var StepData_ESDescr; super: handle[StepData_ESDescr]) {.
    importcpp: "SetSuper", header: "StepData_ESDescr.hxx".}
proc TypeName*(this: StepData_ESDescr): Standard_CString {.noSideEffect,
    importcpp: "TypeName", header: "StepData_ESDescr.hxx".}
proc StepType*(this: StepData_ESDescr): TCollection_AsciiString {.noSideEffect,
    importcpp: "StepType", header: "StepData_ESDescr.hxx".}
proc Base*(this: StepData_ESDescr): handle[StepData_ESDescr] {.noSideEffect,
    importcpp: "Base", header: "StepData_ESDescr.hxx".}
proc Super*(this: StepData_ESDescr): handle[StepData_ESDescr] {.noSideEffect,
    importcpp: "Super", header: "StepData_ESDescr.hxx".}
proc IsSub*(this: StepData_ESDescr; other: handle[StepData_ESDescr]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSub", header: "StepData_ESDescr.hxx".}
proc NbFields*(this: StepData_ESDescr): Standard_Integer {.noSideEffect,
    importcpp: "NbFields", header: "StepData_ESDescr.hxx".}
proc Rank*(this: StepData_ESDescr; name: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "Rank", header: "StepData_ESDescr.hxx".}
proc Name*(this: StepData_ESDescr; num: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "Name", header: "StepData_ESDescr.hxx".}
proc Field*(this: StepData_ESDescr; num: Standard_Integer): handle[StepData_PDescr] {.
    noSideEffect, importcpp: "Field", header: "StepData_ESDescr.hxx".}
proc NamedField*(this: StepData_ESDescr; name: Standard_CString): handle[
    StepData_PDescr] {.noSideEffect, importcpp: "NamedField",
                      header: "StepData_ESDescr.hxx".}
proc Matches*(this: StepData_ESDescr; steptype: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_ESDescr.hxx".}
proc IsComplex*(this: StepData_ESDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_ESDescr.hxx".}
proc NewEntity*(this: StepData_ESDescr): handle[StepData_Described] {.noSideEffect,
    importcpp: "NewEntity", header: "StepData_ESDescr.hxx".}
type
  StepData_ESDescrbase_type* = StepData_EDescr

proc get_type_name*(): cstring {.importcpp: "StepData_ESDescr::get_type_name(@)",
                              header: "StepData_ESDescr.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_ESDescr::get_type_descriptor(@)",
    header: "StepData_ESDescr.hxx".}
proc DynamicType*(this: StepData_ESDescr): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_ESDescr.hxx".}