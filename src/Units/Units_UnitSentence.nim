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

## ! This   class describes   all    the  facilities to
## ! manipulate and compute units contained in a string
## ! expression.

type
  UnitsUnitSentence* {.importcpp: "Units_UnitSentence",
                      header: "Units_UnitSentence.hxx", bycopy.} = object of UnitsSentence ##
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


proc constructUnitsUnitSentence*(astring: StandardCString): UnitsUnitSentence {.
    constructor, importcpp: "Units_UnitSentence(@)",
    header: "Units_UnitSentence.hxx".}
proc constructUnitsUnitSentence*(astring: StandardCString; aquantitiessequence: Handle[
    UnitsQuantitiesSequence]): UnitsUnitSentence {.constructor,
    importcpp: "Units_UnitSentence(@)", header: "Units_UnitSentence.hxx".}
proc analyse*(this: var UnitsUnitSentence) {.importcpp: "Analyse",
    header: "Units_UnitSentence.hxx".}
proc setUnits*(this: var UnitsUnitSentence;
              aquantitiessequence: Handle[UnitsQuantitiesSequence]) {.
    importcpp: "SetUnits", header: "Units_UnitSentence.hxx".}

























