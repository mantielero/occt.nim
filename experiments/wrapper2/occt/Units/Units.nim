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

discard "forward decl of Units_UnitsDictionary"
discard "forward decl of Units_Quantity"
discard "forward decl of Units_Lexicon"
discard "forward decl of Units_Dimensions"
discard "forward decl of Units_Dimensions"
discard "forward decl of Units_Unit"
discard "forward decl of Units_ShiftedUnit"
discard "forward decl of Units_Token"
discard "forward decl of Units_ShiftedToken"
discard "forward decl of Units_Quantity"
discard "forward decl of Units_UnitsDictionary"
discard "forward decl of Units_UnitsSystem"
discard "forward decl of Units_Explorer"
discard "forward decl of Units_Sentence"
discard "forward decl of Units_MathSentence"
discard "forward decl of Units_UnitSentence"
discard "forward decl of Units_Lexicon"
discard "forward decl of Units_UnitsLexicon"
discard "forward decl of Units_Measurement"
type
  Units* {.importcpp: "Units", header: "Units.hxx", bycopy.} = object ## ! Defines the location of the file containing all the
                                                              ## ! information useful in creating the dictionary of all
                                                              ## ! the units known to the system.


proc unitsFile*(afile: StandardCString) {.importcpp: "Units::UnitsFile(@)",
                                       header: "Units.hxx".}
proc lexiconFile*(afile: StandardCString) {.importcpp: "Units::LexiconFile(@)",
    header: "Units.hxx".}
proc dictionaryOfUnits*(amode: bool = false): Handle[UnitsUnitsDictionary] {.
    importcpp: "Units::DictionaryOfUnits(@)", header: "Units.hxx".}
proc quantity*(aquantity: StandardCString): Handle[UnitsQuantity] {.
    importcpp: "Units::Quantity(@)", header: "Units.hxx".}
proc firstQuantity*(aunit: StandardCString): StandardCString {.
    importcpp: "Units::FirstQuantity(@)", header: "Units.hxx".}
proc lexiconUnits*(amode: bool = true): Handle[UnitsLexicon] {.
    importcpp: "Units::LexiconUnits(@)", header: "Units.hxx".}
proc lexiconFormula*(): Handle[UnitsLexicon] {.
    importcpp: "Units::LexiconFormula(@)", header: "Units.hxx".}
proc nullDimensions*(): Handle[UnitsDimensions] {.
    importcpp: "Units::NullDimensions(@)", header: "Units.hxx".}
proc convert*(avalue: float; afirstunit: StandardCString;
             asecondunit: StandardCString): float {.importcpp: "Units::Convert(@)",
    header: "Units.hxx".}
proc toSI*(aData: float; aUnit: StandardCString): float {.importcpp: "Units::ToSI(@)",
    header: "Units.hxx".}
proc toSI*(aData: float; aUnit: StandardCString; aDim: var Handle[UnitsDimensions]): float {.
    importcpp: "Units::ToSI(@)", header: "Units.hxx".}
proc fromSI*(aData: float; aUnit: StandardCString): float {.
    importcpp: "Units::FromSI(@)", header: "Units.hxx".}
proc fromSI*(aData: float; aUnit: StandardCString; aDim: var Handle[UnitsDimensions]): float {.
    importcpp: "Units::FromSI(@)", header: "Units.hxx".}
proc dimensions*(aType: StandardCString): Handle[UnitsDimensions] {.
    importcpp: "Units::Dimensions(@)", header: "Units.hxx".}
