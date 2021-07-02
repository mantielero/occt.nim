##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Arun MENON)
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

discard "forward decl of IGESBasic_HArray1OfHArray1OfIGESEntity"
discard "forward decl of IGESBasic_HArray1OfHArray1OfIGESEntity"
type
  HandleIGESBasicHArray1OfHArray1OfIGESEntity* = Handle[
      IGESBasicHArray1OfHArray1OfIGESEntity]
  IGESBasicHArray1OfHArray1OfIGESEntity* {.
      importcpp: "IGESBasic_HArray1OfHArray1OfIGESEntity",
      header: "IGESBasic_HArray1OfHArray1OfIGESEntity.hxx", bycopy.} = object of StandardTransient


proc constructIGESBasicHArray1OfHArray1OfIGESEntity*(low: StandardInteger;
    up: StandardInteger): IGESBasicHArray1OfHArray1OfIGESEntity {.constructor,
    importcpp: "IGESBasic_HArray1OfHArray1OfIGESEntity(@)",
    header: "IGESBasic_HArray1OfHArray1OfIGESEntity.hxx".}
proc lower*(this: IGESBasicHArray1OfHArray1OfIGESEntity): StandardInteger {.
    noSideEffect, importcpp: "Lower",
    header: "IGESBasic_HArray1OfHArray1OfIGESEntity.hxx".}
proc upper*(this: IGESBasicHArray1OfHArray1OfIGESEntity): StandardInteger {.
    noSideEffect, importcpp: "Upper",
    header: "IGESBasic_HArray1OfHArray1OfIGESEntity.hxx".}
proc length*(this: IGESBasicHArray1OfHArray1OfIGESEntity): StandardInteger {.
    noSideEffect, importcpp: "Length",
    header: "IGESBasic_HArray1OfHArray1OfIGESEntity.hxx".}
proc setValue*(this: var IGESBasicHArray1OfHArray1OfIGESEntity;
              num: StandardInteger; val: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "SetValue", header: "IGESBasic_HArray1OfHArray1OfIGESEntity.hxx".}
proc value*(this: IGESBasicHArray1OfHArray1OfIGESEntity; num: StandardInteger): Handle[
    IGESDataHArray1OfIGESEntity] {.noSideEffect, importcpp: "Value", header: "IGESBasic_HArray1OfHArray1OfIGESEntity.hxx".}
type
  IGESBasicHArray1OfHArray1OfIGESEntitybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESBasic_HArray1OfHArray1OfIGESEntity::get_type_name(@)", header: "IGESBasic_HArray1OfHArray1OfIGESEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "IGESBasic_HArray1OfHArray1OfIGESEntity::get_type_descriptor(@)",
    header: "IGESBasic_HArray1OfHArray1OfIGESEntity.hxx".}
proc dynamicType*(this: IGESBasicHArray1OfHArray1OfIGESEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_HArray1OfHArray1OfIGESEntity.hxx".}

