##  Created on: 1997-10-01
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../IFSelect/IFSelect_SelectExplore, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectFaces"
discard "forward decl of IGESSelect_SelectFaces"
type
  Handle_IGESSelect_SelectFaces* = handle[IGESSelect_SelectFaces]

## ! This selection returns the faces contained in an IGES Entity
## ! or itself if it is a Face
## ! Face means :
## ! - Face (510) of a ManifoldSolidBrep
## ! - TrimmedSurface (144)
## ! - BoundedSurface (143)
## ! - Plane with a Bounding Curve (108, form not 0)
## ! - Also, any Surface which is not in a TrimmedSurface, a
## ! BoundedSurface, or a Face (FREE Surface)
## ! -> i.e. a Face for which Natural Bounds will be considered

type
  IGESSelect_SelectFaces* {.importcpp: "IGESSelect_SelectFaces",
                           header: "IGESSelect_SelectFaces.hxx", bycopy.} = object of IFSelect_SelectExplore


proc constructIGESSelect_SelectFaces*(): IGESSelect_SelectFaces {.constructor,
    importcpp: "IGESSelect_SelectFaces(@)", header: "IGESSelect_SelectFaces.hxx".}
proc Explore*(this: IGESSelect_SelectFaces; level: Standard_Integer;
             ent: handle[Standard_Transient]; G: Interface_Graph;
             explored: var Interface_EntityIterator): Standard_Boolean {.
    noSideEffect, importcpp: "Explore", header: "IGESSelect_SelectFaces.hxx".}
proc ExploreLabel*(this: IGESSelect_SelectFaces): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExploreLabel", header: "IGESSelect_SelectFaces.hxx".}
type
  IGESSelect_SelectFacesbase_type* = IFSelect_SelectExplore

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SelectFaces::get_type_name(@)",
                              header: "IGESSelect_SelectFaces.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SelectFaces::get_type_descriptor(@)",
    header: "IGESSelect_SelectFaces.hxx".}
proc DynamicType*(this: IGESSelect_SelectFaces): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_SelectFaces.hxx".}