##  Created on: 1996-09-03
##  Created by: Olga PILLOT
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  BRepFeatMakeDPrism* {.importcpp: "BRepFeat_MakeDPrism",
                       header: "BRepFeat_MakeDPrism.hxx", bycopy.} = object of BRepFeatForm ##
                                                                                     ## !
                                                                                     ## A
                                                                                     ## face
                                                                                     ## Pbase
                                                                                     ## is
                                                                                     ## selected
                                                                                     ## in
                                                                                     ## the
                                                                                     ## shape
                                                                                     ##
                                                                                     ## !
                                                                                     ## Sbase
                                                                                     ## to
                                                                                     ## serve
                                                                                     ## as
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## for
                                                                                     ## the
                                                                                     ## draft
                                                                                     ## prism.
                                                                                     ## The
                                                                                     ##
                                                                                     ## !
                                                                                     ## draft
                                                                                     ## will
                                                                                     ## be
                                                                                     ## defined
                                                                                     ## by
                                                                                     ## the
                                                                                     ## angle
                                                                                     ## Angle
                                                                                     ## and
                                                                                     ## Fuse
                                                                                     ## offers
                                                                                     ## a
                                                                                     ## choice
                                                                                     ## between:
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## removing
                                                                                     ## matter
                                                                                     ## with
                                                                                     ## a
                                                                                     ## Boolean
                                                                                     ## cut
                                                                                     ## using
                                                                                     ## the
                                                                                     ## setting
                                                                                     ## 0
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## adding
                                                                                     ## matter
                                                                                     ## with
                                                                                     ## Boolean
                                                                                     ## fusion
                                                                                     ## using
                                                                                     ## the
                                                                                     ## setting
                                                                                     ## 1.
                                                                                     ##
                                                                                     ## !
                                                                                     ## The
                                                                                     ## sketch
                                                                                     ## face
                                                                                     ## Skface
                                                                                     ## serves
                                                                                     ## to
                                                                                     ## determine
                                                                                     ## the
                                                                                     ## type
                                                                                     ## of
                                                                                     ##
                                                                                     ## !
                                                                                     ## operation.
                                                                                     ## If
                                                                                     ## it
                                                                                     ## is
                                                                                     ## inside
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## shape,
                                                                                     ## a
                                                                                     ## local
                                                                                     ##
                                                                                     ## !
                                                                                     ## operation
                                                                                     ## such
                                                                                     ## as
                                                                                     ## glueing
                                                                                     ## can
                                                                                     ## be
                                                                                     ## performed.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Initializes
                                                                                     ## the
                                                                                     ## draft
                                                                                     ## prism
                                                                                     ## class


proc constructBRepFeatMakeDPrism*(sbase: TopoDS_Shape; pbase: TopoDS_Face;
                                 skface: TopoDS_Face; angle: StandardReal;
                                 fuse: StandardInteger; modify: StandardBoolean): BRepFeatMakeDPrism {.
    constructor, importcpp: "BRepFeat_MakeDPrism(@)",
    header: "BRepFeat_MakeDPrism.hxx".}
proc constructBRepFeatMakeDPrism*(): BRepFeatMakeDPrism {.constructor,
    importcpp: "BRepFeat_MakeDPrism(@)", header: "BRepFeat_MakeDPrism.hxx".}
proc init*(this: var BRepFeatMakeDPrism; sbase: TopoDS_Shape; pbase: TopoDS_Face;
          skface: TopoDS_Face; angle: StandardReal; fuse: StandardInteger;
          modify: StandardBoolean) {.importcpp: "Init",
                                   header: "BRepFeat_MakeDPrism.hxx".}
proc add*(this: var BRepFeatMakeDPrism; e: TopoDS_Edge; onFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakeDPrism.hxx".}
proc perform*(this: var BRepFeatMakeDPrism; height: StandardReal) {.
    importcpp: "Perform", header: "BRepFeat_MakeDPrism.hxx".}
proc perform*(this: var BRepFeatMakeDPrism; until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakeDPrism.hxx".}
proc perform*(this: var BRepFeatMakeDPrism; `from`: TopoDS_Shape; until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakeDPrism.hxx".}
proc performUntilEnd*(this: var BRepFeatMakeDPrism) {.importcpp: "PerformUntilEnd",
    header: "BRepFeat_MakeDPrism.hxx".}
proc performFromEnd*(this: var BRepFeatMakeDPrism; fUntil: TopoDS_Shape) {.
    importcpp: "PerformFromEnd", header: "BRepFeat_MakeDPrism.hxx".}
proc performThruAll*(this: var BRepFeatMakeDPrism) {.importcpp: "PerformThruAll",
    header: "BRepFeat_MakeDPrism.hxx".}
proc performUntilHeight*(this: var BRepFeatMakeDPrism; until: TopoDS_Shape;
                        height: StandardReal) {.importcpp: "PerformUntilHeight",
    header: "BRepFeat_MakeDPrism.hxx".}
proc curves*(this: var BRepFeatMakeDPrism; s: var TColGeomSequenceOfCurve) {.
    importcpp: "Curves", header: "BRepFeat_MakeDPrism.hxx".}
proc barycCurve*(this: var BRepFeatMakeDPrism): Handle[GeomCurve] {.
    importcpp: "BarycCurve", header: "BRepFeat_MakeDPrism.hxx".}
proc bossEdges*(this: var BRepFeatMakeDPrism; sig: StandardInteger) {.
    importcpp: "BossEdges", header: "BRepFeat_MakeDPrism.hxx".}
proc topEdges*(this: var BRepFeatMakeDPrism): TopToolsListOfShape {.
    importcpp: "TopEdges", header: "BRepFeat_MakeDPrism.hxx".}
proc latEdges*(this: var BRepFeatMakeDPrism): TopToolsListOfShape {.
    importcpp: "LatEdges", header: "BRepFeat_MakeDPrism.hxx".}

