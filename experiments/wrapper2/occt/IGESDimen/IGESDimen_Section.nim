##  Created on: 1993-01-13
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_Section"
discard "forward decl of IGESDimen_Section"
type
  HandleIGESDimenSection* = Handle[IGESDimenSection]

## ! defines Section, Type <106> Form <31-38>
## ! in package IGESDimen
## ! Contains information to display sectioned sides

type
  IGESDimenSection* {.importcpp: "IGESDimen_Section",
                     header: "IGESDimen_Section.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenSection*(): IGESDimenSection {.constructor,
    importcpp: "IGESDimen_Section(@)", header: "IGESDimen_Section.hxx".}
proc init*(this: var IGESDimenSection; dataType: int; aDisp: float;
          dataPoints: Handle[TColgpHArray1OfXY]) {.importcpp: "Init",
    header: "IGESDimen_Section.hxx".}
proc setFormNumber*(this: var IGESDimenSection; form: int) {.
    importcpp: "SetFormNumber", header: "IGESDimen_Section.hxx".}
proc datatype*(this: IGESDimenSection): int {.noSideEffect, importcpp: "Datatype",
    header: "IGESDimen_Section.hxx".}
proc nbPoints*(this: IGESDimenSection): int {.noSideEffect, importcpp: "NbPoints",
    header: "IGESDimen_Section.hxx".}
proc zDisplacement*(this: IGESDimenSection): float {.noSideEffect,
    importcpp: "ZDisplacement", header: "IGESDimen_Section.hxx".}
proc point*(this: IGESDimenSection; index: int): Pnt {.noSideEffect,
    importcpp: "Point", header: "IGESDimen_Section.hxx".}
proc transformedPoint*(this: IGESDimenSection; index: int): Pnt {.noSideEffect,
    importcpp: "TransformedPoint", header: "IGESDimen_Section.hxx".}
type
  IGESDimenSectionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_Section::get_type_name(@)",
                            header: "IGESDimen_Section.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_Section::get_type_descriptor(@)",
    header: "IGESDimen_Section.hxx".}
proc dynamicType*(this: IGESDimenSection): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDimen_Section.hxx".}
