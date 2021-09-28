##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Anand NATRAJAN)
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

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_GeneralSymbol"
discard "forward decl of IGESDimen_GeneralSymbol"
type
  HandleC1C1* = Handle[IGESDimenGeneralSymbol]

## ! defines General Symbol, Type <228>, Form <0-3,5001-9999>
## ! in package IGESDimen
## ! Consists of zero or one (Form 0) or one (all other
## ! forms), one or more geometry entities which define
## ! a symbol, and zero, one or more associated leaders.

type
  IGESDimenGeneralSymbol* {.importcpp: "IGESDimen_GeneralSymbol",
                           header: "IGESDimen_GeneralSymbol.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenGeneralSymbol*(): IGESDimenGeneralSymbol {.constructor,
    importcpp: "IGESDimen_GeneralSymbol(@)", header: "IGESDimen_GeneralSymbol.hxx".}
proc init*(this: var IGESDimenGeneralSymbol; aNote: Handle[IGESDimenGeneralNote];
          allGeoms: Handle[IGESDataHArray1OfIGESEntity];
          allLeaders: Handle[IGESDimenHArray1OfLeaderArrow]) {.importcpp: "Init",
    header: "IGESDimen_GeneralSymbol.hxx".}
proc setFormNumber*(this: var IGESDimenGeneralSymbol; form: cint) {.
    importcpp: "SetFormNumber", header: "IGESDimen_GeneralSymbol.hxx".}
proc hasNote*(this: IGESDimenGeneralSymbol): bool {.noSideEffect,
    importcpp: "HasNote", header: "IGESDimen_GeneralSymbol.hxx".}
proc note*(this: IGESDimenGeneralSymbol): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_GeneralSymbol.hxx".}
proc nbGeomEntities*(this: IGESDimenGeneralSymbol): cint {.noSideEffect,
    importcpp: "NbGeomEntities", header: "IGESDimen_GeneralSymbol.hxx".}
proc geomEntity*(this: IGESDimenGeneralSymbol; index: cint): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "GeomEntity",
                         header: "IGESDimen_GeneralSymbol.hxx".}
proc nbLeaders*(this: IGESDimenGeneralSymbol): cint {.noSideEffect,
    importcpp: "NbLeaders", header: "IGESDimen_GeneralSymbol.hxx".}
proc leaderArrow*(this: IGESDimenGeneralSymbol; index: cint): Handle[
    IGESDimenLeaderArrow] {.noSideEffect, importcpp: "LeaderArrow",
                           header: "IGESDimen_GeneralSymbol.hxx".}
type
  IGESDimenGeneralSymbolbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_GeneralSymbol::get_type_name(@)",
                            header: "IGESDimen_GeneralSymbol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_GeneralSymbol::get_type_descriptor(@)",
    header: "IGESDimen_GeneralSymbol.hxx".}
proc dynamicType*(this: IGESDimenGeneralSymbol): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_GeneralSymbol.hxx".}

























