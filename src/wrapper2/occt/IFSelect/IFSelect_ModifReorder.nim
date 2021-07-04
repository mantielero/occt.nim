##  Created on: 1996-03-15
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  IFSelect_Modifier

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_ModifReorder"
discard "forward decl of IFSelect_ModifReorder"
type
  Handle_IFSelect_ModifReorder* = handle[IFSelect_ModifReorder]

## ! This modifier reorders a whole model from its roots, i.e.
## ! according to <rootlast> status, it considers each of its
## ! roots, then it orders all its shared entities at any level,
## ! the result begins by the lower level entities ... ends by
## ! the roots.

type
  IFSelect_ModifReorder* {.importcpp: "IFSelect_ModifReorder",
                          header: "IFSelect_ModifReorder.hxx", bycopy.} = object of IFSelect_Modifier ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## a
                                                                                               ## ModifReorder.
                                                                                               ## It
                                                                                               ## may
                                                                                               ## change
                                                                                               ## the
                                                                                               ## graph
                                                                                               ## (it
                                                                                               ## does
                                                                                               ## !)
                                                                                               ##
                                                                                               ## !
                                                                                               ## If
                                                                                               ## <rootlast>
                                                                                               ## is
                                                                                               ## True
                                                                                               ## (D),
                                                                                               ## roots
                                                                                               ## are
                                                                                               ## set
                                                                                               ## at
                                                                                               ## the
                                                                                               ## end
                                                                                               ## of
                                                                                               ## packets
                                                                                               ##
                                                                                               ## !
                                                                                               ## Else,
                                                                                               ## they
                                                                                               ## are
                                                                                               ## set
                                                                                               ## at
                                                                                               ## beginning
                                                                                               ## (as
                                                                                               ## done
                                                                                               ## by
                                                                                               ## AddWithRefs)


proc constructIFSelect_ModifReorder*(rootlast: Standard_Boolean = Standard_True): IFSelect_ModifReorder {.
    constructor, importcpp: "IFSelect_ModifReorder(@)",
    header: "IFSelect_ModifReorder.hxx".}
proc Perform*(this: IFSelect_ModifReorder; ctx: var IFSelect_ContextModif;
             target: handle[Interface_InterfaceModel];
             protocol: handle[Interface_Protocol]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Perform", header: "IFSelect_ModifReorder.hxx".}
proc Label*(this: IFSelect_ModifReorder): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_ModifReorder.hxx".}
type
  IFSelect_ModifReorderbase_type* = IFSelect_Modifier

proc get_type_name*(): cstring {.importcpp: "IFSelect_ModifReorder::get_type_name(@)",
                              header: "IFSelect_ModifReorder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_ModifReorder::get_type_descriptor(@)",
    header: "IFSelect_ModifReorder.hxx".}
proc DynamicType*(this: IFSelect_ModifReorder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_ModifReorder.hxx".}