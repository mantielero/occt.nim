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

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectFlag"
discard "forward decl of IFSelect_SelectFlag"
type
  HandleC1C1* = Handle[IFSelectSelectFlag]

## ! A SelectFlag queries a flag noted in the bitmap of the Graph.
## ! The Flag is designated by its Name. Flag Names are defined
## ! by Work Session and, as necessary, other functional objects
## !
## ! WorkSession from IFSelect defines flag "Incorrect"
## ! Objects which control application running define some others

type
  IFSelectSelectFlag* {.importcpp: "IFSelect_SelectFlag",
                       header: "IFSelect_SelectFlag.hxx", bycopy.} = object of IFSelectSelectExtract ##
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


proc constructIFSelectSelectFlag*(flagname: StandardCString): IFSelectSelectFlag {.
    constructor, importcpp: "IFSelect_SelectFlag(@)",
    header: "IFSelect_SelectFlag.hxx".}
proc flagName*(this: IFSelectSelectFlag): StandardCString {.noSideEffect,
    importcpp: "FlagName", header: "IFSelect_SelectFlag.hxx".}
proc rootResult*(this: IFSelectSelectFlag; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectFlag.hxx".}
proc sort*(this: IFSelectSelectFlag; rank: cint; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect,
    importcpp: "Sort", header: "IFSelect_SelectFlag.hxx".}
proc extractLabel*(this: IFSelectSelectFlag): TCollectionAsciiString {.noSideEffect,
    importcpp: "ExtractLabel", header: "IFSelect_SelectFlag.hxx".}
type
  IFSelectSelectFlagbaseType* = IFSelectSelectExtract

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectFlag::get_type_name(@)",
                            header: "IFSelect_SelectFlag.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectFlag::get_type_descriptor(@)",
    header: "IFSelect_SelectFlag.hxx".}
proc dynamicType*(this: IFSelectSelectFlag): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectFlag.hxx".}

























