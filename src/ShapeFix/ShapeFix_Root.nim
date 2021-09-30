##  Created on: 1999-08-09
##  Created by: Galina KULIKOVA
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Message_Msg"
discard "forward decl of ShapeFix_Root"
discard "forward decl of ShapeFix_Root"
type
  HandleC1C1* = Handle[ShapeFixRoot]

## ! Root class for fixing operations
## ! Provides context for recording changes (optional),
## ! basic precision value and limit (minimal and
## ! maximal) values for tolerances,
## ! and message registrator

type
  ShapeFixRoot* {.importcpp: "ShapeFix_Root", header: "ShapeFix_Root.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## Constructor
                                                                                                        ## (no
                                                                                                        ## context
                                                                                                        ## is
                                                                                                        ## created)
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Auxiliary
                                                                                                        ## method
                                                                                                        ## for
                                                                                                        ## work
                                                                                                        ## with
                                                                                                        ## three-position
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## (on/off/default)
                                                                                                        ## flags
                                                                                                        ## (modes)
                                                                                                        ## in
                                                                                                        ## ShapeFix.


proc constructShapeFixRoot*(): ShapeFixRoot {.constructor,
    importcpp: "ShapeFix_Root(@)", header: "ShapeFix_Root.hxx".}
proc set*(this: var ShapeFixRoot; root: Handle[ShapeFixRoot]) {.importcpp: "Set",
    header: "ShapeFix_Root.hxx".}
proc setContext*(this: var ShapeFixRoot; context: Handle[ShapeBuildReShape]) {.
    importcpp: "SetContext", header: "ShapeFix_Root.hxx".}
proc context*(this: ShapeFixRoot): Handle[ShapeBuildReShape] {.noSideEffect,
    importcpp: "Context", header: "ShapeFix_Root.hxx".}
proc setMsgRegistrator*(this: var ShapeFixRoot;
                       msgreg: Handle[ShapeExtendBasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeFix_Root.hxx".}
proc msgRegistrator*(this: ShapeFixRoot): Handle[ShapeExtendBasicMsgRegistrator] {.
    noSideEffect, importcpp: "MsgRegistrator", header: "ShapeFix_Root.hxx".}
proc setPrecision*(this: var ShapeFixRoot; preci: cfloat) {.importcpp: "SetPrecision",
    header: "ShapeFix_Root.hxx".}
proc precision*(this: ShapeFixRoot): cfloat {.noSideEffect, importcpp: "Precision",
    header: "ShapeFix_Root.hxx".}
proc setMinTolerance*(this: var ShapeFixRoot; mintol: cfloat) {.
    importcpp: "SetMinTolerance", header: "ShapeFix_Root.hxx".}
proc minTolerance*(this: ShapeFixRoot): cfloat {.noSideEffect,
    importcpp: "MinTolerance", header: "ShapeFix_Root.hxx".}
proc setMaxTolerance*(this: var ShapeFixRoot; maxtol: cfloat) {.
    importcpp: "SetMaxTolerance", header: "ShapeFix_Root.hxx".}
proc maxTolerance*(this: ShapeFixRoot): cfloat {.noSideEffect,
    importcpp: "MaxTolerance", header: "ShapeFix_Root.hxx".}
proc limitTolerance*(this: ShapeFixRoot; toler: cfloat): cfloat {.noSideEffect,
    importcpp: "LimitTolerance", header: "ShapeFix_Root.hxx".}
proc sendMsg*(this: ShapeFixRoot; shape: TopoDS_Shape; message: MessageMsg;
             gravity: MessageGravity = messageInfo) {.noSideEffect,
    importcpp: "SendMsg", header: "ShapeFix_Root.hxx".}
proc sendMsg*(this: ShapeFixRoot; message: MessageMsg;
             gravity: MessageGravity = messageInfo) {.noSideEffect,
    importcpp: "SendMsg", header: "ShapeFix_Root.hxx".}
proc sendWarning*(this: ShapeFixRoot; shape: TopoDS_Shape; message: MessageMsg) {.
    noSideEffect, importcpp: "SendWarning", header: "ShapeFix_Root.hxx".}
proc sendWarning*(this: ShapeFixRoot; message: MessageMsg) {.noSideEffect,
    importcpp: "SendWarning", header: "ShapeFix_Root.hxx".}
proc sendFail*(this: ShapeFixRoot; shape: TopoDS_Shape; message: MessageMsg) {.
    noSideEffect, importcpp: "SendFail", header: "ShapeFix_Root.hxx".}
proc sendFail*(this: ShapeFixRoot; message: MessageMsg) {.noSideEffect,
    importcpp: "SendFail", header: "ShapeFix_Root.hxx".}
type
  ShapeFixRootbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeFix_Root::get_type_name(@)",
                            header: "ShapeFix_Root.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_Root::get_type_descriptor(@)",
    header: "ShapeFix_Root.hxx".}
proc dynamicType*(this: ShapeFixRoot): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Root.hxx".}

























