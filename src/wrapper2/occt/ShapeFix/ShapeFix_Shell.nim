##  Created on: 1998-08-12
##  Created by: Galina KULIKOVA
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

discard "forward decl of ShapeFix_Face"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
# when defined(Status):
#   discard
discard "forward decl of ShapeFix_Shell"
discard "forward decl of ShapeFix_Shell"
type
  HandleShapeFixShell* = Handle[ShapeFixShell]

## ! Fixing orientation of faces in shell

type
  ShapeFixShell* {.importcpp: "ShapeFix_Shell", header: "ShapeFix_Shell.hxx", bycopy.} = object of ShapeFixRoot ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructShapeFixShell*(): ShapeFixShell {.constructor,
    importcpp: "ShapeFix_Shell(@)", header: "ShapeFix_Shell.hxx".}
proc constructShapeFixShell*(shape: TopoDS_Shell): ShapeFixShell {.constructor,
    importcpp: "ShapeFix_Shell(@)", header: "ShapeFix_Shell.hxx".}
proc init*(this: var ShapeFixShell; shell: TopoDS_Shell) {.importcpp: "Init",
    header: "ShapeFix_Shell.hxx".}
proc perform*(this: var ShapeFixShell;
             theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "Perform", header: "ShapeFix_Shell.hxx".}
proc fixFaceOrientation*(this: var ShapeFixShell; shell: TopoDS_Shell;
                        isAccountMultiConex: StandardBoolean = standardTrue;
                        nonManifold: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "FixFaceOrientation", header: "ShapeFix_Shell.hxx".}
proc shell*(this: var ShapeFixShell): TopoDS_Shell {.importcpp: "Shell",
    header: "ShapeFix_Shell.hxx".}
proc shape*(this: var ShapeFixShell): TopoDS_Shape {.importcpp: "Shape",
    header: "ShapeFix_Shell.hxx".}
proc nbShells*(this: ShapeFixShell): StandardInteger {.noSideEffect,
    importcpp: "NbShells", header: "ShapeFix_Shell.hxx".}
proc errorFaces*(this: ShapeFixShell): TopoDS_Compound {.noSideEffect,
    importcpp: "ErrorFaces", header: "ShapeFix_Shell.hxx".}
proc status*(this: ShapeFixShell; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "Status", header: "ShapeFix_Shell.hxx".}
proc fixFaceTool*(this: var ShapeFixShell): Handle[ShapeFixFace] {.
    importcpp: "FixFaceTool", header: "ShapeFix_Shell.hxx".}
proc setMsgRegistrator*(this: var ShapeFixShell;
                       msgreg: Handle[ShapeExtendBasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeFix_Shell.hxx".}
proc setPrecision*(this: var ShapeFixShell; preci: StandardReal) {.
    importcpp: "SetPrecision", header: "ShapeFix_Shell.hxx".}
proc setMinTolerance*(this: var ShapeFixShell; mintol: StandardReal) {.
    importcpp: "SetMinTolerance", header: "ShapeFix_Shell.hxx".}
proc setMaxTolerance*(this: var ShapeFixShell; maxtol: StandardReal) {.
    importcpp: "SetMaxTolerance", header: "ShapeFix_Shell.hxx".}
proc fixFaceMode*(this: var ShapeFixShell): var StandardInteger {.
    importcpp: "FixFaceMode", header: "ShapeFix_Shell.hxx".}
proc fixOrientationMode*(this: var ShapeFixShell): var StandardInteger {.
    importcpp: "FixOrientationMode", header: "ShapeFix_Shell.hxx".}
proc setNonManifoldFlag*(this: var ShapeFixShell; isNonManifold: StandardBoolean) {.
    importcpp: "SetNonManifoldFlag", header: "ShapeFix_Shell.hxx".}
type
  ShapeFixShellbaseType* = ShapeFixRoot

proc getTypeName*(): cstring {.importcpp: "ShapeFix_Shell::get_type_name(@)",
                            header: "ShapeFix_Shell.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_Shell::get_type_descriptor(@)",
    header: "ShapeFix_Shell.hxx".}
proc dynamicType*(this: ShapeFixShell): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Shell.hxx".}

