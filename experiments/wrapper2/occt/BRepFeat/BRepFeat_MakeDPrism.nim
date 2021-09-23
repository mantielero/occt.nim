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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../Standard/Standard_Real,
  ../TColGeom/TColGeom_SequenceOfCurve, ../TopTools/TopTools_ListOfShape,
  BRepFeat_StatusError, BRepFeat_Form, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Geom_Curve"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  BRepFeat_MakeDPrism* {.importcpp: "BRepFeat_MakeDPrism",
                        header: "BRepFeat_MakeDPrism.hxx", bycopy.} = object of BRepFeat_Form ##
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


proc constructBRepFeat_MakeDPrism*(Sbase: TopoDS_Shape; Pbase: TopoDS_Face;
                                  Skface: TopoDS_Face; Angle: Standard_Real;
                                  Fuse: Standard_Integer; Modify: Standard_Boolean): BRepFeat_MakeDPrism {.
    constructor, importcpp: "BRepFeat_MakeDPrism(@)",
    header: "BRepFeat_MakeDPrism.hxx".}
proc constructBRepFeat_MakeDPrism*(): BRepFeat_MakeDPrism {.constructor,
    importcpp: "BRepFeat_MakeDPrism(@)", header: "BRepFeat_MakeDPrism.hxx".}
proc Init*(this: var BRepFeat_MakeDPrism; Sbase: TopoDS_Shape; Pbase: TopoDS_Face;
          Skface: TopoDS_Face; Angle: Standard_Real; Fuse: Standard_Integer;
          Modify: Standard_Boolean) {.importcpp: "Init",
                                    header: "BRepFeat_MakeDPrism.hxx".}
proc Add*(this: var BRepFeat_MakeDPrism; E: TopoDS_Edge; OnFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakeDPrism.hxx".}
proc Perform*(this: var BRepFeat_MakeDPrism; Height: Standard_Real) {.
    importcpp: "Perform", header: "BRepFeat_MakeDPrism.hxx".}
proc Perform*(this: var BRepFeat_MakeDPrism; Until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakeDPrism.hxx".}
proc Perform*(this: var BRepFeat_MakeDPrism; From: TopoDS_Shape; Until: TopoDS_Shape) {.
    importcpp: "Perform", header: "BRepFeat_MakeDPrism.hxx".}
proc PerformUntilEnd*(this: var BRepFeat_MakeDPrism) {.importcpp: "PerformUntilEnd",
    header: "BRepFeat_MakeDPrism.hxx".}
proc PerformFromEnd*(this: var BRepFeat_MakeDPrism; FUntil: TopoDS_Shape) {.
    importcpp: "PerformFromEnd", header: "BRepFeat_MakeDPrism.hxx".}
proc PerformThruAll*(this: var BRepFeat_MakeDPrism) {.importcpp: "PerformThruAll",
    header: "BRepFeat_MakeDPrism.hxx".}
proc PerformUntilHeight*(this: var BRepFeat_MakeDPrism; Until: TopoDS_Shape;
                        Height: Standard_Real) {.importcpp: "PerformUntilHeight",
    header: "BRepFeat_MakeDPrism.hxx".}
proc Curves*(this: var BRepFeat_MakeDPrism; S: var TColGeom_SequenceOfCurve) {.
    importcpp: "Curves", header: "BRepFeat_MakeDPrism.hxx".}
proc BarycCurve*(this: var BRepFeat_MakeDPrism): handle[Geom_Curve] {.
    importcpp: "BarycCurve", header: "BRepFeat_MakeDPrism.hxx".}
proc BossEdges*(this: var BRepFeat_MakeDPrism; sig: Standard_Integer) {.
    importcpp: "BossEdges", header: "BRepFeat_MakeDPrism.hxx".}
proc TopEdges*(this: var BRepFeat_MakeDPrism): TopTools_ListOfShape {.
    importcpp: "TopEdges", header: "BRepFeat_MakeDPrism.hxx".}
proc LatEdges*(this: var BRepFeat_MakeDPrism): TopTools_ListOfShape {.
    importcpp: "LatEdges", header: "BRepFeat_MakeDPrism.hxx".}