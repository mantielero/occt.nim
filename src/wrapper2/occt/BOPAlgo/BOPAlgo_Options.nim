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

import
  ../Message/Message_Report, ../Standard/Standard_OStream,
  ../NCollection/NCollection_BaseAllocator

discard "forward decl of Message_ProgressScope"
type
  BOPAlgo_Options* {.importcpp: "BOPAlgo_Options", header: "BOPAlgo_Options.hxx",
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


proc constructBOPAlgo_Options*(): BOPAlgo_Options {.constructor,
    importcpp: "BOPAlgo_Options(@)", header: "BOPAlgo_Options.hxx".}
proc constructBOPAlgo_Options*(theAllocator: handle[NCollection_BaseAllocator]): BOPAlgo_Options {.
    constructor, importcpp: "BOPAlgo_Options(@)", header: "BOPAlgo_Options.hxx".}
proc destroyBOPAlgo_Options*(this: var BOPAlgo_Options) {.
    importcpp: "#.~BOPAlgo_Options()", header: "BOPAlgo_Options.hxx".}
proc Allocator*(this: BOPAlgo_Options): handle[NCollection_BaseAllocator] {.
    noSideEffect, importcpp: "Allocator", header: "BOPAlgo_Options.hxx".}
proc Clear*(this: var BOPAlgo_Options) {.importcpp: "Clear",
                                     header: "BOPAlgo_Options.hxx".}
proc AddError*(this: var BOPAlgo_Options; theAlert: handle[Message_Alert]) {.
    importcpp: "AddError", header: "BOPAlgo_Options.hxx".}
proc AddWarning*(this: var BOPAlgo_Options; theAlert: handle[Message_Alert]) {.
    importcpp: "AddWarning", header: "BOPAlgo_Options.hxx".}
proc HasErrors*(this: BOPAlgo_Options): Standard_Boolean {.noSideEffect,
    importcpp: "HasErrors", header: "BOPAlgo_Options.hxx".}
proc HasError*(this: BOPAlgo_Options; theType: handle[Standard_Type]): Standard_Boolean {.
    noSideEffect, importcpp: "HasError", header: "BOPAlgo_Options.hxx".}
proc HasWarnings*(this: BOPAlgo_Options): Standard_Boolean {.noSideEffect,
    importcpp: "HasWarnings", header: "BOPAlgo_Options.hxx".}
proc HasWarning*(this: BOPAlgo_Options; theType: handle[Standard_Type]): Standard_Boolean {.
    noSideEffect, importcpp: "HasWarning", header: "BOPAlgo_Options.hxx".}
proc GetReport*(this: BOPAlgo_Options): handle[Message_Report] {.noSideEffect,
    importcpp: "GetReport", header: "BOPAlgo_Options.hxx".}
proc DumpErrors*(this: BOPAlgo_Options; theOS: var Standard_OStream) {.noSideEffect,
    importcpp: "DumpErrors", header: "BOPAlgo_Options.hxx".}
proc DumpWarnings*(this: BOPAlgo_Options; theOS: var Standard_OStream) {.noSideEffect,
    importcpp: "DumpWarnings", header: "BOPAlgo_Options.hxx".}
proc ClearWarnings*(this: var BOPAlgo_Options) {.importcpp: "ClearWarnings",
    header: "BOPAlgo_Options.hxx".}
proc GetParallelMode*(): Standard_Boolean {.
    importcpp: "BOPAlgo_Options::GetParallelMode(@)",
    header: "BOPAlgo_Options.hxx".}
proc SetParallelMode*(theNewMode: Standard_Boolean) {.
    importcpp: "BOPAlgo_Options::SetParallelMode(@)",
    header: "BOPAlgo_Options.hxx".}
proc SetRunParallel*(this: var BOPAlgo_Options; theFlag: Standard_Boolean) {.
    importcpp: "SetRunParallel", header: "BOPAlgo_Options.hxx".}
proc RunParallel*(this: BOPAlgo_Options): Standard_Boolean {.noSideEffect,
    importcpp: "RunParallel", header: "BOPAlgo_Options.hxx".}
proc SetFuzzyValue*(this: var BOPAlgo_Options; theFuzz: Standard_Real) {.
    importcpp: "SetFuzzyValue", header: "BOPAlgo_Options.hxx".}
proc FuzzyValue*(this: BOPAlgo_Options): Standard_Real {.noSideEffect,
    importcpp: "FuzzyValue", header: "BOPAlgo_Options.hxx".}
proc SetProgressIndicator*(this: var BOPAlgo_Options;
                          theProgress: Message_ProgressScope) {.
    importcpp: "SetProgressIndicator", header: "BOPAlgo_Options.hxx".}
proc SetUseOBB*(this: var BOPAlgo_Options; theUseOBB: Standard_Boolean) {.
    importcpp: "SetUseOBB", header: "BOPAlgo_Options.hxx".}
proc UseOBB*(this: BOPAlgo_Options): Standard_Boolean {.noSideEffect,
    importcpp: "UseOBB", header: "BOPAlgo_Options.hxx".}