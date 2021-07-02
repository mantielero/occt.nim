##  Created on: 1993-11-03
##  Created by: Christian CAILLET
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

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectSharing"
discard "forward decl of IFSelect_SelectSharing"
type
  HandleIFSelectSelectSharing* = Handle[IFSelectSelectSharing]

## ! A SelectSharing selects Entities which directly Share (Level
## ! One) the Entities of the Input list
## ! Remark : if an Entity of the Input List directly shares
## ! another one, it is of course present in the Result List

type
  IFSelectSelectSharing* {.importcpp: "IFSelect_SelectSharing",
                          header: "IFSelect_SelectSharing.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## SelectSharing;


proc constructIFSelectSelectSharing*(): IFSelectSelectSharing {.constructor,
    importcpp: "IFSelect_SelectSharing(@)", header: "IFSelect_SelectSharing.hxx".}
proc rootResult*(this: IFSelectSelectSharing; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectSharing.hxx".}
proc label*(this: IFSelectSelectSharing): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectSharing.hxx".}
type
  IFSelectSelectSharingbaseType* = IFSelectSelectDeduct

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectSharing::get_type_name(@)",
                            header: "IFSelect_SelectSharing.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectSharing::get_type_descriptor(@)",
    header: "IFSelect_SelectSharing.hxx".}
proc dynamicType*(this: IFSelectSelectSharing): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectSharing.hxx".}

