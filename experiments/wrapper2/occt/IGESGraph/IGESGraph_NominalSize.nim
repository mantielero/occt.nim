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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_NominalSize"
discard "forward decl of IGESGraph_NominalSize"
type
  HandleC1C1* = Handle[IGESGraphNominalSize]

## ! defines IGESNominalSize, Type <406> Form <13>
## ! in package IGESGraph
## !
## ! Specifies a value, a name, and optionally a
## ! reference to an engineering standard

type
  IGESGraphNominalSize* {.importcpp: "IGESGraph_NominalSize",
                         header: "IGESGraph_NominalSize.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGraphNominalSize*(): IGESGraphNominalSize {.constructor,
    importcpp: "IGESGraph_NominalSize(@)", header: "IGESGraph_NominalSize.hxx".}
proc init*(this: var IGESGraphNominalSize; nbProps: cint; aNominalSizeValue: cfloat;
          aNominalSizeName: Handle[TCollectionHAsciiString];
          aStandardName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESGraph_NominalSize.hxx".}
proc nbPropertyValues*(this: IGESGraphNominalSize): cint {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESGraph_NominalSize.hxx".}
proc nominalSizeValue*(this: IGESGraphNominalSize): cfloat {.noSideEffect,
    importcpp: "NominalSizeValue", header: "IGESGraph_NominalSize.hxx".}
proc nominalSizeName*(this: IGESGraphNominalSize): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "NominalSizeName", header: "IGESGraph_NominalSize.hxx".}
proc hasStandardName*(this: IGESGraphNominalSize): bool {.noSideEffect,
    importcpp: "HasStandardName", header: "IGESGraph_NominalSize.hxx".}
proc standardName*(this: IGESGraphNominalSize): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "StandardName", header: "IGESGraph_NominalSize.hxx".}
type
  IGESGraphNominalSizebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_NominalSize::get_type_name(@)",
                            header: "IGESGraph_NominalSize.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_NominalSize::get_type_descriptor(@)",
    header: "IGESGraph_NominalSize.hxx".}
proc dynamicType*(this: IGESGraphNominalSize): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGraph_NominalSize.hxx".}

























