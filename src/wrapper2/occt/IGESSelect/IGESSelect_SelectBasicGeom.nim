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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESSelect_SelectBasicGeom"
discard "forward decl of IGESSelect_SelectBasicGeom"
type
  HandleIGESSelectSelectBasicGeom* = Handle[IGESSelectSelectBasicGeom]

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
  IGESSelectSelectBasicGeom* {.importcpp: "IGESSelect_SelectBasicGeom",
                              header: "IGESSelect_SelectBasicGeom.hxx", bycopy.} = object of IFSelectSelectExplore ##
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


proc constructIGESSelectSelectBasicGeom*(mode: StandardInteger): IGESSelectSelectBasicGeom {.
    constructor, importcpp: "IGESSelect_SelectBasicGeom(@)",
    header: "IGESSelect_SelectBasicGeom.hxx".}
proc curvesOnly*(this: IGESSelectSelectBasicGeom): StandardBoolean {.noSideEffect,
    importcpp: "CurvesOnly", header: "IGESSelect_SelectBasicGeom.hxx".}
proc explore*(this: IGESSelectSelectBasicGeom; level: StandardInteger;
             ent: Handle[StandardTransient]; g: InterfaceGraph;
             explored: var InterfaceEntityIterator): StandardBoolean {.noSideEffect,
    importcpp: "Explore", header: "IGESSelect_SelectBasicGeom.hxx".}
proc exploreLabel*(this: IGESSelectSelectBasicGeom): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExploreLabel",
    header: "IGESSelect_SelectBasicGeom.hxx".}
proc subCurves*(ent: Handle[IGESDataIGESEntity];
               explored: var InterfaceEntityIterator): StandardBoolean {.
    importcpp: "IGESSelect_SelectBasicGeom::SubCurves(@)",
    header: "IGESSelect_SelectBasicGeom.hxx".}
type
  IGESSelectSelectBasicGeombaseType* = IFSelectSelectExplore

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SelectBasicGeom::get_type_name(@)",
                            header: "IGESSelect_SelectBasicGeom.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SelectBasicGeom::get_type_descriptor(@)",
    header: "IGESSelect_SelectBasicGeom.hxx".}
proc dynamicType*(this: IGESSelectSelectBasicGeom): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectBasicGeom.hxx".}

