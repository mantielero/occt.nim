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


proc constructIGESDataIGESReaderData*(nbe: StandardInteger; nbp: StandardInteger): IGESDataIGESReaderData {.
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
proc setDirPart*(this: var IGESDataIGESReaderData; num: StandardInteger;
                i1: StandardInteger; i2: StandardInteger; i3: StandardInteger;
                i4: StandardInteger; i5: StandardInteger; i6: StandardInteger;
                i7: StandardInteger; i8: StandardInteger; i9: StandardInteger;
                i10: StandardInteger; i11: StandardInteger; i12: StandardInteger;
                i13: StandardInteger; i14: StandardInteger; i15: StandardInteger;
                i16: StandardInteger; i17: StandardInteger; res1: StandardCString;
                res2: StandardCString; label: StandardCString; subs: StandardCString) {.
    importcpp: "SetDirPart", header: "IGESData_IGESReaderData.hxx".}
proc dirPart*(this: IGESDataIGESReaderData; num: StandardInteger): IGESDataDirPart {.
    noSideEffect, importcpp: "DirPart", header: "IGESData_IGESReaderData.hxx".}
proc dirValues*(this: IGESDataIGESReaderData; num: StandardInteger;
               i1: var StandardInteger; i2: var StandardInteger;
               i3: var StandardInteger; i4: var StandardInteger;
               i5: var StandardInteger; i6: var StandardInteger;
               i7: var StandardInteger; i8: var StandardInteger;
               i9: var StandardInteger; i10: var StandardInteger;
               i11: var StandardInteger; i12: var StandardInteger;
               i13: var StandardInteger; i14: var StandardInteger;
               i15: var StandardInteger; i16: var StandardInteger;
               i17: var StandardInteger; res1: var StandardCString;
               res2: var StandardCString; label: var StandardCString;
               subs: var StandardCString) {.noSideEffect, importcpp: "DirValues",
    header: "IGESData_IGESReaderData.hxx".}
proc dirType*(this: IGESDataIGESReaderData; num: StandardInteger): IGESDataIGESType {.
    noSideEffect, importcpp: "DirType", header: "IGESData_IGESReaderData.hxx".}
proc nbEntities*(this: IGESDataIGESReaderData): StandardInteger {.noSideEffect,
    importcpp: "NbEntities", header: "IGESData_IGESReaderData.hxx".}
proc findNextRecord*(this: IGESDataIGESReaderData; num: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "FindNextRecord",
    header: "IGESData_IGESReaderData.hxx".}
proc setEntityNumbers*(this: var IGESDataIGESReaderData) {.
    importcpp: "SetEntityNumbers", header: "IGESData_IGESReaderData.hxx".}
proc globalCheck*(this: IGESDataIGESReaderData): Handle[InterfaceCheck] {.
    noSideEffect, importcpp: "GlobalCheck", header: "IGESData_IGESReaderData.hxx".}
proc setDefaultLineWeight*(this: var IGESDataIGESReaderData; defw: StandardReal) {.
    importcpp: "SetDefaultLineWeight", header: "IGESData_IGESReaderData.hxx".}
proc defaultLineWeight*(this: IGESDataIGESReaderData): StandardReal {.noSideEffect,
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

