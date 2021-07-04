##  Created on: 1992-11-18
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectExtract,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectRoots"
discard "forward decl of IFSelect_SelectRoots"
type
  Handle_IFSelect_SelectRoots* = handle[IFSelect_SelectRoots]

## ! A SelectRoots sorts the Entities which are local roots of a
## ! set of Entities (not shared by other Entities inside this set,
## ! even if they are shared by other Entities outside it)

type
  IFSelect_SelectRoots* {.importcpp: "IFSelect_SelectRoots",
                         header: "IFSelect_SelectRoots.hxx", bycopy.} = object of IFSelect_SelectExtract ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## SelectRoots
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## True,
                                                                                                  ## because
                                                                                                  ## RootResult
                                                                                                  ## assures
                                                                                                  ## uniqueness


proc constructIFSelect_SelectRoots*(): IFSelect_SelectRoots {.constructor,
    importcpp: "IFSelect_SelectRoots(@)", header: "IFSelect_SelectRoots.hxx".}
proc RootResult*(this: IFSelect_SelectRoots; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectRoots.hxx".}
proc Sort*(this: IFSelect_SelectRoots; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IFSelect_SelectRoots.hxx".}
proc ExtractLabel*(this: IFSelect_SelectRoots): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IFSelect_SelectRoots.hxx".}
type
  IFSelect_SelectRootsbase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectRoots::get_type_name(@)",
                              header: "IFSelect_SelectRoots.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectRoots::get_type_descriptor(@)",
    header: "IFSelect_SelectRoots.hxx".}
proc DynamicType*(this: IFSelect_SelectRoots): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectRoots.hxx".}