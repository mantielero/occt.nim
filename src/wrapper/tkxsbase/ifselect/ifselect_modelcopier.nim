import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types
import ../../tkernel/tcolstd/tcolstd_types



##  Created on: 1993-08-26
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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





proc newIFSelectModelCopier*(): IFSelectModelCopier {.cdecl, constructor,
    importcpp: "IFSelect_ModelCopier(@)", header: "IFSelect_ModelCopier.hxx".}
proc setShareOut*(this: var IFSelectModelCopier; sho: Handle[IFSelectShareOut]) {.
    cdecl, importcpp: "SetShareOut", header: "IFSelect_ModelCopier.hxx".}
proc clearResult*(this: var IFSelectModelCopier) {.cdecl, importcpp: "ClearResult",
    header: "IFSelect_ModelCopier.hxx".}
proc addFile*(this: var IFSelectModelCopier; filename: TCollectionAsciiString;
             content: Handle[InterfaceInterfaceModel]): bool {.cdecl,
    importcpp: "AddFile", header: "IFSelect_ModelCopier.hxx".}
proc nameFile*(this: var IFSelectModelCopier; num: cint;
              filename: TCollectionAsciiString): bool {.cdecl,
    importcpp: "NameFile", header: "IFSelect_ModelCopier.hxx".}
proc clearFile*(this: var IFSelectModelCopier; num: cint): bool {.cdecl,
    importcpp: "ClearFile", header: "IFSelect_ModelCopier.hxx".}
proc setAppliedModifiers*(this: var IFSelectModelCopier; num: cint;
                         applied: Handle[IFSelectAppliedModifiers]): bool {.cdecl,
    importcpp: "SetAppliedModifiers", header: "IFSelect_ModelCopier.hxx".}
proc clearAppliedModifiers*(this: var IFSelectModelCopier; num: cint): bool {.cdecl,
    importcpp: "ClearAppliedModifiers", header: "IFSelect_ModelCopier.hxx".}
proc copy*(this: var IFSelectModelCopier; eval: var IFSelectShareOutResult;
          wl: Handle[IFSelectWorkLibrary]; protocol: Handle[InterfaceProtocol]): InterfaceCheckIterator {.
    cdecl, importcpp: "Copy", header: "IFSelect_ModelCopier.hxx".}
proc sendCopied*(this: var IFSelectModelCopier; wl: Handle[IFSelectWorkLibrary];
                protocol: Handle[InterfaceProtocol]): InterfaceCheckIterator {.
    cdecl, importcpp: "SendCopied", header: "IFSelect_ModelCopier.hxx".}
proc send*(this: var IFSelectModelCopier; eval: var IFSelectShareOutResult;
          wl: Handle[IFSelectWorkLibrary]; protocol: Handle[InterfaceProtocol]): InterfaceCheckIterator {.
    cdecl, importcpp: "Send", header: "IFSelect_ModelCopier.hxx".}
proc sendAll*(this: var IFSelectModelCopier; filename: cstring; g: InterfaceGraph;
             wl: Handle[IFSelectWorkLibrary]; protocol: Handle[InterfaceProtocol]): InterfaceCheckIterator {.
    cdecl, importcpp: "SendAll", header: "IFSelect_ModelCopier.hxx".}
proc sendSelected*(this: var IFSelectModelCopier; filename: cstring;
                  g: InterfaceGraph; wl: Handle[IFSelectWorkLibrary];
                  protocol: Handle[InterfaceProtocol];
                  iter: InterfaceEntityIterator): InterfaceCheckIterator {.cdecl,
    importcpp: "SendSelected", header: "IFSelect_ModelCopier.hxx".}
proc copiedRemaining*(this: var IFSelectModelCopier; g: InterfaceGraph;
                     wl: Handle[IFSelectWorkLibrary]; tc: var InterfaceCopyTool;
                     newmod: var Handle[InterfaceInterfaceModel]) {.cdecl,
    importcpp: "CopiedRemaining", header: "IFSelect_ModelCopier.hxx".}
proc setRemaining*(this: IFSelectModelCopier; cg: var InterfaceGraph): bool {.
    noSideEffect, cdecl, importcpp: "SetRemaining", header: "IFSelect_ModelCopier.hxx".}
proc nbFiles*(this: IFSelectModelCopier): cint {.noSideEffect, cdecl,
    importcpp: "NbFiles", header: "IFSelect_ModelCopier.hxx".}
proc fileName*(this: IFSelectModelCopier; num: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "FileName", header: "IFSelect_ModelCopier.hxx".}
proc fileModel*(this: IFSelectModelCopier; num: cint): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "FileModel", header: "IFSelect_ModelCopier.hxx".}
proc appliedModifiers*(this: IFSelectModelCopier; num: cint): Handle[
    IFSelectAppliedModifiers] {.noSideEffect, cdecl, importcpp: "AppliedModifiers",
                               header: "IFSelect_ModelCopier.hxx".}
proc beginSentFiles*(this: var IFSelectModelCopier; sho: Handle[IFSelectShareOut];
                    record: bool) {.cdecl, importcpp: "BeginSentFiles",
                                  header: "IFSelect_ModelCopier.hxx".}
proc addSentFile*(this: var IFSelectModelCopier; filename: cstring) {.cdecl,
    importcpp: "AddSentFile", header: "IFSelect_ModelCopier.hxx".}
proc sentFiles*(this: IFSelectModelCopier): Handle[TColStdHSequenceOfHAsciiString] {.
    noSideEffect, cdecl, importcpp: "SentFiles", header: "IFSelect_ModelCopier.hxx".}

