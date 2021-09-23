##  Created on: 1992-06-22
##  Created by: Gilles DEBARBOUILLE
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Units_TokensSequence, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean

discard "forward decl of Units_Lexicon"
discard "forward decl of Units_Token"
type
  Units_Sentence* {.importcpp: "Units_Sentence", header: "Units_Sentence.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## and
                                                                                         ## returns
                                                                                         ## a
                                                                                         ## Sentence,
                                                                                         ## by
                                                                                         ## analyzing
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## string
                                                                                         ## <astring>
                                                                                         ## with
                                                                                         ## the
                                                                                         ## lexicon
                                                                                         ## <alexicon>.


proc constructUnits_Sentence*(alexicon: handle[Units_Lexicon];
                             astring: Standard_CString): Units_Sentence {.
    constructor, importcpp: "Units_Sentence(@)", header: "Units_Sentence.hxx".}
proc SetConstants*(this: var Units_Sentence) {.importcpp: "SetConstants",
    header: "Units_Sentence.hxx".}
proc Sequence*(this: Units_Sentence): handle[Units_TokensSequence] {.noSideEffect,
    importcpp: "Sequence", header: "Units_Sentence.hxx".}
proc Sequence*(this: var Units_Sentence;
              asequenceoftokens: handle[Units_TokensSequence]) {.
    importcpp: "Sequence", header: "Units_Sentence.hxx".}
proc Evaluate*(this: var Units_Sentence): handle[Units_Token] {.
    importcpp: "Evaluate", header: "Units_Sentence.hxx".}
proc IsDone*(this: Units_Sentence): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Units_Sentence.hxx".}
proc Dump*(this: Units_Sentence) {.noSideEffect, importcpp: "Dump",
                                header: "Units_Sentence.hxx".}