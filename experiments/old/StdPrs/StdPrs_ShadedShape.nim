##  Created on: 1993-09-23
##  Created by: Jean Louis FRENKEL
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Graphic3d_ArrayOfSegments"
discard "forward decl of Graphic3d_ArrayOfTriangles"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt2d"
discard "forward decl of BRep_Builder"
discard "forward decl of TopoDS_Compound"
type
  StdPrsShadedShape* {.importcpp: "StdPrs_ShadedShape",
                      header: "StdPrs_ShadedShape.hxx", bycopy.} = object of Prs3dRoot ##
                                                                                ## !
                                                                                ## Shades
                                                                                ## <theShape>.
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theVolumeType
                                                                                ## defines
                                                                                ## the
                                                                                ## way
                                                                                ## how
                                                                                ## to
                                                                                ## interpret
                                                                                ## input
                                                                                ## shapes
                                                                                ## -
                                                                                ## as
                                                                                ## Closed
                                                                                ## volumes
                                                                                ## (to
                                                                                ## activate
                                                                                ## back-face
                                                                                ##
                                                                                ## !
                                                                                ## culling
                                                                                ## and
                                                                                ## capping
                                                                                ## plane
                                                                                ## algorithms),
                                                                                ## as
                                                                                ## Open
                                                                                ## volumes
                                                                                ## (shells
                                                                                ## or
                                                                                ## solids
                                                                                ## with
                                                                                ## holes)
                                                                                ##
                                                                                ## !
                                                                                ## or
                                                                                ## to
                                                                                ## perform
                                                                                ## Autodetection
                                                                                ## (would
                                                                                ## split
                                                                                ## input
                                                                                ## shape
                                                                                ## into
                                                                                ## two
                                                                                ## groups)
                                                                                ##
                                                                                ## !
                                                                                ## Create
                                                                                ## primitive
                                                                                ## array
                                                                                ## with
                                                                                ## triangles
                                                                                ## for
                                                                                ## specified
                                                                                ## shape.
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theShape
                                                                                ## [in]
                                                                                ## the
                                                                                ## shape
                                                                                ## with
                                                                                ## precomputed
                                                                                ## triangulation


proc add*(thePresentation: Handle[Prs3dPresentation]; theShape: TopoDS_Shape;
         theDrawer: Handle[Prs3dDrawer];
         theVolume: StdPrsVolume = stdPrsVolumeAutodetection) {.
    importcpp: "StdPrs_ShadedShape::Add(@)", header: "StdPrs_ShadedShape.hxx".}
proc add*(thePresentation: Handle[Prs3dPresentation]; theShape: TopoDS_Shape;
         theDrawer: Handle[Prs3dDrawer]; theHasTexels: bool; theUVOrigin: Pnt2d;
         theUVRepeat: Pnt2d; theUVScale: Pnt2d;
         theVolume: StdPrsVolume = stdPrsVolumeAutodetection) {.
    importcpp: "StdPrs_ShadedShape::Add(@)", header: "StdPrs_ShadedShape.hxx".}
proc exploreSolids*(theShape: TopoDS_Shape; theBuilder: BRepBuilder;
                   theClosed: var TopoDS_Compound; theOpened: var TopoDS_Compound;
                   theIgnore1DSubShape: bool) {.
    importcpp: "StdPrs_ShadedShape::ExploreSolids(@)",
    header: "StdPrs_ShadedShape.hxx".}
proc addWireframeForFreeElements*(thePrs: Handle[Prs3dPresentation];
                                 theShape: TopoDS_Shape;
                                 theDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "StdPrs_ShadedShape::AddWireframeForFreeElements(@)",
    header: "StdPrs_ShadedShape.hxx".}
proc addWireframeForFacesWithoutTriangles*(thePrs: Handle[Prs3dPresentation];
    theShape: TopoDS_Shape; theDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "StdPrs_ShadedShape::AddWireframeForFacesWithoutTriangles(@)",
    header: "StdPrs_ShadedShape.hxx".}
proc fillTriangles*(theShape: TopoDS_Shape): Handle[Graphic3dArrayOfTriangles] {.
    importcpp: "StdPrs_ShadedShape::FillTriangles(@)",
    header: "StdPrs_ShadedShape.hxx".}
proc fillTriangles*(theShape: TopoDS_Shape; theHasTexels: bool; theUVOrigin: Pnt2d;
                   theUVRepeat: Pnt2d; theUVScale: Pnt2d): Handle[
    Graphic3dArrayOfTriangles] {.importcpp: "StdPrs_ShadedShape::FillTriangles(@)",
                                header: "StdPrs_ShadedShape.hxx".}
proc fillFaceBoundaries*(theShape: TopoDS_Shape;
                        theUpperContinuity: GeomAbsShape = geomAbsCN): Handle[
    Graphic3dArrayOfSegments] {.importcpp: "StdPrs_ShadedShape::FillFaceBoundaries(@)",
                               header: "StdPrs_ShadedShape.hxx".}

























