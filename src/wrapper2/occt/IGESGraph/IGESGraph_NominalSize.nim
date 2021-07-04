##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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
  ../Standard/Standard_Real, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_NominalSize"
discard "forward decl of IGESGraph_NominalSize"
type
  Handle_IGESGraph_NominalSize* = handle[IGESGraph_NominalSize]

## ! defines IGESNominalSize, Type <406> Form <13>
## ! in package IGESGraph
## !
## ! Specifies a value, a name, and optionally a
## ! reference to an engineering standard

type
  IGESGraph_NominalSize* {.importcpp: "IGESGraph_NominalSize",
                          header: "IGESGraph_NominalSize.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGraph_NominalSize*(): IGESGraph_NominalSize {.constructor,
    importcpp: "IGESGraph_NominalSize(@)", header: "IGESGraph_NominalSize.hxx".}
proc Init*(this: var IGESGraph_NominalSize; nbProps: Standard_Integer;
          aNominalSizeValue: Standard_Real;
          aNominalSizeName: handle[TCollection_HAsciiString];
          aStandardName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "IGESGraph_NominalSize.hxx".}
proc NbPropertyValues*(this: IGESGraph_NominalSize): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESGraph_NominalSize.hxx".}
proc NominalSizeValue*(this: IGESGraph_NominalSize): Standard_Real {.noSideEffect,
    importcpp: "NominalSizeValue", header: "IGESGraph_NominalSize.hxx".}
proc NominalSizeName*(this: IGESGraph_NominalSize): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "NominalSizeName", header: "IGESGraph_NominalSize.hxx".}
proc HasStandardName*(this: IGESGraph_NominalSize): Standard_Boolean {.noSideEffect,
    importcpp: "HasStandardName", header: "IGESGraph_NominalSize.hxx".}
proc StandardName*(this: IGESGraph_NominalSize): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "StandardName", header: "IGESGraph_NominalSize.hxx".}
type
  IGESGraph_NominalSizebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_NominalSize::get_type_name(@)",
                              header: "IGESGraph_NominalSize.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_NominalSize::get_type_descriptor(@)",
    header: "IGESGraph_NominalSize.hxx".}
proc DynamicType*(this: IGESGraph_NominalSize): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGraph_NominalSize.hxx".}