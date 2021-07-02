##  Created on: 1992-11-17
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of IFSelect_DispGlobal"
discard "forward decl of IFSelect_DispGlobal"
type
  HandleIFSelectDispGlobal* = Handle[IFSelectDispGlobal]

## ! A DispGlobal gathers all the input Entities into only one
## ! global Packet

type
  IFSelectDispGlobal* {.importcpp: "IFSelect_DispGlobal",
                       header: "IFSelect_DispGlobal.hxx", bycopy.} = object of IFSelectDispatch ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## DispGlobal


proc constructIFSelectDispGlobal*(): IFSelectDispGlobal {.constructor,
    importcpp: "IFSelect_DispGlobal(@)", header: "IFSelect_DispGlobal.hxx".}
proc label*(this: IFSelectDispGlobal): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_DispGlobal.hxx".}
proc limitedMax*(this: IFSelectDispGlobal; nbent: StandardInteger;
                max: var StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "LimitedMax", header: "IFSelect_DispGlobal.hxx".}
proc packets*(this: IFSelectDispGlobal; g: InterfaceGraph;
             packs: var IFGraphSubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IFSelect_DispGlobal.hxx".}
type
  IFSelectDispGlobalbaseType* = IFSelectDispatch

proc getTypeName*(): cstring {.importcpp: "IFSelect_DispGlobal::get_type_name(@)",
                            header: "IFSelect_DispGlobal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_DispGlobal::get_type_descriptor(@)",
    header: "IFSelect_DispGlobal.hxx".}
proc dynamicType*(this: IFSelectDispGlobal): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_DispGlobal.hxx".}

