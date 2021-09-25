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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Units_Lexicon"
discard "forward decl of Units_Lexicon"
type
  HandleUnitsLexicon* = Handle[UnitsLexicon]

## ! This class defines a lexicon useful to analyse and
## ! recognize the  different key words  included  in a
## ! sentence.  The lexicon is stored  in a sequence of
## ! tokens.

type
  UnitsLexicon* {.importcpp: "Units_Lexicon", header: "Units_Lexicon.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## an
                                                                                                        ## empty
                                                                                                        ## instance
                                                                                                        ## of
                                                                                                        ## Lexicon.


proc constructUnitsLexicon*(): UnitsLexicon {.constructor,
    importcpp: "Units_Lexicon(@)", header: "Units_Lexicon.hxx".}
proc creates*(this: var UnitsLexicon) {.importcpp: "Creates",
                                    header: "Units_Lexicon.hxx".}
proc sequence*(this: UnitsLexicon): Handle[UnitsTokensSequence] {.noSideEffect,
    importcpp: "Sequence", header: "Units_Lexicon.hxx".}
proc addToken*(this: var UnitsLexicon; aword: StandardCString; amean: StandardCString;
              avalue: float) {.importcpp: "AddToken", header: "Units_Lexicon.hxx".}
proc dump*(this: UnitsLexicon) {.noSideEffect, importcpp: "Dump",
                              header: "Units_Lexicon.hxx".}
type
  UnitsLexiconbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Units_Lexicon::get_type_name(@)",
                            header: "Units_Lexicon.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Units_Lexicon::get_type_descriptor(@)",
    header: "Units_Lexicon.hxx".}
proc dynamicType*(this: UnitsLexicon): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_Lexicon.hxx".}
