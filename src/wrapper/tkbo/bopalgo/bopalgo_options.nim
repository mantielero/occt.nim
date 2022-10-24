import bopalgo_types

##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of Message_ProgressScope"


proc newBOPAlgoOptions*(): BOPAlgoOptions {.cdecl, constructor,
    importcpp: "BOPAlgo_Options(@)", header: "BOPAlgo_Options.hxx".}
proc newBOPAlgoOptions*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoOptions {.
    cdecl, constructor, importcpp: "BOPAlgo_Options(@)", header: "BOPAlgo_Options.hxx".}
proc destroyBOPAlgoOptions*(this: var BOPAlgoOptions) {.cdecl,
    importcpp: "#.~BOPAlgo_Options()", header: "BOPAlgo_Options.hxx".}
proc allocator*(this: BOPAlgoOptions): Handle[NCollectionBaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", header: "BOPAlgo_Options.hxx".}
proc clear*(this: var BOPAlgoOptions) {.cdecl, importcpp: "Clear", header: "BOPAlgo_Options.hxx".}
proc addError*(this: var BOPAlgoOptions; theAlert: Handle[MessageAlert]) {.cdecl,
    importcpp: "AddError", header: "BOPAlgo_Options.hxx".}
proc addWarning*(this: var BOPAlgoOptions; theAlert: Handle[MessageAlert]) {.cdecl,
    importcpp: "AddWarning", header: "BOPAlgo_Options.hxx".}
proc hasErrors*(this: BOPAlgoOptions): bool {.noSideEffect, cdecl,
    importcpp: "HasErrors", header: "BOPAlgo_Options.hxx".}
proc hasError*(this: BOPAlgoOptions; theType: Handle[StandardType]): bool {.
    noSideEffect, cdecl, importcpp: "HasError", header: "BOPAlgo_Options.hxx".}
proc hasWarnings*(this: BOPAlgoOptions): bool {.noSideEffect, cdecl,
    importcpp: "HasWarnings", header: "BOPAlgo_Options.hxx".}
proc hasWarning*(this: BOPAlgoOptions; theType: Handle[StandardType]): bool {.
    noSideEffect, cdecl, importcpp: "HasWarning", header: "BOPAlgo_Options.hxx".}
proc getReport*(this: BOPAlgoOptions): Handle[MessageReport] {.noSideEffect, cdecl,
    importcpp: "GetReport", header: "BOPAlgo_Options.hxx".}
proc dumpErrors*(this: BOPAlgoOptions; theOS: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "DumpErrors", header: "BOPAlgo_Options.hxx".}
proc dumpWarnings*(this: BOPAlgoOptions; theOS: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "DumpWarnings", header: "BOPAlgo_Options.hxx".}
proc clearWarnings*(this: var BOPAlgoOptions) {.cdecl, importcpp: "ClearWarnings",
    header: "BOPAlgo_Options.hxx".}
proc getParallelMode*(): bool {.cdecl,
                             importcpp: "BOPAlgo_Options::GetParallelMode(@)",
                             header: "BOPAlgo_Options.hxx".}
proc setParallelMode*(theNewMode: bool) {.cdecl, importcpp: "BOPAlgo_Options::SetParallelMode(@)",
                                       header: "BOPAlgo_Options.hxx".}
proc setRunParallel*(this: var BOPAlgoOptions; theFlag: bool) {.cdecl,
    importcpp: "SetRunParallel", header: "BOPAlgo_Options.hxx".}
proc runParallel*(this: BOPAlgoOptions): bool {.noSideEffect, cdecl,
    importcpp: "RunParallel", header: "BOPAlgo_Options.hxx".}
proc setFuzzyValue*(this: var BOPAlgoOptions; theFuzz: cfloat) {.cdecl,
    importcpp: "SetFuzzyValue", header: "BOPAlgo_Options.hxx".}
proc fuzzyValue*(this: BOPAlgoOptions): cfloat {.noSideEffect, cdecl,
    importcpp: "FuzzyValue", header: "BOPAlgo_Options.hxx".}
proc setProgressIndicator*(this: var BOPAlgoOptions;
                          theProgress: MessageProgressScope) {.cdecl,
    importcpp: "SetProgressIndicator", header: "BOPAlgo_Options.hxx".}
proc setUseOBB*(this: var BOPAlgoOptions; theUseOBB: bool) {.cdecl,
    importcpp: "SetUseOBB", header: "BOPAlgo_Options.hxx".}
proc useOBB*(this: BOPAlgoOptions): bool {.noSideEffect, cdecl, importcpp: "UseOBB",
                                       header: "BOPAlgo_Options.hxx".}
