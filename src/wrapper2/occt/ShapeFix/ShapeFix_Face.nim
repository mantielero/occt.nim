##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of ShapeAnalysis_Surface"
discard "forward decl of ShapeFix_Wire"
discard "forward decl of Geom_Surface"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
discard "forward decl of TopoDS_Wire"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of TopoDS_Vertex"
# when defined(Status):
#   discard
discard "forward decl of ShapeFix_Face"
discard "forward decl of ShapeFix_Face"
type
  HandleShapeFixFace* = Handle[ShapeFixFace]

## ! This operator allows to perform various fixes on face
## ! and its wires: fixes provided by ShapeFix_Wire,
## ! fixing orientation of wires, addition of natural bounds,
## ! fixing of missing seam edge,
## ! and detection and removal of null-area wires

type
  ShapeFixFace* {.importcpp: "ShapeFix_Face", header: "ShapeFix_Face.hxx", bycopy.} = object of ShapeFixRoot ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## an
                                                                                                   ## empty
                                                                                                   ## tool


proc constructShapeFixFace*(): ShapeFixFace {.constructor,
    importcpp: "ShapeFix_Face(@)", header: "ShapeFix_Face.hxx".}
proc constructShapeFixFace*(face: TopoDS_Face): ShapeFixFace {.constructor,
    importcpp: "ShapeFix_Face(@)", header: "ShapeFix_Face.hxx".}
proc clearModes*(this: var ShapeFixFace) {.importcpp: "ClearModes",
                                       header: "ShapeFix_Face.hxx".}
proc init*(this: var ShapeFixFace; face: TopoDS_Face) {.importcpp: "Init",
    header: "ShapeFix_Face.hxx".}
proc init*(this: var ShapeFixFace; surf: Handle[GeomSurface]; preci: StandardReal;
          fwd: StandardBoolean = standardTrue) {.importcpp: "Init",
    header: "ShapeFix_Face.hxx".}
proc init*(this: var ShapeFixFace; surf: Handle[ShapeAnalysisSurface];
          preci: StandardReal; fwd: StandardBoolean = standardTrue) {.
    importcpp: "Init", header: "ShapeFix_Face.hxx".}
proc setMsgRegistrator*(this: var ShapeFixFace;
                       msgreg: Handle[ShapeExtendBasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeFix_Face.hxx".}
proc setPrecision*(this: var ShapeFixFace; preci: StandardReal) {.
    importcpp: "SetPrecision", header: "ShapeFix_Face.hxx".}
proc setMinTolerance*(this: var ShapeFixFace; mintol: StandardReal) {.
    importcpp: "SetMinTolerance", header: "ShapeFix_Face.hxx".}
proc setMaxTolerance*(this: var ShapeFixFace; maxtol: StandardReal) {.
    importcpp: "SetMaxTolerance", header: "ShapeFix_Face.hxx".}
proc fixWireMode*(this: var ShapeFixFace): var StandardInteger {.
    importcpp: "FixWireMode", header: "ShapeFix_Face.hxx".}
proc fixOrientationMode*(this: var ShapeFixFace): var StandardInteger {.
    importcpp: "FixOrientationMode", header: "ShapeFix_Face.hxx".}
proc fixAddNaturalBoundMode*(this: var ShapeFixFace): var StandardInteger {.
    importcpp: "FixAddNaturalBoundMode", header: "ShapeFix_Face.hxx".}
proc fixMissingSeamMode*(this: var ShapeFixFace): var StandardInteger {.
    importcpp: "FixMissingSeamMode", header: "ShapeFix_Face.hxx".}
proc fixSmallAreaWireMode*(this: var ShapeFixFace): var StandardInteger {.
    importcpp: "FixSmallAreaWireMode", header: "ShapeFix_Face.hxx".}
proc removeSmallAreaFaceMode*(this: var ShapeFixFace): var StandardInteger {.
    importcpp: "RemoveSmallAreaFaceMode", header: "ShapeFix_Face.hxx".}
proc fixIntersectingWiresMode*(this: var ShapeFixFace): var StandardInteger {.
    importcpp: "FixIntersectingWiresMode", header: "ShapeFix_Face.hxx".}
proc fixLoopWiresMode*(this: var ShapeFixFace): var StandardInteger {.
    importcpp: "FixLoopWiresMode", header: "ShapeFix_Face.hxx".}
proc fixSplitFaceMode*(this: var ShapeFixFace): var StandardInteger {.
    importcpp: "FixSplitFaceMode", header: "ShapeFix_Face.hxx".}
proc autoCorrectPrecisionMode*(this: var ShapeFixFace): var StandardInteger {.
    importcpp: "AutoCorrectPrecisionMode", header: "ShapeFix_Face.hxx".}
proc fixPeriodicDegeneratedMode*(this: var ShapeFixFace): var StandardInteger {.
    importcpp: "FixPeriodicDegeneratedMode", header: "ShapeFix_Face.hxx".}
proc face*(this: ShapeFixFace): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "ShapeFix_Face.hxx".}
proc result*(this: ShapeFixFace): TopoDS_Shape {.noSideEffect, importcpp: "Result",
    header: "ShapeFix_Face.hxx".}
proc add*(this: var ShapeFixFace; wire: TopoDS_Wire) {.importcpp: "Add",
    header: "ShapeFix_Face.hxx".}
proc perform*(this: var ShapeFixFace): StandardBoolean {.importcpp: "Perform",
    header: "ShapeFix_Face.hxx".}
proc fixOrientation*(this: var ShapeFixFace): StandardBoolean {.
    importcpp: "FixOrientation", header: "ShapeFix_Face.hxx".}
proc fixOrientation*(this: var ShapeFixFace;
                    mapWires: var TopToolsDataMapOfShapeListOfShape): StandardBoolean {.
    importcpp: "FixOrientation", header: "ShapeFix_Face.hxx".}
proc fixAddNaturalBound*(this: var ShapeFixFace): StandardBoolean {.
    importcpp: "FixAddNaturalBound", header: "ShapeFix_Face.hxx".}
proc fixMissingSeam*(this: var ShapeFixFace): StandardBoolean {.
    importcpp: "FixMissingSeam", header: "ShapeFix_Face.hxx".}
proc fixSmallAreaWire*(this: var ShapeFixFace; theIsRemoveSmallFace: StandardBoolean): StandardBoolean {.
    importcpp: "FixSmallAreaWire", header: "ShapeFix_Face.hxx".}
proc fixLoopWire*(this: var ShapeFixFace; aResWires: var TopToolsSequenceOfShape): StandardBoolean {.
    importcpp: "FixLoopWire", header: "ShapeFix_Face.hxx".}
proc fixIntersectingWires*(this: var ShapeFixFace): StandardBoolean {.
    importcpp: "FixIntersectingWires", header: "ShapeFix_Face.hxx".}
proc fixWiresTwoCoincEdges*(this: var ShapeFixFace): StandardBoolean {.
    importcpp: "FixWiresTwoCoincEdges", header: "ShapeFix_Face.hxx".}
proc fixSplitFace*(this: var ShapeFixFace;
                  mapWires: TopToolsDataMapOfShapeListOfShape): StandardBoolean {.
    importcpp: "FixSplitFace", header: "ShapeFix_Face.hxx".}
proc fixPeriodicDegenerated*(this: var ShapeFixFace): StandardBoolean {.
    importcpp: "FixPeriodicDegenerated", header: "ShapeFix_Face.hxx".}
proc status*(this: ShapeFixFace; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "Status", header: "ShapeFix_Face.hxx".}
proc fixWireTool*(this: var ShapeFixFace): Handle[ShapeFixWire] {.
    importcpp: "FixWireTool", header: "ShapeFix_Face.hxx".}
type
  ShapeFixFacebaseType* = ShapeFixRoot

proc getTypeName*(): cstring {.importcpp: "ShapeFix_Face::get_type_name(@)",
                            header: "ShapeFix_Face.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_Face::get_type_descriptor(@)",
    header: "ShapeFix_Face.hxx".}
proc dynamicType*(this: ShapeFixFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Face.hxx".}

