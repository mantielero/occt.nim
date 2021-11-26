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

discard "forward decl of Graphic3d_ArrayOfPoints"
type
  StdPrsWFShape* {.importcpp: "StdPrs_WFShape", header: "StdPrs_WFShape.hxx", bycopy.} = object of Prs3dRoot ##
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


proc add*(thePresentation: Handle[Prs3dPresentation]; theShape: TopoDS_Shape;
         theDrawer: Handle[Prs3dDrawer]; theIsParallel: bool = false) {.
    importcpp: "StdPrs_WFShape::Add(@)", header: "StdPrs_WFShape.hxx".}
proc addEdgesOnTriangulation*(theShape: TopoDS_Shape;
                             theToExcludeGeometric: bool = true): Handle[
    Graphic3dArrayOfPrimitives] {.importcpp: "StdPrs_WFShape::AddEdgesOnTriangulation(@)",
                                 header: "StdPrs_WFShape.hxx".}
proc addEdgesOnTriangulation*(theSegments: var TColgpSequenceOfPnt;
                             theShape: TopoDS_Shape;
                             theToExcludeGeometric: bool = true) {.
    importcpp: "StdPrs_WFShape::AddEdgesOnTriangulation(@)",
    header: "StdPrs_WFShape.hxx".}
proc addAllEdges*(theShape: TopoDS_Shape; theDrawer: Handle[Prs3dDrawer]): Handle[
    Graphic3dArrayOfPrimitives] {.importcpp: "StdPrs_WFShape::AddAllEdges(@)",
                                 header: "StdPrs_WFShape.hxx".}
proc addVertexes*(theShape: TopoDS_Shape; theVertexMode: Prs3dVertexDrawMode): Handle[
    Graphic3dArrayOfPoints] {.importcpp: "StdPrs_WFShape::AddVertexes(@)",
                             header: "StdPrs_WFShape.hxx".}

























