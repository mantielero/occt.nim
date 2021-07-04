##  Created on: 1992-12-02
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
discard "forward decl of IFSelect_SelectRootComps"
discard "forward decl of IFSelect_SelectRootComps"
type
  Handle_IFSelect_SelectRootComps* = handle[IFSelect_SelectRootComps]

## ! A SelectRootComps sorts the Entities which are part of Strong
## ! Componants, local roots of a set of Entities : they can be
## ! Single Componants (containing one Entity) or Cycles
## ! This class gives a more secure result than SelectRoots (which
## ! considers only Single Componants) but is longer to work : it
## ! can be used when there can be or there are cycles in a Model
## ! For each cycle, one Entity is given arbitrarily
## ! Reject works as for SelectRoots : Strong Componants defined in
## ! the input list which are not local roots are given

type
  IFSelect_SelectRootComps* {.importcpp: "IFSelect_SelectRootComps",
                             header: "IFSelect_SelectRootComps.hxx", bycopy.} = object of IFSelect_SelectExtract ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## a
                                                                                                          ## SelectRootComps
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## True,
                                                                                                          ## RootResult
                                                                                                          ## assuring
                                                                                                          ## uniqueness


proc constructIFSelect_SelectRootComps*(): IFSelect_SelectRootComps {.constructor,
    importcpp: "IFSelect_SelectRootComps(@)",
    header: "IFSelect_SelectRootComps.hxx".}
proc RootResult*(this: IFSelect_SelectRootComps; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectRootComps.hxx".}
proc Sort*(this: IFSelect_SelectRootComps; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IFSelect_SelectRootComps.hxx".}
proc ExtractLabel*(this: IFSelect_SelectRootComps): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IFSelect_SelectRootComps.hxx".}
type
  IFSelect_SelectRootCompsbase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectRootComps::get_type_name(@)",
                              header: "IFSelect_SelectRootComps.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectRootComps::get_type_descriptor(@)",
    header: "IFSelect_SelectRootComps.hxx".}
proc DynamicType*(this: IFSelect_SelectRootComps): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectRootComps.hxx".}