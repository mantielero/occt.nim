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

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectExtract"
type
  HandleIFSelectSelectExtract* = Handle[IFSelectSelectExtract]

## ! A SelectExtract determines a list of Entities from an Input
## ! Selection, as a sub-list of the Input Result
## ! It works by applying a sort criterium on each Entity of the
## ! Input. This criterium can be applied Direct to Pick Items
## ! (default case) or Reverse to Remove Item
## !
## ! Basic features (the unique Input) are inherited from SelectDeduct

type
  IFSelectSelectExtract* {.importcpp: "IFSelect_SelectExtract",
                          header: "IFSelect_SelectExtract.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## True
                                                                                                   ## if
                                                                                                   ## Sort
                                                                                                   ## criterium
                                                                                                   ## is
                                                                                                   ## Direct,
                                                                                                   ## False
                                                                                                   ## if
                                                                                                   ## Reverse
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Initializes
                                                                                                   ## a
                                                                                                   ## SelectExtract
                                                                                                   ## :
                                                                                                   ## enforces
                                                                                                   ## the
                                                                                                   ## sort
                                                                                                   ## to
                                                                                                   ## be
                                                                                                   ## Direct


proc isDirect*(this: IFSelectSelectExtract): bool {.noSideEffect, cdecl,
    importcpp: "IsDirect", header: "IFSelect_SelectExtract.hxx".}
proc setDirect*(this: var IFSelectSelectExtract; direct: bool) {.cdecl,
    importcpp: "SetDirect", header: "IFSelect_SelectExtract.hxx".}
proc rootResult*(this: IFSelectSelectExtract; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_SelectExtract.hxx".}
proc sort*(this: IFSelectSelectExtract; rank: cint; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect, cdecl,
    importcpp: "Sort", header: "IFSelect_SelectExtract.hxx".}
proc sortInGraph*(this: IFSelectSelectExtract; rank: cint;
                 ent: Handle[StandardTransient]; g: InterfaceGraph): bool {.
    noSideEffect, cdecl, importcpp: "SortInGraph", header: "IFSelect_SelectExtract.hxx".}
proc label*(this: IFSelectSelectExtract): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Label", header: "IFSelect_SelectExtract.hxx".}
proc extractLabel*(this: IFSelectSelectExtract): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ExtractLabel", header: "IFSelect_SelectExtract.hxx".}