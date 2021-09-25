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

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectRootComps"
discard "forward decl of IFSelect_SelectRootComps"
type
  HandleIFSelectSelectRootComps* = Handle[IFSelectSelectRootComps]

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
  IFSelectSelectRootComps* {.importcpp: "IFSelect_SelectRootComps",
                            header: "IFSelect_SelectRootComps.hxx", bycopy.} = object of IFSelectSelectExtract ##
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


proc constructIFSelectSelectRootComps*(): IFSelectSelectRootComps {.constructor,
    importcpp: "IFSelect_SelectRootComps(@)",
    header: "IFSelect_SelectRootComps.hxx".}
proc rootResult*(this: IFSelectSelectRootComps; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectRootComps.hxx".}
proc sort*(this: IFSelectSelectRootComps; rank: int; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect,
    importcpp: "Sort", header: "IFSelect_SelectRootComps.hxx".}
proc extractLabel*(this: IFSelectSelectRootComps): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IFSelect_SelectRootComps.hxx".}
type
  IFSelectSelectRootCompsbaseType* = IFSelectSelectExtract

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectRootComps::get_type_name(@)",
                            header: "IFSelect_SelectRootComps.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectRootComps::get_type_descriptor(@)",
    header: "IFSelect_SelectRootComps.hxx".}
proc dynamicType*(this: IFSelectSelectRootComps): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectRootComps.hxx".}
