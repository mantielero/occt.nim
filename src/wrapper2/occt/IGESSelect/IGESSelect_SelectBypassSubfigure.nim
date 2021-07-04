##  Created on: 1998-01-13
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../IFSelect/IFSelect_SelectExplore, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectBypassSubfigure"
discard "forward decl of IGESSelect_SelectBypassSubfigure"
type
  Handle_IGESSelect_SelectBypassSubfigure* = handle[
      IGESSelect_SelectBypassSubfigure]

## ! Selects a list built as follows :
## ! Subfigures correspond to
## ! * Definition (basic : type 308, or Network : type 320)
## ! * Instance (Singular : type 408, or Network : 420, or
## ! patterns : 412,414)
## !
## ! Entities which are not Subfigure are taken as such
## ! For Subfigures Instances, their definition is taken, then
## ! explored itself
## ! For Subfigures Definitions, the list of "Associated Entities"
## ! is explored
## ! Hence, level 0 (D) recursively explores a Subfigure if some of
## ! its Elements are Subfigures. level 1 explores just at first
## ! level (i.e. for an instance, returns its definition)

type
  IGESSelect_SelectBypassSubfigure* {.importcpp: "IGESSelect_SelectBypassSubfigure", header: "IGESSelect_SelectBypassSubfigure.hxx",
                                     bycopy.} = object of IFSelect_SelectExplore ## !
                                                                            ## Creates a
                                                                            ## SelectBypassSubfigure, by
                                                                            ## default all
                                                                            ## level
                                                                            ## !
                                                                            ## (level = 1
                                                                            ## explores at
                                                                            ## first
                                                                            ## level)


proc constructIGESSelect_SelectBypassSubfigure*(level: Standard_Integer = 0): IGESSelect_SelectBypassSubfigure {.
    constructor, importcpp: "IGESSelect_SelectBypassSubfigure(@)",
    header: "IGESSelect_SelectBypassSubfigure.hxx".}
proc Explore*(this: IGESSelect_SelectBypassSubfigure; level: Standard_Integer;
             ent: handle[Standard_Transient]; G: Interface_Graph;
             explored: var Interface_EntityIterator): Standard_Boolean {.
    noSideEffect, importcpp: "Explore",
    header: "IGESSelect_SelectBypassSubfigure.hxx".}
proc ExploreLabel*(this: IGESSelect_SelectBypassSubfigure): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExploreLabel",
    header: "IGESSelect_SelectBypassSubfigure.hxx".}
type
  IGESSelect_SelectBypassSubfigurebase_type* = IFSelect_SelectExplore

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SelectBypassSubfigure::get_type_name(@)",
                              header: "IGESSelect_SelectBypassSubfigure.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SelectBypassSubfigure::get_type_descriptor(@)",
    header: "IGESSelect_SelectBypassSubfigure.hxx".}
proc DynamicType*(this: IGESSelect_SelectBypassSubfigure): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectBypassSubfigure.hxx".}