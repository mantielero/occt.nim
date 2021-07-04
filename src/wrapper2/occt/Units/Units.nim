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
  ../Standard/Standard_Handle, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

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


proc UnitsFile*(afile: Standard_CString) {.importcpp: "Units::UnitsFile(@)",
                                        header: "Units.hxx".}
proc LexiconFile*(afile: Standard_CString) {.importcpp: "Units::LexiconFile(@)",
    header: "Units.hxx".}
proc DictionaryOfUnits*(amode: Standard_Boolean = Standard_False): handle[
    Units_UnitsDictionary] {.importcpp: "Units::DictionaryOfUnits(@)",
                            header: "Units.hxx".}
proc Quantity*(aquantity: Standard_CString): handle[Units_Quantity] {.
    importcpp: "Units::Quantity(@)", header: "Units.hxx".}
proc FirstQuantity*(aunit: Standard_CString): Standard_CString {.
    importcpp: "Units::FirstQuantity(@)", header: "Units.hxx".}
proc LexiconUnits*(amode: Standard_Boolean = Standard_True): handle[Units_Lexicon] {.
    importcpp: "Units::LexiconUnits(@)", header: "Units.hxx".}
proc LexiconFormula*(): handle[Units_Lexicon] {.
    importcpp: "Units::LexiconFormula(@)", header: "Units.hxx".}
proc NullDimensions*(): handle[Units_Dimensions] {.
    importcpp: "Units::NullDimensions(@)", header: "Units.hxx".}
proc Convert*(avalue: Standard_Real; afirstunit: Standard_CString;
             asecondunit: Standard_CString): Standard_Real {.
    importcpp: "Units::Convert(@)", header: "Units.hxx".}
proc ToSI*(aData: Standard_Real; aUnit: Standard_CString): Standard_Real {.
    importcpp: "Units::ToSI(@)", header: "Units.hxx".}
proc ToSI*(aData: Standard_Real; aUnit: Standard_CString;
          aDim: var handle[Units_Dimensions]): Standard_Real {.
    importcpp: "Units::ToSI(@)", header: "Units.hxx".}
proc FromSI*(aData: Standard_Real; aUnit: Standard_CString): Standard_Real {.
    importcpp: "Units::FromSI(@)", header: "Units.hxx".}
proc FromSI*(aData: Standard_Real; aUnit: Standard_CString;
            aDim: var handle[Units_Dimensions]): Standard_Real {.
    importcpp: "Units::FromSI(@)", header: "Units.hxx".}
proc Dimensions*(aType: Standard_CString): handle[Units_Dimensions] {.
    importcpp: "Units::Dimensions(@)", header: "Units.hxx".}