##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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

discard "forward decl of IGESDefs_HArray1OfHArray1OfTextDisplayTemplate"
discard "forward decl of IGESDefs_HArray1OfHArray1OfTextDisplayTemplate"
type
  HandleIGESDefsHArray1OfHArray1OfTextDisplayTemplate* = Handle[
      IGESDefsHArray1OfHArray1OfTextDisplayTemplate]
  IGESDefsHArray1OfHArray1OfTextDisplayTemplate* {.
      importcpp: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate",
      header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx", bycopy.} = object of StandardTransient


proc constructIGESDefsHArray1OfHArray1OfTextDisplayTemplate*(
    low: StandardInteger; up: StandardInteger): IGESDefsHArray1OfHArray1OfTextDisplayTemplate {.
    constructor, importcpp: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate(@)",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc lower*(this: IGESDefsHArray1OfHArray1OfTextDisplayTemplate): StandardInteger {.
    noSideEffect, importcpp: "Lower",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc upper*(this: IGESDefsHArray1OfHArray1OfTextDisplayTemplate): StandardInteger {.
    noSideEffect, importcpp: "Upper",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc length*(this: IGESDefsHArray1OfHArray1OfTextDisplayTemplate): StandardInteger {.
    noSideEffect, importcpp: "Length",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc setValue*(this: var IGESDefsHArray1OfHArray1OfTextDisplayTemplate;
              num: StandardInteger;
              val: Handle[IGESGraphHArray1OfTextDisplayTemplate]) {.
    importcpp: "SetValue",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc value*(this: IGESDefsHArray1OfHArray1OfTextDisplayTemplate;
           num: StandardInteger): Handle[IGESGraphHArray1OfTextDisplayTemplate] {.
    noSideEffect, importcpp: "Value",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
type
  IGESDefsHArray1OfHArray1OfTextDisplayTemplatebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate::get_type_name(@)", header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate::get_type_descriptor(@)",
    header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}
proc dynamicType*(this: IGESDefsHArray1OfHArray1OfTextDisplayTemplate): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "IGESDefs_HArray1OfHArray1OfTextDisplayTemplate.hxx".}

