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

discard "forward decl of IGESGraph_HighLight"
discard "forward decl of IGESGraph_HighLight"
type
  HandleC1C1* = Handle[IGESGraphHighLight]

## ! defines IGESHighLight, Type <406> Form <20>
## ! in package IGESGraph
## !
## ! Attaches information that an entity is to be
## ! displayed in some system dependent manner

type
  IGESGraphHighLight* {.importcpp: "IGESGraph_HighLight",
                       header: "IGESGraph_HighLight.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGraphHighLight*(): IGESGraphHighLight {.constructor,
    importcpp: "IGESGraph_HighLight(@)", header: "IGESGraph_HighLight.hxx".}
proc init*(this: var IGESGraphHighLight; nbProps: cint; aHighLightStatus: cint) {.
    importcpp: "Init", header: "IGESGraph_HighLight.hxx".}
proc nbPropertyValues*(this: IGESGraphHighLight): cint {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESGraph_HighLight.hxx".}
proc highLightStatus*(this: IGESGraphHighLight): cint {.noSideEffect,
    importcpp: "HighLightStatus", header: "IGESGraph_HighLight.hxx".}
proc isHighLighted*(this: IGESGraphHighLight): bool {.noSideEffect,
    importcpp: "IsHighLighted", header: "IGESGraph_HighLight.hxx".}
type
  IGESGraphHighLightbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_HighLight::get_type_name(@)",
                            header: "IGESGraph_HighLight.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_HighLight::get_type_descriptor(@)",
    header: "IGESGraph_HighLight.hxx".}
proc dynamicType*(this: IGESGraphHighLight): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGraph_HighLight.hxx".}

























