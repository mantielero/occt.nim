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

discard "forward decl of IGESGraph_IntercharacterSpacing"
discard "forward decl of IGESGraph_IntercharacterSpacing"
type
  HandleIGESGraphIntercharacterSpacing* = Handle[IGESGraphIntercharacterSpacing]

## ! defines IGESIntercharacterSpacing, Type <406> Form <18>
## ! in package IGESGraph
## !
## ! Specifies the gap between letters when fixed-pitch
## ! spacing is used

type
  IGESGraphIntercharacterSpacing* {.importcpp: "IGESGraph_IntercharacterSpacing", header: "IGESGraph_IntercharacterSpacing.hxx",
                                   bycopy.} = object of IGESDataIGESEntity


proc constructIGESGraphIntercharacterSpacing*(): IGESGraphIntercharacterSpacing {.
    constructor, importcpp: "IGESGraph_IntercharacterSpacing(@)",
    header: "IGESGraph_IntercharacterSpacing.hxx".}
proc init*(this: var IGESGraphIntercharacterSpacing; nbProps: StandardInteger;
          anISpace: StandardReal) {.importcpp: "Init",
                                  header: "IGESGraph_IntercharacterSpacing.hxx".}
proc nbPropertyValues*(this: IGESGraphIntercharacterSpacing): StandardInteger {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESGraph_IntercharacterSpacing.hxx".}
proc iSpace*(this: IGESGraphIntercharacterSpacing): StandardReal {.noSideEffect,
    importcpp: "ISpace", header: "IGESGraph_IntercharacterSpacing.hxx".}
type
  IGESGraphIntercharacterSpacingbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_IntercharacterSpacing::get_type_name(@)",
                            header: "IGESGraph_IntercharacterSpacing.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_IntercharacterSpacing::get_type_descriptor(@)",
    header: "IGESGraph_IntercharacterSpacing.hxx".}
proc dynamicType*(this: IGESGraphIntercharacterSpacing): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGraph_IntercharacterSpacing.hxx".}

