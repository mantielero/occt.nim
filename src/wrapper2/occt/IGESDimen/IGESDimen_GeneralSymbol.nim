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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESData/IGESData_HArray1OfIGESEntity, IGESDimen_HArray1OfLeaderArrow,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_GeneralSymbol"
discard "forward decl of IGESDimen_GeneralSymbol"
type
  Handle_IGESDimen_GeneralSymbol* = handle[IGESDimen_GeneralSymbol]

## ! defines General Symbol, Type <228>, Form <0-3,5001-9999>
## ! in package IGESDimen
## ! Consists of zero or one (Form 0) or one (all other
## ! forms), one or more geometry entities which define
## ! a symbol, and zero, one or more associated leaders.

type
  IGESDimen_GeneralSymbol* {.importcpp: "IGESDimen_GeneralSymbol",
                            header: "IGESDimen_GeneralSymbol.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_GeneralSymbol*(): IGESDimen_GeneralSymbol {.constructor,
    importcpp: "IGESDimen_GeneralSymbol(@)", header: "IGESDimen_GeneralSymbol.hxx".}
proc Init*(this: var IGESDimen_GeneralSymbol; aNote: handle[IGESDimen_GeneralNote];
          allGeoms: handle[IGESData_HArray1OfIGESEntity];
          allLeaders: handle[IGESDimen_HArray1OfLeaderArrow]) {.importcpp: "Init",
    header: "IGESDimen_GeneralSymbol.hxx".}
proc SetFormNumber*(this: var IGESDimen_GeneralSymbol; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESDimen_GeneralSymbol.hxx".}
proc HasNote*(this: IGESDimen_GeneralSymbol): Standard_Boolean {.noSideEffect,
    importcpp: "HasNote", header: "IGESDimen_GeneralSymbol.hxx".}
proc Note*(this: IGESDimen_GeneralSymbol): handle[IGESDimen_GeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_GeneralSymbol.hxx".}
proc NbGeomEntities*(this: IGESDimen_GeneralSymbol): Standard_Integer {.
    noSideEffect, importcpp: "NbGeomEntities",
    header: "IGESDimen_GeneralSymbol.hxx".}
proc GeomEntity*(this: IGESDimen_GeneralSymbol; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "GeomEntity",
                          header: "IGESDimen_GeneralSymbol.hxx".}
proc NbLeaders*(this: IGESDimen_GeneralSymbol): Standard_Integer {.noSideEffect,
    importcpp: "NbLeaders", header: "IGESDimen_GeneralSymbol.hxx".}
proc LeaderArrow*(this: IGESDimen_GeneralSymbol; Index: Standard_Integer): handle[
    IGESDimen_LeaderArrow] {.noSideEffect, importcpp: "LeaderArrow",
                            header: "IGESDimen_GeneralSymbol.hxx".}
type
  IGESDimen_GeneralSymbolbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_GeneralSymbol::get_type_name(@)",
                              header: "IGESDimen_GeneralSymbol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_GeneralSymbol::get_type_descriptor(@)",
    header: "IGESDimen_GeneralSymbol.hxx".}
proc DynamicType*(this: IGESDimen_GeneralSymbol): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_GeneralSymbol.hxx".}