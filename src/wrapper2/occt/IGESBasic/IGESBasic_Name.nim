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
discard "forward decl of IGESBasic_Name"
discard "forward decl of IGESBasic_Name"
type
  HandleIGESBasicName* = Handle[IGESBasicName]

## ! defines Name, Type <406> Form <15>
## ! in package IGESBasic
## ! Used to specify a user defined name

type
  IGESBasicName* {.importcpp: "IGESBasic_Name", header: "IGESBasic_Name.hxx", bycopy.} = object of IGESDataNameEntity


proc constructIGESBasicName*(): IGESBasicName {.constructor,
    importcpp: "IGESBasic_Name(@)", header: "IGESBasic_Name.hxx".}
proc init*(this: var IGESBasicName; nbPropVal: StandardInteger;
          aName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_Name.hxx".}
proc nbPropertyValues*(this: IGESBasicName): StandardInteger {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESBasic_Name.hxx".}
proc value*(this: IGESBasicName): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Value", header: "IGESBasic_Name.hxx".}
type
  IGESBasicNamebaseType* = IGESDataNameEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_Name::get_type_name(@)",
                            header: "IGESBasic_Name.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_Name::get_type_descriptor(@)",
    header: "IGESBasic_Name.hxx".}
proc dynamicType*(this: IGESBasicName): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESBasic_Name.hxx".}

