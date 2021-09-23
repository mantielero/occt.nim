##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  ../Prs3d/Prs3d_Root, ../Prs3d/Prs3d_Drawer, ../Prs3d/Prs3d_Presentation,
  ../Prs3d/Prs3d_PointAspect, ../Prs3d/Prs3d_LineAspect,
  ../Prs3d/Prs3d_NListOfSequenceOfPnt, ../TColgp/TColgp_SequenceOfPnt,
  ../TopoDS/TopoDS_Shape, ../TopTools/TopTools_ListOfShape

discard "forward decl of Graphic3d_ArrayOfPoints"
type
  StdPrs_WFShape* {.importcpp: "StdPrs_WFShape", header: "StdPrs_WFShape.hxx", bycopy.} = object of Prs3d_Root ##
                                                                                                     ## !
                                                                                                     ## Computes
                                                                                                     ## wireframe
                                                                                                     ## presentation
                                                                                                     ## of
                                                                                                     ## a
                                                                                                     ## shape.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## thePresentation
                                                                                                     ## [in]
                                                                                                     ## the
                                                                                                     ## presentation.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## theShape
                                                                                                     ## [in]
                                                                                                     ## the
                                                                                                     ## shape.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## theDrawer
                                                                                                     ## [in]
                                                                                                     ## the
                                                                                                     ## draw
                                                                                                     ## settings.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## theIsParallel
                                                                                                     ## [in]
                                                                                                     ## perform
                                                                                                     ## algorithm
                                                                                                     ## using
                                                                                                     ## multiple
                                                                                                     ## threads
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Compute
                                                                                                     ## edge
                                                                                                     ## presentations
                                                                                                     ## for
                                                                                                     ## a
                                                                                                     ## shape.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## theShape
                                                                                                     ## [in]
                                                                                                     ## the
                                                                                                     ## shape
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## theDrawer
                                                                                                     ## [in]
                                                                                                     ## the
                                                                                                     ## drawer
                                                                                                     ## settings
                                                                                                     ## (deviation
                                                                                                     ## angle
                                                                                                     ## and
                                                                                                     ## maximal
                                                                                                     ## parameter
                                                                                                     ## value)
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## theShapeDeflection
                                                                                                     ## [in]
                                                                                                     ## the
                                                                                                     ## deflection
                                                                                                     ## for
                                                                                                     ## the
                                                                                                     ## wireframe
                                                                                                     ## shape
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## theWire
                                                                                                     ## [out]
                                                                                                     ## output
                                                                                                     ## polylines
                                                                                                     ## for
                                                                                                     ## lonely
                                                                                                     ## wires
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## theFree
                                                                                                     ## [out]
                                                                                                     ## output
                                                                                                     ## polylines
                                                                                                     ## for
                                                                                                     ## free
                                                                                                     ## edges
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## theUnFree
                                                                                                     ## [out]
                                                                                                     ## output
                                                                                                     ## polylines
                                                                                                     ## for
                                                                                                     ## non-free
                                                                                                     ## edges


proc Add*(thePresentation: handle[Prs3d_Presentation]; theShape: TopoDS_Shape;
         theDrawer: handle[Prs3d_Drawer];
         theIsParallel: Standard_Boolean = Standard_False) {.
    importcpp: "StdPrs_WFShape::Add(@)", header: "StdPrs_WFShape.hxx".}
proc AddEdgesOnTriangulation*(theShape: TopoDS_Shape; theToExcludeGeometric: Standard_Boolean = Standard_True): handle[
    Graphic3d_ArrayOfPrimitives] {.importcpp: "StdPrs_WFShape::AddEdgesOnTriangulation(@)",
                                  header: "StdPrs_WFShape.hxx".}
proc AddEdgesOnTriangulation*(theSegments: var TColgp_SequenceOfPnt;
                             theShape: TopoDS_Shape; theToExcludeGeometric: Standard_Boolean = Standard_True) {.
    importcpp: "StdPrs_WFShape::AddEdgesOnTriangulation(@)",
    header: "StdPrs_WFShape.hxx".}
proc AddAllEdges*(theShape: TopoDS_Shape; theDrawer: handle[Prs3d_Drawer]): handle[
    Graphic3d_ArrayOfPrimitives] {.importcpp: "StdPrs_WFShape::AddAllEdges(@)",
                                  header: "StdPrs_WFShape.hxx".}
proc AddVertexes*(theShape: TopoDS_Shape; theVertexMode: Prs3d_VertexDrawMode): handle[
    Graphic3d_ArrayOfPoints] {.importcpp: "StdPrs_WFShape::AddVertexes(@)",
                              header: "StdPrs_WFShape.hxx".}