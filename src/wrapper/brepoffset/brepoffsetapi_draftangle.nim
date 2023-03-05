import brepoffset_types
import ../tkbrep/topods/topods_types
import ../tkmath/gp/gp_types
import ../tkbrep/toptools/toptools_types
import ../tkernel/message/message_types
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of DirObj"
discard "forward decl of PlnObj"
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


proc newBRepOffsetAPI_DraftAngle*(): BRepOffsetAPI_DraftAngle {.cdecl, constructor,
    importcpp: "BRepOffsetAPI_DraftAngle(@)".}
proc newBRepOffsetAPI_DraftAngle*(S: TopoDS_Shape): BRepOffsetAPI_DraftAngle {.
    cdecl, constructor, importcpp: "BRepOffsetAPI_DraftAngle(@)".}
proc Clear*(this: var BRepOffsetAPI_DraftAngle) {.cdecl, importcpp: "Clear",
    .}
proc Init*(this: var BRepOffsetAPI_DraftAngle; S: TopoDS_Shape) {.cdecl,
    importcpp: "Init".}
proc Add*(this: var BRepOffsetAPI_DraftAngle; F: TopoDS_Face; Direction: DirObj;
         Angle: cfloat; NeutralPlane: PlnObj; Flag: bool = true) {.cdecl,
    importcpp: "Add".}
proc AddDone*(this: BRepOffsetAPI_DraftAngle): bool {.noSideEffect, cdecl,
    importcpp: "AddDone".}
proc Remove*(this: var BRepOffsetAPI_DraftAngle; F: TopoDS_Face) {.cdecl,
    importcpp: "Remove".}
proc ProblematicShape*(this: BRepOffsetAPI_DraftAngle): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "ProblematicShape".}
# proc Status*(this: BRepOffsetAPI_DraftAngle): Draft_ErrorStatus {.noSideEffect,
#     cdecl, importcpp: "Status".}
proc ConnectedFaces*(this: BRepOffsetAPI_DraftAngle; F: TopoDS_Face): TopTools_ListOfShape {.
    noSideEffect, cdecl, importcpp: "ConnectedFaces".}
proc ModifiedFaces*(this: BRepOffsetAPI_DraftAngle): TopTools_ListOfShape {.
    noSideEffect, cdecl, importcpp: "ModifiedFaces".}
proc Build*(this: var BRepOffsetAPI_DraftAngle;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Build".}
proc CorrectWires*(this: var BRepOffsetAPI_DraftAngle) {.cdecl,
    importcpp: "CorrectWires".}
proc Generated*(this: var BRepOffsetAPI_DraftAngle; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Generated".}
proc Modified*(this: var BRepOffsetAPI_DraftAngle; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Modified".}
proc ModifiedShape*(this: BRepOffsetAPI_DraftAngle; S: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "ModifiedShape".}