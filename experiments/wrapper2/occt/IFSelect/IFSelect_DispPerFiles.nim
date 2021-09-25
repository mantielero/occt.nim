##  Created on: 1994-12-21
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of IFSelect_IntParam"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of IFSelect_DispPerFiles"
discard "forward decl of IFSelect_DispPerFiles"
type
  HandleIFSelectDispPerFiles* = Handle[IFSelectDispPerFiles]

## ! A DispPerFiles produces a determined count of Packets from the
## ! input Entities. It divides, as equally as possible, the input
## ! list into a count of files. This count is the parameter of the
## ! DispPerFiles. If the input list has less than this count, of
## ! course there will be one packet per input entity.
## ! This count is a Parameter of the DispPerFiles, given as an
## ! IntParam, thus allowing external control of its Value

type
  IFSelectDispPerFiles* {.importcpp: "IFSelect_DispPerFiles",
                         header: "IFSelect_DispPerFiles.hxx", bycopy.} = object of IFSelectDispatch ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## DispPerFiles
                                                                                             ## with
                                                                                             ## no
                                                                                             ## Count
                                                                                             ## (default
                                                                                             ## value
                                                                                             ## 1
                                                                                             ## file)


proc constructIFSelectDispPerFiles*(): IFSelectDispPerFiles {.constructor,
    importcpp: "IFSelect_DispPerFiles(@)", header: "IFSelect_DispPerFiles.hxx".}
proc count*(this: IFSelectDispPerFiles): Handle[IFSelectIntParam] {.noSideEffect,
    importcpp: "Count", header: "IFSelect_DispPerFiles.hxx".}
proc setCount*(this: var IFSelectDispPerFiles; count: Handle[IFSelectIntParam]) {.
    importcpp: "SetCount", header: "IFSelect_DispPerFiles.hxx".}
proc countValue*(this: IFSelectDispPerFiles): int {.noSideEffect,
    importcpp: "CountValue", header: "IFSelect_DispPerFiles.hxx".}
proc label*(this: IFSelectDispPerFiles): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_DispPerFiles.hxx".}
proc limitedMax*(this: IFSelectDispPerFiles; nbent: int; max: var int): bool {.
    noSideEffect, importcpp: "LimitedMax", header: "IFSelect_DispPerFiles.hxx".}
proc packets*(this: IFSelectDispPerFiles; g: InterfaceGraph;
             packs: var IFGraphSubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IFSelect_DispPerFiles.hxx".}
type
  IFSelectDispPerFilesbaseType* = IFSelectDispatch

proc getTypeName*(): cstring {.importcpp: "IFSelect_DispPerFiles::get_type_name(@)",
                            header: "IFSelect_DispPerFiles.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_DispPerFiles::get_type_descriptor(@)",
    header: "IFSelect_DispPerFiles.hxx".}
proc dynamicType*(this: IFSelectDispPerFiles): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_DispPerFiles.hxx".}
