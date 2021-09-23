##  Created on: 1993-01-11
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESAppli_LineWidening"
discard "forward decl of IGESAppli_LineWidening"
type
  Handle_IGESAppli_LineWidening* = handle[IGESAppli_LineWidening]

## ! defines LineWidening, Type <406> Form <5>
## ! in package IGESAppli
## ! Defines the characteristics of entities when they are
## ! used to define locations of items.

type
  IGESAppli_LineWidening* {.importcpp: "IGESAppli_LineWidening",
                           header: "IGESAppli_LineWidening.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_LineWidening*(): IGESAppli_LineWidening {.constructor,
    importcpp: "IGESAppli_LineWidening(@)", header: "IGESAppli_LineWidening.hxx".}
proc Init*(this: var IGESAppli_LineWidening; nbPropVal: Standard_Integer;
          aWidth: Standard_Real; aCornering: Standard_Integer;
          aExtnFlag: Standard_Integer; aJustifFlag: Standard_Integer;
          aExtnVal: Standard_Real) {.importcpp: "Init",
                                   header: "IGESAppli_LineWidening.hxx".}
proc NbPropertyValues*(this: IGESAppli_LineWidening): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESAppli_LineWidening.hxx".}
proc WidthOfMetalization*(this: IGESAppli_LineWidening): Standard_Real {.
    noSideEffect, importcpp: "WidthOfMetalization",
    header: "IGESAppli_LineWidening.hxx".}
proc CorneringCode*(this: IGESAppli_LineWidening): Standard_Integer {.noSideEffect,
    importcpp: "CorneringCode", header: "IGESAppli_LineWidening.hxx".}
proc ExtensionFlag*(this: IGESAppli_LineWidening): Standard_Integer {.noSideEffect,
    importcpp: "ExtensionFlag", header: "IGESAppli_LineWidening.hxx".}
proc JustificationFlag*(this: IGESAppli_LineWidening): Standard_Integer {.
    noSideEffect, importcpp: "JustificationFlag",
    header: "IGESAppli_LineWidening.hxx".}
proc ExtensionValue*(this: IGESAppli_LineWidening): Standard_Real {.noSideEffect,
    importcpp: "ExtensionValue", header: "IGESAppli_LineWidening.hxx".}
type
  IGESAppli_LineWideningbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_LineWidening::get_type_name(@)",
                              header: "IGESAppli_LineWidening.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_LineWidening::get_type_descriptor(@)",
    header: "IGESAppli_LineWidening.hxx".}
proc DynamicType*(this: IGESAppli_LineWidening): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_LineWidening.hxx".}