##  Created on: 1997-04-14
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IFSelect/IFSelect_SelectExplore, ../Standard/Standard_Boolean

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESSelect_SelectBasicGeom"
discard "forward decl of IGESSelect_SelectBasicGeom"
type
  Handle_IGESSelect_SelectBasicGeom* = handle[IGESSelect_SelectBasicGeom]

## ! This selection returns the basic geometric elements
## ! contained in an IGES Entity
## ! Intended to run a "quick" transfer. I.E. :
## ! - for a Group, considers its Elements
## ! - for a Trimmed or Bounded Surface or a Face (BREP),
## ! considers the 3D curves of each of its loops
## ! - for a Plane (108), considers its Bounding Curve
## ! - for a Curve itself, takes it
## !
## ! Also, FREE surfaces are taken, because curve 3d is known for
## ! them. (the ideal should be to have their natural bounds)
## !
## ! If <curvesonly> is set, ONLY curves-3d are returned

type
  IGESSelect_SelectBasicGeom* {.importcpp: "IGESSelect_SelectBasicGeom",
                               header: "IGESSelect_SelectBasicGeom.hxx", bycopy.} = object of IFSelect_SelectExplore ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## a
                                                                                                              ## SelectBasicGeom,
                                                                                                              ## which
                                                                                                              ## allways
                                                                                                              ## works
                                                                                                              ## recursively
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## mode
                                                                                                              ## =
                                                                                                              ## -1
                                                                                                              ## :
                                                                                                              ## Returns
                                                                                                              ## Surfaces
                                                                                                              ## (without
                                                                                                              ## trimming)
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## mode
                                                                                                              ## =
                                                                                                              ## +1
                                                                                                              ## :
                                                                                                              ## Returns
                                                                                                              ## Curves
                                                                                                              ## 3D
                                                                                                              ## (free
                                                                                                              ## or
                                                                                                              ## bound
                                                                                                              ## of
                                                                                                              ## surface)
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## mode
                                                                                                              ## =
                                                                                                              ## +2
                                                                                                              ## :
                                                                                                              ## Returns
                                                                                                              ## Basic
                                                                                                              ## Curves
                                                                                                              ## 3D
                                                                                                              ## :
                                                                                                              ## as
                                                                                                              ## 1
                                                                                                              ## but
                                                                                                              ## CompositeCurves
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## are
                                                                                                              ## returned
                                                                                                              ## in
                                                                                                              ## detail
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## mode
                                                                                                              ## =
                                                                                                              ## 0
                                                                                                              ## :
                                                                                                              ## both


proc constructIGESSelect_SelectBasicGeom*(mode: Standard_Integer): IGESSelect_SelectBasicGeom {.
    constructor, importcpp: "IGESSelect_SelectBasicGeom(@)",
    header: "IGESSelect_SelectBasicGeom.hxx".}
proc CurvesOnly*(this: IGESSelect_SelectBasicGeom): Standard_Boolean {.noSideEffect,
    importcpp: "CurvesOnly", header: "IGESSelect_SelectBasicGeom.hxx".}
proc Explore*(this: IGESSelect_SelectBasicGeom; level: Standard_Integer;
             ent: handle[Standard_Transient]; G: Interface_Graph;
             explored: var Interface_EntityIterator): Standard_Boolean {.
    noSideEffect, importcpp: "Explore", header: "IGESSelect_SelectBasicGeom.hxx".}
proc ExploreLabel*(this: IGESSelect_SelectBasicGeom): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExploreLabel",
    header: "IGESSelect_SelectBasicGeom.hxx".}
proc SubCurves*(ent: handle[IGESData_IGESEntity];
               explored: var Interface_EntityIterator): Standard_Boolean {.
    importcpp: "IGESSelect_SelectBasicGeom::SubCurves(@)",
    header: "IGESSelect_SelectBasicGeom.hxx".}
type
  IGESSelect_SelectBasicGeombase_type* = IFSelect_SelectExplore

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SelectBasicGeom::get_type_name(@)",
                              header: "IGESSelect_SelectBasicGeom.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SelectBasicGeom::get_type_descriptor(@)",
    header: "IGESSelect_SelectBasicGeom.hxx".}
proc DynamicType*(this: IGESSelect_SelectBasicGeom): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectBasicGeom.hxx".}