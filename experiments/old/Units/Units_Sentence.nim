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

discard "forward decl of Units_Lexicon"
discard "forward decl of Units_Token"
type
  UnitsSentence* {.importcpp: "Units_Sentence", header: "Units_Sentence.hxx", bycopy.} = object ##
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


proc constructUnitsSentence*(alexicon: Handle[UnitsLexicon];
                            astring: StandardCString): UnitsSentence {.constructor,
    importcpp: "Units_Sentence(@)", header: "Units_Sentence.hxx".}
proc setConstants*(this: var UnitsSentence) {.importcpp: "SetConstants",
    header: "Units_Sentence.hxx".}
proc sequence*(this: UnitsSentence): Handle[UnitsTokensSequence] {.noSideEffect,
    importcpp: "Sequence", header: "Units_Sentence.hxx".}
proc sequence*(this: var UnitsSentence;
              asequenceoftokens: Handle[UnitsTokensSequence]) {.
    importcpp: "Sequence", header: "Units_Sentence.hxx".}
proc evaluate*(this: var UnitsSentence): Handle[UnitsToken] {.importcpp: "Evaluate",
    header: "Units_Sentence.hxx".}
proc isDone*(this: UnitsSentence): bool {.noSideEffect, importcpp: "IsDone",
                                      header: "Units_Sentence.hxx".}
proc dump*(this: UnitsSentence) {.noSideEffect, importcpp: "Dump",
                               header: "Units_Sentence.hxx".}

























