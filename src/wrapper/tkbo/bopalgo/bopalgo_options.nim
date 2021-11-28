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
type
  BOPAlgoOptions* {.importcpp: "BOPAlgo_Options", header: "BOPAlgo_Options.hxx",
                   bycopy.} = object of RootObj ## ! Empty constructor
                                  ## !@name Error reporting mechanism
                                  ## ! Adds the alert as error (fail)
                                  ## !@name Parallel processing mode
                                  ## ! Gets the global parallel mode
                                  ## !@name Fuzzy tolerance
                                  ## ! Sets the additional tolerance
                                  ## !@name Progress indicator
                                  ## ! Set the Progress Indicator object.
                                  ## !@name Usage of Oriented Bounding boxes
                                  ## ! Enables/Disables the usage of OBB
                                  ## ! Breaks the execution if the break signal
                                  ## ! is indicated by myProgressIndicator.


proc newBOPAlgoOptions*(): BOPAlgoOptions {.cdecl, constructor,
    importcpp: "BOPAlgo_Options(@)", dynlib: tkbo.}
proc newBOPAlgoOptions*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoOptions {.
    cdecl, constructor, importcpp: "BOPAlgo_Options(@)", dynlib: tkbo.}
proc destroyBOPAlgoOptions*(this: var BOPAlgoOptions) {.cdecl,
    importcpp: "#.~BOPAlgo_Options()", dynlib: tkbo.}
proc allocator*(this: BOPAlgoOptions): Handle[NCollectionBaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", dynlib: tkbo.}
proc clear*(this: var BOPAlgoOptions) {.cdecl, importcpp: "Clear", dynlib: tkbo.}
proc addError*(this: var BOPAlgoOptions; theAlert: Handle[MessageAlert]) {.cdecl,
    importcpp: "AddError", dynlib: tkbo.}
proc addWarning*(this: var BOPAlgoOptions; theAlert: Handle[MessageAlert]) {.cdecl,
    importcpp: "AddWarning", dynlib: tkbo.}
proc hasErrors*(this: BOPAlgoOptions): bool {.noSideEffect, cdecl,
    importcpp: "HasErrors", dynlib: tkbo.}
proc hasError*(this: BOPAlgoOptions; theType: Handle[StandardType]): bool {.
    noSideEffect, cdecl, importcpp: "HasError", dynlib: tkbo.}
proc hasWarnings*(this: BOPAlgoOptions): bool {.noSideEffect, cdecl,
    importcpp: "HasWarnings", dynlib: tkbo.}
proc hasWarning*(this: BOPAlgoOptions; theType: Handle[StandardType]): bool {.
    noSideEffect, cdecl, importcpp: "HasWarning", dynlib: tkbo.}
proc getReport*(this: BOPAlgoOptions): Handle[MessageReport] {.noSideEffect, cdecl,
    importcpp: "GetReport", dynlib: tkbo.}
proc dumpErrors*(this: BOPAlgoOptions; theOS: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "DumpErrors", dynlib: tkbo.}
proc dumpWarnings*(this: BOPAlgoOptions; theOS: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "DumpWarnings", dynlib: tkbo.}
proc clearWarnings*(this: var BOPAlgoOptions) {.cdecl, importcpp: "ClearWarnings",
    dynlib: tkbo.}
proc getParallelMode*(): bool {.cdecl,
                             importcpp: "BOPAlgo_Options::GetParallelMode(@)",
                             dynlib: tkbo.}
proc setParallelMode*(theNewMode: bool) {.cdecl, importcpp: "BOPAlgo_Options::SetParallelMode(@)",
                                       dynlib: tkbo.}
proc setRunParallel*(this: var BOPAlgoOptions; theFlag: bool) {.cdecl,
    importcpp: "SetRunParallel", dynlib: tkbo.}
proc runParallel*(this: BOPAlgoOptions): bool {.noSideEffect, cdecl,
    importcpp: "RunParallel", dynlib: tkbo.}
proc setFuzzyValue*(this: var BOPAlgoOptions; theFuzz: cfloat) {.cdecl,
    importcpp: "SetFuzzyValue", dynlib: tkbo.}
proc fuzzyValue*(this: BOPAlgoOptions): cfloat {.noSideEffect, cdecl,
    importcpp: "FuzzyValue", dynlib: tkbo.}
proc setProgressIndicator*(this: var BOPAlgoOptions;
                          theProgress: MessageProgressScope) {.cdecl,
    importcpp: "SetProgressIndicator", dynlib: tkbo.}
proc setUseOBB*(this: var BOPAlgoOptions; theUseOBB: bool) {.cdecl,
    importcpp: "SetUseOBB", dynlib: tkbo.}
proc useOBB*(this: BOPAlgoOptions): bool {.noSideEffect, cdecl, importcpp: "UseOBB",
                                       dynlib: tkbo.}