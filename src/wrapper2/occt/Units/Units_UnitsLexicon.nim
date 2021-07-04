##  Created on: 1993-10-08
##  Created by: Gilles DEBARBOUILLE
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Time,
  Units_Lexicon, ../Standard/Standard_CString, ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Units_UnitsLexicon"
discard "forward decl of Units_UnitsLexicon"
type
  Handle_Units_UnitsLexicon* = handle[Units_UnitsLexicon]

## ! This class defines a lexicon useful to analyse and
## ! recognize the different key  words  included  in a
## ! sentence. The  lexicon is stored  in a sequence of
## ! tokens.

type
  Units_UnitsLexicon* {.importcpp: "Units_UnitsLexicon",
                       header: "Units_UnitsLexicon.hxx", bycopy.} = object of Units_Lexicon ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## instance
                                                                                     ## of
                                                                                     ## UnitsLexicon


proc constructUnits_UnitsLexicon*(): Units_UnitsLexicon {.constructor,
    importcpp: "Units_UnitsLexicon(@)", header: "Units_UnitsLexicon.hxx".}
proc Creates*(this: var Units_UnitsLexicon; amode: Standard_Boolean = Standard_True) {.
    importcpp: "Creates", header: "Units_UnitsLexicon.hxx".}
proc Dump*(this: Units_UnitsLexicon) {.noSideEffect, importcpp: "Dump",
                                    header: "Units_UnitsLexicon.hxx".}
type
  Units_UnitsLexiconbase_type* = Units_Lexicon

proc get_type_name*(): cstring {.importcpp: "Units_UnitsLexicon::get_type_name(@)",
                              header: "Units_UnitsLexicon.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Units_UnitsLexicon::get_type_descriptor(@)",
    header: "Units_UnitsLexicon.hxx".}
proc DynamicType*(this: Units_UnitsLexicon): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_UnitsLexicon.hxx".}