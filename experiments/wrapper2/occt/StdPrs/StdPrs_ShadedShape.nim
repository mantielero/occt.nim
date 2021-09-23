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

import
  ../GeomAbs/GeomAbs_Shape, ../Prs3d/Prs3d_Root, ../Prs3d/Prs3d_Drawer,
  StdPrs_Volume

discard "forward decl of Graphic3d_ArrayOfSegments"
discard "forward decl of Graphic3d_ArrayOfTriangles"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt2d"
discard "forward decl of BRep_Builder"
discard "forward decl of TopoDS_Compound"
type
  StdPrs_ShadedShape* {.importcpp: "StdPrs_ShadedShape",
                       header: "StdPrs_ShadedShape.hxx", bycopy.} = object of Prs3d_Root ##
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


proc Add*(thePresentation: handle[Prs3d_Presentation]; theShape: TopoDS_Shape;
         theDrawer: handle[Prs3d_Drawer];
         theVolume: StdPrs_Volume = StdPrs_Volume_Autodetection) {.
    importcpp: "StdPrs_ShadedShape::Add(@)", header: "StdPrs_ShadedShape.hxx".}
proc Add*(thePresentation: handle[Prs3d_Presentation]; theShape: TopoDS_Shape;
         theDrawer: handle[Prs3d_Drawer]; theHasTexels: Standard_Boolean;
         theUVOrigin: gp_Pnt2d; theUVRepeat: gp_Pnt2d; theUVScale: gp_Pnt2d;
         theVolume: StdPrs_Volume = StdPrs_Volume_Autodetection) {.
    importcpp: "StdPrs_ShadedShape::Add(@)", header: "StdPrs_ShadedShape.hxx".}
proc ExploreSolids*(theShape: TopoDS_Shape; theBuilder: BRep_Builder;
                   theClosed: var TopoDS_Compound; theOpened: var TopoDS_Compound;
                   theIgnore1DSubShape: Standard_Boolean) {.
    importcpp: "StdPrs_ShadedShape::ExploreSolids(@)",
    header: "StdPrs_ShadedShape.hxx".}
proc AddWireframeForFreeElements*(thePrs: handle[Prs3d_Presentation];
                                 theShape: TopoDS_Shape;
                                 theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "StdPrs_ShadedShape::AddWireframeForFreeElements(@)",
    header: "StdPrs_ShadedShape.hxx".}
proc AddWireframeForFacesWithoutTriangles*(thePrs: handle[Prs3d_Presentation];
    theShape: TopoDS_Shape; theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "StdPrs_ShadedShape::AddWireframeForFacesWithoutTriangles(@)",
    header: "StdPrs_ShadedShape.hxx".}
proc FillTriangles*(theShape: TopoDS_Shape): handle[Graphic3d_ArrayOfTriangles] {.
    importcpp: "StdPrs_ShadedShape::FillTriangles(@)",
    header: "StdPrs_ShadedShape.hxx".}
proc FillTriangles*(theShape: TopoDS_Shape; theHasTexels: Standard_Boolean;
                   theUVOrigin: gp_Pnt2d; theUVRepeat: gp_Pnt2d;
                   theUVScale: gp_Pnt2d): handle[Graphic3d_ArrayOfTriangles] {.
    importcpp: "StdPrs_ShadedShape::FillTriangles(@)",
    header: "StdPrs_ShadedShape.hxx".}
proc FillFaceBoundaries*(theShape: TopoDS_Shape;
                        theUpperContinuity: GeomAbs_Shape = GeomAbs_CN): handle[
    Graphic3d_ArrayOfSegments] {.importcpp: "StdPrs_ShadedShape::FillFaceBoundaries(@)",
                                header: "StdPrs_ShadedShape.hxx".}