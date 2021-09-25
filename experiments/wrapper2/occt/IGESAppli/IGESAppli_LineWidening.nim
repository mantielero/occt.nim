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

discard "forward decl of IGESAppli_LineWidening"
discard "forward decl of IGESAppli_LineWidening"
type
  HandleIGESAppliLineWidening* = Handle[IGESAppliLineWidening]

## ! defines LineWidening, Type <406> Form <5>
## ! in package IGESAppli
## ! Defines the characteristics of entities when they are
## ! used to define locations of items.

type
  IGESAppliLineWidening* {.importcpp: "IGESAppli_LineWidening",
                          header: "IGESAppli_LineWidening.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliLineWidening*(): IGESAppliLineWidening {.constructor,
    importcpp: "IGESAppli_LineWidening(@)", header: "IGESAppli_LineWidening.hxx".}
proc init*(this: var IGESAppliLineWidening; nbPropVal: int; aWidth: float;
          aCornering: int; aExtnFlag: int; aJustifFlag: int; aExtnVal: float) {.
    importcpp: "Init", header: "IGESAppli_LineWidening.hxx".}
proc nbPropertyValues*(this: IGESAppliLineWidening): int {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESAppli_LineWidening.hxx".}
proc widthOfMetalization*(this: IGESAppliLineWidening): float {.noSideEffect,
    importcpp: "WidthOfMetalization", header: "IGESAppli_LineWidening.hxx".}
proc corneringCode*(this: IGESAppliLineWidening): int {.noSideEffect,
    importcpp: "CorneringCode", header: "IGESAppli_LineWidening.hxx".}
proc extensionFlag*(this: IGESAppliLineWidening): int {.noSideEffect,
    importcpp: "ExtensionFlag", header: "IGESAppli_LineWidening.hxx".}
proc justificationFlag*(this: IGESAppliLineWidening): int {.noSideEffect,
    importcpp: "JustificationFlag", header: "IGESAppli_LineWidening.hxx".}
proc extensionValue*(this: IGESAppliLineWidening): float {.noSideEffect,
    importcpp: "ExtensionValue", header: "IGESAppli_LineWidening.hxx".}
type
  IGESAppliLineWideningbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_LineWidening::get_type_name(@)",
                            header: "IGESAppli_LineWidening.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_LineWidening::get_type_descriptor(@)",
    header: "IGESAppli_LineWidening.hxx".}
proc dynamicType*(this: IGESAppliLineWidening): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_LineWidening.hxx".}
