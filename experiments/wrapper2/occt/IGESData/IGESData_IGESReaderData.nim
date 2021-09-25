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

discard "forward decl of Interface_ParamSet"
discard "forward decl of Interface_Check"
discard "forward decl of IGESData_GlobalSection"
discard "forward decl of IGESData_DirPart"
discard "forward decl of IGESData_IGESType"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_IGESReaderData"
type
  HandleIGESDataIGESReaderData* = Handle[IGESDataIGESReaderData]

## ! specific FileReaderData for IGES
## ! contains header as GlobalSection, and for each Entity, its
## ! directory part as DirPart, list of Parameters as ParamSet
## ! Each Item has a DirPart, plus classically a ParamSet and the
## ! correspondant recognized Entity (inherited from FileReaderData)
## ! Parameters are accessed through specific objects, ParamReaders

type
  IGESDataIGESReaderData* {.importcpp: "IGESData_IGESReaderData",
                           header: "IGESData_IGESReaderData.hxx", bycopy.} = object of InterfaceFileReaderData ##
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


proc constructIGESDataIGESReaderData*(nbe: int; nbp: int): IGESDataIGESReaderData {.
    constructor, importcpp: "IGESData_IGESReaderData(@)",
    header: "IGESData_IGESReaderData.hxx".}
proc addStartLine*(this: var IGESDataIGESReaderData; aval: StandardCString) {.
    importcpp: "AddStartLine", header: "IGESData_IGESReaderData.hxx".}
proc startSection*(this: IGESDataIGESReaderData): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, importcpp: "StartSection",
                                     header: "IGESData_IGESReaderData.hxx".}
proc addGlobal*(this: var IGESDataIGESReaderData; atype: InterfaceParamType;
               aval: StandardCString) {.importcpp: "AddGlobal",
                                      header: "IGESData_IGESReaderData.hxx".}
proc setGlobalSection*(this: var IGESDataIGESReaderData) {.
    importcpp: "SetGlobalSection", header: "IGESData_IGESReaderData.hxx".}
proc globalSection*(this: IGESDataIGESReaderData): IGESDataGlobalSection {.
    noSideEffect, importcpp: "GlobalSection", header: "IGESData_IGESReaderData.hxx".}
proc setDirPart*(this: var IGESDataIGESReaderData; num: int; i1: int; i2: int; i3: int;
                i4: int; i5: int; i6: int; i7: int; i8: int; i9: int; i10: int; i11: int;
                i12: int; i13: int; i14: int; i15: int; i16: int; i17: int;
                res1: StandardCString; res2: StandardCString;
                label: StandardCString; subs: StandardCString) {.
    importcpp: "SetDirPart", header: "IGESData_IGESReaderData.hxx".}
proc dirPart*(this: IGESDataIGESReaderData; num: int): IGESDataDirPart {.noSideEffect,
    importcpp: "DirPart", header: "IGESData_IGESReaderData.hxx".}
proc dirValues*(this: IGESDataIGESReaderData; num: int; i1: var int; i2: var int;
               i3: var int; i4: var int; i5: var int; i6: var int; i7: var int; i8: var int;
               i9: var int; i10: var int; i11: var int; i12: var int; i13: var int;
               i14: var int; i15: var int; i16: var int; i17: var int;
               res1: var StandardCString; res2: var StandardCString;
               label: var StandardCString; subs: var StandardCString) {.noSideEffect,
    importcpp: "DirValues", header: "IGESData_IGESReaderData.hxx".}
proc dirType*(this: IGESDataIGESReaderData; num: int): IGESDataIGESType {.
    noSideEffect, importcpp: "DirType", header: "IGESData_IGESReaderData.hxx".}
proc nbEntities*(this: IGESDataIGESReaderData): int {.noSideEffect,
    importcpp: "NbEntities", header: "IGESData_IGESReaderData.hxx".}
proc findNextRecord*(this: IGESDataIGESReaderData; num: int): int {.noSideEffect,
    importcpp: "FindNextRecord", header: "IGESData_IGESReaderData.hxx".}
proc setEntityNumbers*(this: var IGESDataIGESReaderData) {.
    importcpp: "SetEntityNumbers", header: "IGESData_IGESReaderData.hxx".}
proc globalCheck*(this: IGESDataIGESReaderData): Handle[InterfaceCheck] {.
    noSideEffect, importcpp: "GlobalCheck", header: "IGESData_IGESReaderData.hxx".}
proc setDefaultLineWeight*(this: var IGESDataIGESReaderData; defw: float) {.
    importcpp: "SetDefaultLineWeight", header: "IGESData_IGESReaderData.hxx".}
proc defaultLineWeight*(this: IGESDataIGESReaderData): float {.noSideEffect,
    importcpp: "DefaultLineWeight", header: "IGESData_IGESReaderData.hxx".}
type
  IGESDataIGESReaderDatabaseType* = InterfaceFileReaderData

proc getTypeName*(): cstring {.importcpp: "IGESData_IGESReaderData::get_type_name(@)",
                            header: "IGESData_IGESReaderData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_IGESReaderData::get_type_descriptor(@)",
    header: "IGESData_IGESReaderData.hxx".}
proc dynamicType*(this: IGESDataIGESReaderData): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_IGESReaderData.hxx".}
