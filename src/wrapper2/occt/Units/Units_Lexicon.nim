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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Time,
  Units_TokensSequence, ../Standard/Standard_Transient,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Units_Lexicon"
discard "forward decl of Units_Lexicon"
type
  Handle_Units_Lexicon* = handle[Units_Lexicon]

## ! This class defines a lexicon useful to analyse and
## ! recognize the  different key words  included  in a
## ! sentence.  The lexicon is stored  in a sequence of
## ! tokens.

type
  Units_Lexicon* {.importcpp: "Units_Lexicon", header: "Units_Lexicon.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## instance
                                                                                                          ## of
                                                                                                          ## Lexicon.


proc constructUnits_Lexicon*(): Units_Lexicon {.constructor,
    importcpp: "Units_Lexicon(@)", header: "Units_Lexicon.hxx".}
proc Creates*(this: var Units_Lexicon) {.importcpp: "Creates",
                                     header: "Units_Lexicon.hxx".}
proc Sequence*(this: Units_Lexicon): handle[Units_TokensSequence] {.noSideEffect,
    importcpp: "Sequence", header: "Units_Lexicon.hxx".}
proc AddToken*(this: var Units_Lexicon; aword: Standard_CString;
              amean: Standard_CString; avalue: Standard_Real) {.
    importcpp: "AddToken", header: "Units_Lexicon.hxx".}
proc Dump*(this: Units_Lexicon) {.noSideEffect, importcpp: "Dump",
                               header: "Units_Lexicon.hxx".}
type
  Units_Lexiconbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Units_Lexicon::get_type_name(@)",
                              header: "Units_Lexicon.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Units_Lexicon::get_type_descriptor(@)",
    header: "Units_Lexicon.hxx".}
proc DynamicType*(this: Units_Lexicon): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_Lexicon.hxx".}