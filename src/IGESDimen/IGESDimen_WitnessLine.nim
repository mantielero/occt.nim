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
discard "forward decl of IGESDimen_WitnessLine"
discard "forward decl of IGESDimen_WitnessLine"
type
  HandleC1C1* = Handle[IGESDimenWitnessLine]

## ! defines WitnessLine, Type <106> Form <40>
## ! in package IGESDimen
## ! Contains one or more straight line segments associated
## ! with drafting entities of various types

type
  IGESDimenWitnessLine* {.importcpp: "IGESDimen_WitnessLine",
                         header: "IGESDimen_WitnessLine.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenWitnessLine*(): IGESDimenWitnessLine {.constructor,
    importcpp: "IGESDimen_WitnessLine(@)", header: "IGESDimen_WitnessLine.hxx".}
proc init*(this: var IGESDimenWitnessLine; dataType: cint; aDisp: cfloat;
          dataPoints: Handle[TColgpHArray1OfXY]) {.importcpp: "Init",
    header: "IGESDimen_WitnessLine.hxx".}
proc datatype*(this: IGESDimenWitnessLine): cint {.noSideEffect,
    importcpp: "Datatype", header: "IGESDimen_WitnessLine.hxx".}
proc nbPoints*(this: IGESDimenWitnessLine): cint {.noSideEffect,
    importcpp: "NbPoints", header: "IGESDimen_WitnessLine.hxx".}
proc zDisplacement*(this: IGESDimenWitnessLine): cfloat {.noSideEffect,
    importcpp: "ZDisplacement", header: "IGESDimen_WitnessLine.hxx".}
proc point*(this: IGESDimenWitnessLine; index: cint): Pnt {.noSideEffect,
    importcpp: "Point", header: "IGESDimen_WitnessLine.hxx".}
proc transformedPoint*(this: IGESDimenWitnessLine; index: cint): Pnt {.noSideEffect,
    importcpp: "TransformedPoint", header: "IGESDimen_WitnessLine.hxx".}
type
  IGESDimenWitnessLinebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_WitnessLine::get_type_name(@)",
                            header: "IGESDimen_WitnessLine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_WitnessLine::get_type_descriptor(@)",
    header: "IGESDimen_WitnessLine.hxx".}
proc dynamicType*(this: IGESDimenWitnessLine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDimen_WitnessLine.hxx".}

























