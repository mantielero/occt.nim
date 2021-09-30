##  Created on: 1996-12-16
##  Created by: Bruno DUMORTIER
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

discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of BRepOffset_Offset"
discard "forward decl of BRepOffset_Inter3d"
type
  BiTgteBlend* {.importcpp: "BiTgte_Blend", header: "BiTgte_Blend.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Perform
                                                                                  ## the
                                                                                  ## generated
                                                                                  ## surfaces.


proc constructBiTgteBlend*(): BiTgteBlend {.constructor,
    importcpp: "BiTgte_Blend(@)", header: "BiTgte_Blend.hxx".}
proc constructBiTgteBlend*(s: TopoDS_Shape; radius: cfloat; tol: cfloat; nubs: bool): BiTgteBlend {.
    constructor, importcpp: "BiTgte_Blend(@)", header: "BiTgte_Blend.hxx".}
proc init*(this: var BiTgteBlend; s: TopoDS_Shape; radius: cfloat; tol: cfloat; nubs: bool) {.
    importcpp: "Init", header: "BiTgte_Blend.hxx".}
proc clear*(this: var BiTgteBlend) {.importcpp: "Clear", header: "BiTgte_Blend.hxx".}
proc setFaces*(this: var BiTgteBlend; f1: TopoDS_Face; f2: TopoDS_Face) {.
    importcpp: "SetFaces", header: "BiTgte_Blend.hxx".}
proc setEdge*(this: var BiTgteBlend; edge: TopoDS_Edge) {.importcpp: "SetEdge",
    header: "BiTgte_Blend.hxx".}
proc setStoppingFace*(this: var BiTgteBlend; face: TopoDS_Face) {.
    importcpp: "SetStoppingFace", header: "BiTgte_Blend.hxx".}
proc perform*(this: var BiTgteBlend; buildShape: bool = true) {.importcpp: "Perform",
    header: "BiTgte_Blend.hxx".}
proc isDone*(this: BiTgteBlend): bool {.noSideEffect, importcpp: "IsDone",
                                    header: "BiTgte_Blend.hxx".}
proc shape*(this: BiTgteBlend): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BiTgte_Blend.hxx".}
proc nbSurfaces*(this: BiTgteBlend): cint {.noSideEffect, importcpp: "NbSurfaces",
                                        header: "BiTgte_Blend.hxx".}
proc surface*(this: BiTgteBlend; index: cint): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "BiTgte_Blend.hxx".}
proc face*(this: BiTgteBlend; index: cint): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BiTgte_Blend.hxx".}
proc centerLines*(this: BiTgteBlend; lc: var TopToolsListOfShape) {.noSideEffect,
    importcpp: "CenterLines", header: "BiTgte_Blend.hxx".}
proc surface*(this: BiTgteBlend; centerLine: TopoDS_Shape): Handle[GeomSurface] {.
    noSideEffect, importcpp: "Surface", header: "BiTgte_Blend.hxx".}
proc face*(this: BiTgteBlend; centerLine: TopoDS_Shape): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BiTgte_Blend.hxx".}
proc contactType*(this: BiTgteBlend; index: cint): BiTgteContactType {.noSideEffect,
    importcpp: "ContactType", header: "BiTgte_Blend.hxx".}
proc supportShape1*(this: BiTgteBlend; index: cint): TopoDS_Shape {.noSideEffect,
    importcpp: "SupportShape1", header: "BiTgte_Blend.hxx".}
proc supportShape2*(this: BiTgteBlend; index: cint): TopoDS_Shape {.noSideEffect,
    importcpp: "SupportShape2", header: "BiTgte_Blend.hxx".}
proc curveOnShape1*(this: BiTgteBlend; index: cint): Handle[GeomCurve] {.noSideEffect,
    importcpp: "CurveOnShape1", header: "BiTgte_Blend.hxx".}
proc curveOnShape2*(this: BiTgteBlend; index: cint): Handle[GeomCurve] {.noSideEffect,
    importcpp: "CurveOnShape2", header: "BiTgte_Blend.hxx".}
proc pCurveOnFace1*(this: BiTgteBlend; index: cint): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "PCurveOnFace1", header: "BiTgte_Blend.hxx".}
proc pCurve1OnFillet*(this: BiTgteBlend; index: cint): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "PCurve1OnFillet", header: "BiTgte_Blend.hxx".}
proc pCurveOnFace2*(this: BiTgteBlend; index: cint): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "PCurveOnFace2", header: "BiTgte_Blend.hxx".}
proc pCurve2OnFillet*(this: BiTgteBlend; index: cint): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "PCurve2OnFillet", header: "BiTgte_Blend.hxx".}
proc nbBranches*(this: var BiTgteBlend): cint {.importcpp: "NbBranches",
    header: "BiTgte_Blend.hxx".}
proc indicesOfBranche*(this: BiTgteBlend; index: cint; `from`: var cint; to: var cint) {.
    noSideEffect, importcpp: "IndicesOfBranche", header: "BiTgte_Blend.hxx".}
proc computeCenters*(this: var BiTgteBlend) {.importcpp: "ComputeCenters",
    header: "BiTgte_Blend.hxx".}

























