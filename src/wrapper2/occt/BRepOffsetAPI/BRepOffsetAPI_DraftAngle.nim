##  Created on: 1995-02-22
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_DataMapOfShapeShape,
  ../BRepBuilderAPI/BRepBuilderAPI_ModifyShape, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Draft/Draft_ErrorStatus,
  ../BRepTools/BRepTools_ReShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
when defined(Status):
  discard
## ! Taper-adding transformations on a shape.
## ! The resulting shape is constructed by defining one face
## ! to be tapered after another one, as well as the
## ! geometric properties of their tapered transformation.
## ! Each tapered transformation is propagated along the
## ! series of faces which are tangential to one another and
## ! which contains the face to be tapered.
## ! This algorithm is useful in the construction of molds or
## ! dies. It facilitates the removal of the article being produced.
## ! A DraftAngle object provides a framework for:
## ! - initializing the construction algorithm with a given shape,
## ! - acquiring the data characterizing the faces to be tapered,
## ! - implementing the construction algorithm, and
## ! - consulting the results.
## ! Warning
## ! - This algorithm treats planar, cylindrical and conical faces.
## ! - Do not use shapes, which with a draft angle added to
## ! a face would modify the topology. This would, for
## ! example, involve creation of new vertices, edges or
## ! faces, or suppression of existing vertices, edges or faces.
## ! - Any face, which is continuous in tangency with the
## ! face to be tapered, will also be tapered. These
## ! connected faces must also respect the above criteria.

type
  BRepOffsetAPI_DraftAngle* {.importcpp: "BRepOffsetAPI_DraftAngle",
                             header: "BRepOffsetAPI_DraftAngle.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape ##
                                                                                                              ## !
                                                                                                              ## Constructs
                                                                                                              ## an
                                                                                                              ## empty
                                                                                                              ## algorithm
                                                                                                              ## to
                                                                                                              ## perform
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## taper-adding
                                                                                                              ## transformations
                                                                                                              ## on
                                                                                                              ## faces
                                                                                                              ## of
                                                                                                              ## a
                                                                                                              ## shape.
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Use
                                                                                                              ## the
                                                                                                              ## Init
                                                                                                              ## function
                                                                                                              ## to
                                                                                                              ## define
                                                                                                              ## the
                                                                                                              ## shape
                                                                                                              ## to
                                                                                                              ## be
                                                                                                              ## tapered.


proc constructBRepOffsetAPI_DraftAngle*(): BRepOffsetAPI_DraftAngle {.constructor,
    importcpp: "BRepOffsetAPI_DraftAngle(@)",
    header: "BRepOffsetAPI_DraftAngle.hxx".}
proc constructBRepOffsetAPI_DraftAngle*(S: TopoDS_Shape): BRepOffsetAPI_DraftAngle {.
    constructor, importcpp: "BRepOffsetAPI_DraftAngle(@)",
    header: "BRepOffsetAPI_DraftAngle.hxx".}
proc Clear*(this: var BRepOffsetAPI_DraftAngle) {.importcpp: "Clear",
    header: "BRepOffsetAPI_DraftAngle.hxx".}
proc Init*(this: var BRepOffsetAPI_DraftAngle; S: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepOffsetAPI_DraftAngle.hxx".}
proc Add*(this: var BRepOffsetAPI_DraftAngle; F: TopoDS_Face; Direction: gp_Dir;
         Angle: Standard_Real; NeutralPlane: gp_Pln;
         Flag: Standard_Boolean = Standard_True) {.importcpp: "Add",
    header: "BRepOffsetAPI_DraftAngle.hxx".}
proc AddDone*(this: BRepOffsetAPI_DraftAngle): Standard_Boolean {.noSideEffect,
    importcpp: "AddDone", header: "BRepOffsetAPI_DraftAngle.hxx".}
proc Remove*(this: var BRepOffsetAPI_DraftAngle; F: TopoDS_Face) {.
    importcpp: "Remove", header: "BRepOffsetAPI_DraftAngle.hxx".}
proc ProblematicShape*(this: BRepOffsetAPI_DraftAngle): TopoDS_Shape {.noSideEffect,
    importcpp: "ProblematicShape", header: "BRepOffsetAPI_DraftAngle.hxx".}
proc Status*(this: BRepOffsetAPI_DraftAngle): Draft_ErrorStatus {.noSideEffect,
    importcpp: "Status", header: "BRepOffsetAPI_DraftAngle.hxx".}
proc ConnectedFaces*(this: BRepOffsetAPI_DraftAngle; F: TopoDS_Face): TopTools_ListOfShape {.
    noSideEffect, importcpp: "ConnectedFaces",
    header: "BRepOffsetAPI_DraftAngle.hxx".}
proc ModifiedFaces*(this: BRepOffsetAPI_DraftAngle): TopTools_ListOfShape {.
    noSideEffect, importcpp: "ModifiedFaces",
    header: "BRepOffsetAPI_DraftAngle.hxx".}
proc Build*(this: var BRepOffsetAPI_DraftAngle) {.importcpp: "Build",
    header: "BRepOffsetAPI_DraftAngle.hxx".}
proc CorrectWires*(this: var BRepOffsetAPI_DraftAngle) {.importcpp: "CorrectWires",
    header: "BRepOffsetAPI_DraftAngle.hxx".}
proc Generated*(this: var BRepOffsetAPI_DraftAngle; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_DraftAngle.hxx".}
proc Modified*(this: var BRepOffsetAPI_DraftAngle; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepOffsetAPI_DraftAngle.hxx".}
proc ModifiedShape*(this: BRepOffsetAPI_DraftAngle; S: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape",
    header: "BRepOffsetAPI_DraftAngle.hxx".}