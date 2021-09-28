##  Created on: 1994-08-30
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Draft_Modification"
discard "forward decl of Draft_Modification"
type
  HandleC1C1* = Handle[DraftModification]
  DraftModification* {.importcpp: "Draft_Modification",
                      header: "Draft_Modification.hxx", bycopy.} = object of BRepToolsModification


proc constructDraftModification*(s: TopoDS_Shape): DraftModification {.constructor,
    importcpp: "Draft_Modification(@)", header: "Draft_Modification.hxx".}
proc clear*(this: var DraftModification) {.importcpp: "Clear",
                                       header: "Draft_Modification.hxx".}
proc init*(this: var DraftModification; s: TopoDS_Shape) {.importcpp: "Init",
    header: "Draft_Modification.hxx".}
proc add*(this: var DraftModification; f: TopoDS_Face; direction: Dir; angle: cfloat;
         neutralPlane: Pln; flag: bool = true): bool {.importcpp: "Add",
    header: "Draft_Modification.hxx".}
proc remove*(this: var DraftModification; f: TopoDS_Face) {.importcpp: "Remove",
    header: "Draft_Modification.hxx".}
proc perform*(this: var DraftModification) {.importcpp: "Perform",
    header: "Draft_Modification.hxx".}
proc isDone*(this: DraftModification): bool {.noSideEffect, importcpp: "IsDone",
    header: "Draft_Modification.hxx".}
proc error*(this: DraftModification): DraftErrorStatus {.noSideEffect,
    importcpp: "Error", header: "Draft_Modification.hxx".}
proc problematicShape*(this: DraftModification): TopoDS_Shape {.noSideEffect,
    importcpp: "ProblematicShape", header: "Draft_Modification.hxx".}
proc connectedFaces*(this: var DraftModification; f: TopoDS_Face): TopToolsListOfShape {.
    importcpp: "ConnectedFaces", header: "Draft_Modification.hxx".}
proc modifiedFaces*(this: var DraftModification): TopToolsListOfShape {.
    importcpp: "ModifiedFaces", header: "Draft_Modification.hxx".}
proc newSurface*(this: var DraftModification; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation; tol: var cfloat;
                revWires: var bool; revFace: var bool): bool {.importcpp: "NewSurface",
    header: "Draft_Modification.hxx".}
proc newCurve*(this: var DraftModification; e: TopoDS_Edge; c: var Handle[GeomCurve];
              L: var TopLocLocation; tol: var cfloat): bool {.importcpp: "NewCurve",
    header: "Draft_Modification.hxx".}
proc newPoint*(this: var DraftModification; v: TopoDS_Vertex; p: var Pnt; tol: var cfloat): bool {.
    importcpp: "NewPoint", header: "Draft_Modification.hxx".}
proc newCurve2d*(this: var DraftModification; e: TopoDS_Edge; f: TopoDS_Face;
                newE: TopoDS_Edge; newF: TopoDS_Face; c: var Handle[Geom2dCurve];
                tol: var cfloat): bool {.importcpp: "NewCurve2d",
                                     header: "Draft_Modification.hxx".}
proc newParameter*(this: var DraftModification; v: TopoDS_Vertex; e: TopoDS_Edge;
                  p: var cfloat; tol: var cfloat): bool {.importcpp: "NewParameter",
    header: "Draft_Modification.hxx".}
proc continuity*(this: var DraftModification; e: TopoDS_Edge; f1: TopoDS_Face;
                f2: TopoDS_Face; newE: TopoDS_Edge; newF1: TopoDS_Face;
                newF2: TopoDS_Face): GeomAbsShape {.importcpp: "Continuity",
    header: "Draft_Modification.hxx".}
type
  DraftModificationbaseType* = BRepToolsModification

proc getTypeName*(): cstring {.importcpp: "Draft_Modification::get_type_name(@)",
                            header: "Draft_Modification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draft_Modification::get_type_descriptor(@)",
    header: "Draft_Modification.hxx".}
proc dynamicType*(this: DraftModification): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draft_Modification.hxx".}

























