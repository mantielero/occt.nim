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

import
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_Dispatch,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of IFSelect_IntParam"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of IFSelect_DispPerFiles"
discard "forward decl of IFSelect_DispPerFiles"
type
  Handle_IFSelect_DispPerFiles* = handle[IFSelect_DispPerFiles]

## ! A DispPerFiles produces a determined count of Packets from the
## ! input Entities. It divides, as equally as possible, the input
## ! list into a count of files. This count is the parameter of the
## ! DispPerFiles. If the input list has less than this count, of
## ! course there will be one packet per input entity.
## ! This count is a Parameter of the DispPerFiles, given as an
## ! IntParam, thus allowing external control of its Value

type
  IFSelect_DispPerFiles* {.importcpp: "IFSelect_DispPerFiles",
                          header: "IFSelect_DispPerFiles.hxx", bycopy.} = object of IFSelect_Dispatch ##
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


proc constructIFSelect_DispPerFiles*(): IFSelect_DispPerFiles {.constructor,
    importcpp: "IFSelect_DispPerFiles(@)", header: "IFSelect_DispPerFiles.hxx".}
proc Count*(this: IFSelect_DispPerFiles): handle[IFSelect_IntParam] {.noSideEffect,
    importcpp: "Count", header: "IFSelect_DispPerFiles.hxx".}
proc SetCount*(this: var IFSelect_DispPerFiles; count: handle[IFSelect_IntParam]) {.
    importcpp: "SetCount", header: "IFSelect_DispPerFiles.hxx".}
proc CountValue*(this: IFSelect_DispPerFiles): Standard_Integer {.noSideEffect,
    importcpp: "CountValue", header: "IFSelect_DispPerFiles.hxx".}
proc Label*(this: IFSelect_DispPerFiles): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_DispPerFiles.hxx".}
proc LimitedMax*(this: IFSelect_DispPerFiles; nbent: Standard_Integer;
                max: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LimitedMax", header: "IFSelect_DispPerFiles.hxx".}
proc Packets*(this: IFSelect_DispPerFiles; G: Interface_Graph;
             packs: var IFGraph_SubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IFSelect_DispPerFiles.hxx".}
type
  IFSelect_DispPerFilesbase_type* = IFSelect_Dispatch

proc get_type_name*(): cstring {.importcpp: "IFSelect_DispPerFiles::get_type_name(@)",
                              header: "IFSelect_DispPerFiles.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_DispPerFiles::get_type_descriptor(@)",
    header: "IFSelect_DispPerFiles.hxx".}
proc DynamicType*(this: IFSelect_DispPerFiles): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_DispPerFiles.hxx".}