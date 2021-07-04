##  Created on: 1995-09-05
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, IFSelect_SelectExtract,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectFlag"
discard "forward decl of IFSelect_SelectFlag"
type
  Handle_IFSelect_SelectFlag* = handle[IFSelect_SelectFlag]

## ! A SelectFlag queries a flag noted in the bitmap of the Graph.
## ! The Flag is designated by its Name. Flag Names are defined
## ! by Work Session and, as necessary, other functional objects
## !
## ! WorkSession from IFSelect defines flag "Incorrect"
## ! Objects which control application running define some others

type
  IFSelect_SelectFlag* {.importcpp: "IFSelect_SelectFlag",
                        header: "IFSelect_SelectFlag.hxx", bycopy.} = object of IFSelect_SelectExtract ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## Select
                                                                                                ## Flag,
                                                                                                ## to
                                                                                                ## query
                                                                                                ## a
                                                                                                ## flag
                                                                                                ## designated
                                                                                                ## by
                                                                                                ## its
                                                                                                ## name


proc constructIFSelect_SelectFlag*(flagname: Standard_CString): IFSelect_SelectFlag {.
    constructor, importcpp: "IFSelect_SelectFlag(@)",
    header: "IFSelect_SelectFlag.hxx".}
proc FlagName*(this: IFSelect_SelectFlag): Standard_CString {.noSideEffect,
    importcpp: "FlagName", header: "IFSelect_SelectFlag.hxx".}
proc RootResult*(this: IFSelect_SelectFlag; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectFlag.hxx".}
proc Sort*(this: IFSelect_SelectFlag; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IFSelect_SelectFlag.hxx".}
proc ExtractLabel*(this: IFSelect_SelectFlag): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IFSelect_SelectFlag.hxx".}
type
  IFSelect_SelectFlagbase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectFlag::get_type_name(@)",
                              header: "IFSelect_SelectFlag.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectFlag::get_type_descriptor(@)",
    header: "IFSelect_SelectFlag.hxx".}
proc DynamicType*(this: IFSelect_SelectFlag): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectFlag.hxx".}