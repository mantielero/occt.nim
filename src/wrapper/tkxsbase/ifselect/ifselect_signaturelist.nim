import ../../tkernel/standard/standard_types
import ifselect_types
import ../../tkernel/tcolstd/tcolstd_types





##  Created on: 1994-10-27
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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





proc newIFSelectSignatureList*(withlist: bool = false): IFSelectSignatureList {.cdecl,
    constructor, importcpp: "IFSelect_SignatureList(@)", header: "IFSelect_SignatureList.hxx".}
proc setList*(this: var IFSelectSignatureList; withlist: bool) {.cdecl,
    importcpp: "SetList", header: "IFSelect_SignatureList.hxx".}
proc modeSignOnly*(this: var IFSelectSignatureList): var bool {.cdecl,
    importcpp: "ModeSignOnly", header: "IFSelect_SignatureList.hxx".}
proc clear*(this: var IFSelectSignatureList) {.cdecl, importcpp: "Clear",
    header: "IFSelect_SignatureList.hxx".}
proc add*(this: var IFSelectSignatureList; ent: Handle[StandardTransient];
         sign: cstring) {.cdecl, importcpp: "Add", header: "IFSelect_SignatureList.hxx".}
proc lastValue*(this: IFSelectSignatureList): cstring {.noSideEffect, cdecl,
    importcpp: "LastValue", header: "IFSelect_SignatureList.hxx".}
#proc init*(this: var IFSelectSignatureList; name: cstring;
#          count: NCollectionIndexedDataMap[TCollectionAsciiString, cint]; list: NCollectionIndexedDataMap[
#    TCollectionAsciiString, Handle[StandardTransient]]; nbnuls: cint) {.cdecl,
#    importcpp: "Init", header: "IFSelect_SignatureList.hxx".}
proc list*(this: IFSelectSignatureList; root: cstring = ""): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, cdecl, importcpp: "List",
                                     header: "IFSelect_SignatureList.hxx".}
proc hasEntities*(this: IFSelectSignatureList): bool {.noSideEffect, cdecl,
    importcpp: "HasEntities", header: "IFSelect_SignatureList.hxx".}
proc nbNulls*(this: IFSelectSignatureList): cint {.noSideEffect, cdecl,
    importcpp: "NbNulls", header: "IFSelect_SignatureList.hxx".}
proc nbTimes*(this: IFSelectSignatureList; sign: cstring): cint {.noSideEffect, cdecl,
    importcpp: "NbTimes", header: "IFSelect_SignatureList.hxx".}
proc entities*(this: IFSelectSignatureList; sign: cstring): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl, importcpp: "Entities",
                                  header: "IFSelect_SignatureList.hxx".}
proc setName*(this: var IFSelectSignatureList; name: cstring) {.cdecl,
    importcpp: "SetName", header: "IFSelect_SignatureList.hxx".}
proc name*(this: IFSelectSignatureList): cstring {.noSideEffect, cdecl,
    importcpp: "Name", header: "IFSelect_SignatureList.hxx".}
proc printCount*(this: IFSelectSignatureList; s: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "PrintCount", header: "IFSelect_SignatureList.hxx".}
proc printList*(this: IFSelectSignatureList; s: var StandardOStream;
               model: Handle[InterfaceInterfaceModel];
               `mod`: IFSelectPrintCount = iFSelectListByItem) {.noSideEffect, cdecl,
    importcpp: "PrintList", header: "IFSelect_SignatureList.hxx".}
proc printSum*(this: IFSelectSignatureList; s: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "PrintSum", header: "IFSelect_SignatureList.hxx".}


