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
  ../Standard/Standard_Handle, Units_Sentence, ../Standard/Standard_CString,
  Units_QuantitiesSequence

## ! This   class describes   all    the  facilities to
## ! manipulate and compute units contained in a string
## ! expression.

type
  Units_UnitSentence* {.importcpp: "Units_UnitSentence",
                       header: "Units_UnitSentence.hxx", bycopy.} = object of Units_Sentence ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## and
                                                                                      ## returns
                                                                                      ## a
                                                                                      ## UnitSentence.
                                                                                      ## The
                                                                                      ## string
                                                                                      ##
                                                                                      ## !
                                                                                      ## <astring>
                                                                                      ## describes
                                                                                      ## in
                                                                                      ## natural
                                                                                      ## language
                                                                                      ## the
                                                                                      ## unit
                                                                                      ## or
                                                                                      ##
                                                                                      ## !
                                                                                      ## the
                                                                                      ## composed
                                                                                      ## unit
                                                                                      ## to
                                                                                      ## be
                                                                                      ## analysed.


proc constructUnits_UnitSentence*(astring: Standard_CString): Units_UnitSentence {.
    constructor, importcpp: "Units_UnitSentence(@)",
    header: "Units_UnitSentence.hxx".}
proc constructUnits_UnitSentence*(astring: Standard_CString; aquantitiessequence: handle[
    Units_QuantitiesSequence]): Units_UnitSentence {.constructor,
    importcpp: "Units_UnitSentence(@)", header: "Units_UnitSentence.hxx".}
proc Analyse*(this: var Units_UnitSentence) {.importcpp: "Analyse",
    header: "Units_UnitSentence.hxx".}
proc SetUnits*(this: var Units_UnitSentence;
              aquantitiessequence: handle[Units_QuantitiesSequence]) {.
    importcpp: "SetUnits", header: "Units_UnitSentence.hxx".}