##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESBasic_SubfigureDef"
discard "forward decl of IGESBasic_SubfigureDef"
type
  HandleC1C1* = Handle[IGESBasicSubfigureDef]

## ! defines SubfigureDef, Type <308> Form <0>
## ! in package IGESBasic
## ! This Entity permits a single definition of a detail to
## ! be utilized in multiple instances in the creation of
## ! the whole picture

type
  IGESBasicSubfigureDef* {.importcpp: "IGESBasic_SubfigureDef",
                          header: "IGESBasic_SubfigureDef.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESBasicSubfigureDef*(): IGESBasicSubfigureDef {.constructor,
    importcpp: "IGESBasic_SubfigureDef(@)", header: "IGESBasic_SubfigureDef.hxx".}
proc init*(this: var IGESBasicSubfigureDef; aDepth: cint;
          aName: Handle[TCollectionHAsciiString];
          allAssocEntities: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESBasic_SubfigureDef.hxx".}
proc depth*(this: IGESBasicSubfigureDef): cint {.noSideEffect, importcpp: "Depth",
    header: "IGESBasic_SubfigureDef.hxx".}
proc name*(this: IGESBasicSubfigureDef): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESBasic_SubfigureDef.hxx".}
proc nbEntities*(this: IGESBasicSubfigureDef): cint {.noSideEffect,
    importcpp: "NbEntities", header: "IGESBasic_SubfigureDef.hxx".}
proc associatedEntity*(this: IGESBasicSubfigureDef; index: cint): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "AssociatedEntity",
                         header: "IGESBasic_SubfigureDef.hxx".}
proc value*(this: IGESBasicSubfigureDef; index: cint): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Value", header: "IGESBasic_SubfigureDef.hxx".}
type
  IGESBasicSubfigureDefbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_SubfigureDef::get_type_name(@)",
                            header: "IGESBasic_SubfigureDef.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_SubfigureDef::get_type_descriptor(@)",
    header: "IGESBasic_SubfigureDef.hxx".}
proc dynamicType*(this: IGESBasicSubfigureDef): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESBasic_SubfigureDef.hxx".}

























