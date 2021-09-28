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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Units_UnitsLexicon"
discard "forward decl of Units_UnitsLexicon"
type
  HandleC1C1* = Handle[UnitsUnitsLexicon]

## ! This class defines a lexicon useful to analyse and
## ! recognize the different key  words  included  in a
## ! sentence. The  lexicon is stored  in a sequence of
## ! tokens.

type
  UnitsUnitsLexicon* {.importcpp: "Units_UnitsLexicon",
                      header: "Units_UnitsLexicon.hxx", bycopy.} = object of UnitsLexicon ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## an
                                                                                   ## empty
                                                                                   ## instance
                                                                                   ## of
                                                                                   ## UnitsLexicon


proc constructUnitsUnitsLexicon*(): UnitsUnitsLexicon {.constructor,
    importcpp: "Units_UnitsLexicon(@)", header: "Units_UnitsLexicon.hxx".}
proc creates*(this: var UnitsUnitsLexicon; amode: bool = true) {.importcpp: "Creates",
    header: "Units_UnitsLexicon.hxx".}
proc dump*(this: UnitsUnitsLexicon) {.noSideEffect, importcpp: "Dump",
                                   header: "Units_UnitsLexicon.hxx".}
type
  UnitsUnitsLexiconbaseType* = UnitsLexicon

proc getTypeName*(): cstring {.importcpp: "Units_UnitsLexicon::get_type_name(@)",
                            header: "Units_UnitsLexicon.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Units_UnitsLexicon::get_type_descriptor(@)",
    header: "Units_UnitsLexicon.hxx".}
proc dynamicType*(this: UnitsUnitsLexicon): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_UnitsLexicon.hxx".}

























