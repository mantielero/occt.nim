##  Created on: 1992-04-06
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
  ../Standard/Standard, ../Standard/Standard_Type, IGESData_IGESType,
  ../TColStd/TColStd_HSequenceOfHAsciiString, IGESData_GlobalSection,
  IGESData_Array1OfDirPart, IGESData_ReadStage, ../Standard/Standard_Real,
  ../Interface/Interface_FileReaderData, ../Standard/Standard_Integer,
  ../Standard/Standard_CString, ../Interface/Interface_ParamType

discard "forward decl of Interface_ParamSet"
discard "forward decl of Interface_Check"
discard "forward decl of IGESData_GlobalSection"
discard "forward decl of IGESData_DirPart"
discard "forward decl of IGESData_IGESType"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_IGESReaderData"
type
  Handle_IGESData_IGESReaderData* = handle[IGESData_IGESReaderData]

## ! specific FileReaderData for IGES
## ! contains header as GlobalSection, and for each Entity, its
## ! directory part as DirPart, list of Parameters as ParamSet
## ! Each Item has a DirPart, plus classically a ParamSet and the
## ! correspondant recognized Entity (inherited from FileReaderData)
## ! Parameters are accessed through specific objects, ParamReaders

type
  IGESData_IGESReaderData* {.importcpp: "IGESData_IGESReaderData",
                            header: "IGESData_IGESReaderData.hxx", bycopy.} = object of Interface_FileReaderData ##
                                                                                                          ## !
                                                                                                          ## creates
                                                                                                          ## IGESReaderData
                                                                                                          ## correctly
                                                                                                          ## dimensionned
                                                                                                          ## (for
                                                                                                          ## arrays)
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## <nbe>
                                                                                                          ## count
                                                                                                          ## of
                                                                                                          ## entities,
                                                                                                          ## that
                                                                                                          ## is,
                                                                                                          ## half
                                                                                                          ## nb
                                                                                                          ## of
                                                                                                          ## directory
                                                                                                          ## lines
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## <nbp>
                                                                                                          ## :
                                                                                                          ## count
                                                                                                          ## of
                                                                                                          ## parameters


proc constructIGESData_IGESReaderData*(nbe: Standard_Integer; nbp: Standard_Integer): IGESData_IGESReaderData {.
    constructor, importcpp: "IGESData_IGESReaderData(@)",
    header: "IGESData_IGESReaderData.hxx".}
proc AddStartLine*(this: var IGESData_IGESReaderData; aval: Standard_CString) {.
    importcpp: "AddStartLine", header: "IGESData_IGESReaderData.hxx".}
proc StartSection*(this: IGESData_IGESReaderData): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "StartSection",
                                      header: "IGESData_IGESReaderData.hxx".}
proc AddGlobal*(this: var IGESData_IGESReaderData; atype: Interface_ParamType;
               aval: Standard_CString) {.importcpp: "AddGlobal",
                                       header: "IGESData_IGESReaderData.hxx".}
proc SetGlobalSection*(this: var IGESData_IGESReaderData) {.
    importcpp: "SetGlobalSection", header: "IGESData_IGESReaderData.hxx".}
proc GlobalSection*(this: IGESData_IGESReaderData): IGESData_GlobalSection {.
    noSideEffect, importcpp: "GlobalSection", header: "IGESData_IGESReaderData.hxx".}
proc SetDirPart*(this: var IGESData_IGESReaderData; num: Standard_Integer;
                i1: Standard_Integer; i2: Standard_Integer; i3: Standard_Integer;
                i4: Standard_Integer; i5: Standard_Integer; i6: Standard_Integer;
                i7: Standard_Integer; i8: Standard_Integer; i9: Standard_Integer;
                i10: Standard_Integer; i11: Standard_Integer; i12: Standard_Integer;
                i13: Standard_Integer; i14: Standard_Integer; i15: Standard_Integer;
                i16: Standard_Integer; i17: Standard_Integer;
                res1: Standard_CString; res2: Standard_CString;
                label: Standard_CString; subs: Standard_CString) {.
    importcpp: "SetDirPart", header: "IGESData_IGESReaderData.hxx".}
proc DirPart*(this: IGESData_IGESReaderData; num: Standard_Integer): IGESData_DirPart {.
    noSideEffect, importcpp: "DirPart", header: "IGESData_IGESReaderData.hxx".}
proc DirValues*(this: IGESData_IGESReaderData; num: Standard_Integer;
               i1: var Standard_Integer; i2: var Standard_Integer;
               i3: var Standard_Integer; i4: var Standard_Integer;
               i5: var Standard_Integer; i6: var Standard_Integer;
               i7: var Standard_Integer; i8: var Standard_Integer;
               i9: var Standard_Integer; i10: var Standard_Integer;
               i11: var Standard_Integer; i12: var Standard_Integer;
               i13: var Standard_Integer; i14: var Standard_Integer;
               i15: var Standard_Integer; i16: var Standard_Integer;
               i17: var Standard_Integer; res1: var Standard_CString;
               res2: var Standard_CString; label: var Standard_CString;
               subs: var Standard_CString) {.noSideEffect, importcpp: "DirValues",
    header: "IGESData_IGESReaderData.hxx".}
proc DirType*(this: IGESData_IGESReaderData; num: Standard_Integer): IGESData_IGESType {.
    noSideEffect, importcpp: "DirType", header: "IGESData_IGESReaderData.hxx".}
proc NbEntities*(this: IGESData_IGESReaderData): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "IGESData_IGESReaderData.hxx".}
proc FindNextRecord*(this: IGESData_IGESReaderData; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FindNextRecord",
    header: "IGESData_IGESReaderData.hxx".}
proc SetEntityNumbers*(this: var IGESData_IGESReaderData) {.
    importcpp: "SetEntityNumbers", header: "IGESData_IGESReaderData.hxx".}
proc GlobalCheck*(this: IGESData_IGESReaderData): handle[Interface_Check] {.
    noSideEffect, importcpp: "GlobalCheck", header: "IGESData_IGESReaderData.hxx".}
proc SetDefaultLineWeight*(this: var IGESData_IGESReaderData; defw: Standard_Real) {.
    importcpp: "SetDefaultLineWeight", header: "IGESData_IGESReaderData.hxx".}
proc DefaultLineWeight*(this: IGESData_IGESReaderData): Standard_Real {.
    noSideEffect, importcpp: "DefaultLineWeight",
    header: "IGESData_IGESReaderData.hxx".}
type
  IGESData_IGESReaderDatabase_type* = Interface_FileReaderData

proc get_type_name*(): cstring {.importcpp: "IGESData_IGESReaderData::get_type_name(@)",
                              header: "IGESData_IGESReaderData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_IGESReaderData::get_type_descriptor(@)",
    header: "IGESData_IGESReaderData.hxx".}
proc DynamicType*(this: IGESData_IGESReaderData): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_IGESReaderData.hxx".}