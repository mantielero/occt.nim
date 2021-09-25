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
                   bycopy.} = object ## ! Empty constructor
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


proc constructBOPAlgoOptions*(): BOPAlgoOptions {.constructor,
    importcpp: "BOPAlgo_Options(@)", header: "BOPAlgo_Options.hxx".}
proc constructBOPAlgoOptions*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoOptions {.
    constructor, importcpp: "BOPAlgo_Options(@)", header: "BOPAlgo_Options.hxx".}
proc destroyBOPAlgoOptions*(this: var BOPAlgoOptions) {.
    importcpp: "#.~BOPAlgo_Options()", header: "BOPAlgo_Options.hxx".}
proc allocator*(this: BOPAlgoOptions): Handle[NCollectionBaseAllocator] {.
    noSideEffect, importcpp: "Allocator", header: "BOPAlgo_Options.hxx".}
proc clear*(this: var BOPAlgoOptions) {.importcpp: "Clear",
                                    header: "BOPAlgo_Options.hxx".}
proc addError*(this: var BOPAlgoOptions; theAlert: Handle[MessageAlert]) {.
    importcpp: "AddError", header: "BOPAlgo_Options.hxx".}
proc addWarning*(this: var BOPAlgoOptions; theAlert: Handle[MessageAlert]) {.
    importcpp: "AddWarning", header: "BOPAlgo_Options.hxx".}
proc hasErrors*(this: BOPAlgoOptions): bool {.noSideEffect, importcpp: "HasErrors",
    header: "BOPAlgo_Options.hxx".}
proc hasError*(this: BOPAlgoOptions; theType: Handle[StandardType]): bool {.
    noSideEffect, importcpp: "HasError", header: "BOPAlgo_Options.hxx".}
proc hasWarnings*(this: BOPAlgoOptions): bool {.noSideEffect,
    importcpp: "HasWarnings", header: "BOPAlgo_Options.hxx".}
proc hasWarning*(this: BOPAlgoOptions; theType: Handle[StandardType]): bool {.
    noSideEffect, importcpp: "HasWarning", header: "BOPAlgo_Options.hxx".}
proc getReport*(this: BOPAlgoOptions): Handle[MessageReport] {.noSideEffect,
    importcpp: "GetReport", header: "BOPAlgo_Options.hxx".}
proc dumpErrors*(this: BOPAlgoOptions; theOS: var StandardOStream) {.noSideEffect,
    importcpp: "DumpErrors", header: "BOPAlgo_Options.hxx".}
proc dumpWarnings*(this: BOPAlgoOptions; theOS: var StandardOStream) {.noSideEffect,
    importcpp: "DumpWarnings", header: "BOPAlgo_Options.hxx".}
proc clearWarnings*(this: var BOPAlgoOptions) {.importcpp: "ClearWarnings",
    header: "BOPAlgo_Options.hxx".}
proc getParallelMode*(): bool {.importcpp: "BOPAlgo_Options::GetParallelMode(@)",
                             header: "BOPAlgo_Options.hxx".}
proc setParallelMode*(theNewMode: bool) {.importcpp: "BOPAlgo_Options::SetParallelMode(@)",
                                       header: "BOPAlgo_Options.hxx".}
proc setRunParallel*(this: var BOPAlgoOptions; theFlag: bool) {.
    importcpp: "SetRunParallel", header: "BOPAlgo_Options.hxx".}
proc runParallel*(this: BOPAlgoOptions): bool {.noSideEffect,
    importcpp: "RunParallel", header: "BOPAlgo_Options.hxx".}
proc setFuzzyValue*(this: var BOPAlgoOptions; theFuzz: float) {.
    importcpp: "SetFuzzyValue", header: "BOPAlgo_Options.hxx".}
proc fuzzyValue*(this: BOPAlgoOptions): float {.noSideEffect,
    importcpp: "FuzzyValue", header: "BOPAlgo_Options.hxx".}
proc setProgressIndicator*(this: var BOPAlgoOptions;
                          theProgress: MessageProgressScope) {.
    importcpp: "SetProgressIndicator", header: "BOPAlgo_Options.hxx".}
proc setUseOBB*(this: var BOPAlgoOptions; theUseOBB: bool) {.importcpp: "SetUseOBB",
    header: "BOPAlgo_Options.hxx".}
proc useOBB*(this: BOPAlgoOptions): bool {.noSideEffect, importcpp: "UseOBB",
                                       header: "BOPAlgo_Options.hxx".}
