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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../TopoDS/TopoDS_Shape, ../Standard/Standard_Transient,
  ../Message/Message_Gravity, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../ShapeExtend/ShapeExtend_BasicMsgRegistrator

discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Message_Msg"
discard "forward decl of ShapeFix_Root"
discard "forward decl of ShapeFix_Root"
type
  Handle_ShapeFix_Root* = handle[ShapeFix_Root]

## ! Root class for fixing operations
## ! Provides context for recording changes (optional),
## ! basic precision value and limit (minimal and
## ! maximal) values for tolerances,
## ! and message registrator

type
  ShapeFix_Root* {.importcpp: "ShapeFix_Root", header: "ShapeFix_Root.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructShapeFix_Root*(): ShapeFix_Root {.constructor,
    importcpp: "ShapeFix_Root(@)", header: "ShapeFix_Root.hxx".}
proc Set*(this: var ShapeFix_Root; Root: handle[ShapeFix_Root]) {.importcpp: "Set",
    header: "ShapeFix_Root.hxx".}
proc SetContext*(this: var ShapeFix_Root; context: handle[ShapeBuild_ReShape]) {.
    importcpp: "SetContext", header: "ShapeFix_Root.hxx".}
proc Context*(this: ShapeFix_Root): handle[ShapeBuild_ReShape] {.noSideEffect,
    importcpp: "Context", header: "ShapeFix_Root.hxx".}
proc SetMsgRegistrator*(this: var ShapeFix_Root;
                       msgreg: handle[ShapeExtend_BasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeFix_Root.hxx".}
proc MsgRegistrator*(this: ShapeFix_Root): handle[ShapeExtend_BasicMsgRegistrator] {.
    noSideEffect, importcpp: "MsgRegistrator", header: "ShapeFix_Root.hxx".}
proc SetPrecision*(this: var ShapeFix_Root; preci: Standard_Real) {.
    importcpp: "SetPrecision", header: "ShapeFix_Root.hxx".}
proc Precision*(this: ShapeFix_Root): Standard_Real {.noSideEffect,
    importcpp: "Precision", header: "ShapeFix_Root.hxx".}
proc SetMinTolerance*(this: var ShapeFix_Root; mintol: Standard_Real) {.
    importcpp: "SetMinTolerance", header: "ShapeFix_Root.hxx".}
proc MinTolerance*(this: ShapeFix_Root): Standard_Real {.noSideEffect,
    importcpp: "MinTolerance", header: "ShapeFix_Root.hxx".}
proc SetMaxTolerance*(this: var ShapeFix_Root; maxtol: Standard_Real) {.
    importcpp: "SetMaxTolerance", header: "ShapeFix_Root.hxx".}
proc MaxTolerance*(this: ShapeFix_Root): Standard_Real {.noSideEffect,
    importcpp: "MaxTolerance", header: "ShapeFix_Root.hxx".}
proc LimitTolerance*(this: ShapeFix_Root; toler: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "LimitTolerance", header: "ShapeFix_Root.hxx".}
proc SendMsg*(this: ShapeFix_Root; shape: TopoDS_Shape; message: Message_Msg;
             gravity: Message_Gravity = Message_Info) {.noSideEffect,
    importcpp: "SendMsg", header: "ShapeFix_Root.hxx".}
proc SendMsg*(this: ShapeFix_Root; message: Message_Msg;
             gravity: Message_Gravity = Message_Info) {.noSideEffect,
    importcpp: "SendMsg", header: "ShapeFix_Root.hxx".}
proc SendWarning*(this: ShapeFix_Root; shape: TopoDS_Shape; message: Message_Msg) {.
    noSideEffect, importcpp: "SendWarning", header: "ShapeFix_Root.hxx".}
proc SendWarning*(this: ShapeFix_Root; message: Message_Msg) {.noSideEffect,
    importcpp: "SendWarning", header: "ShapeFix_Root.hxx".}
proc SendFail*(this: ShapeFix_Root; shape: TopoDS_Shape; message: Message_Msg) {.
    noSideEffect, importcpp: "SendFail", header: "ShapeFix_Root.hxx".}
proc SendFail*(this: ShapeFix_Root; message: Message_Msg) {.noSideEffect,
    importcpp: "SendFail", header: "ShapeFix_Root.hxx".}
type
  ShapeFix_Rootbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeFix_Root::get_type_name(@)",
                              header: "ShapeFix_Root.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_Root::get_type_descriptor(@)",
    header: "ShapeFix_Root.hxx".}
proc DynamicType*(this: ShapeFix_Root): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Root.hxx".}