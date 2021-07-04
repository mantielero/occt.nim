##  Created on: 1997-04-17
##  Created by: Christophe MARION
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../HLRAlgo/HLRAlgo_Projector,
  HLRBRep_SeqOfShapeBounds, ../BRepTopAdaptor/BRepTopAdaptor_MapOfShapeTool,
  ../Standard/Standard_Boolean, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of HLRBRep_Data"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of HLRAlgo_Projector"
discard "forward decl of HLRTopoBRep_OutLiner"
discard "forward decl of HLRBRep_ShapeBounds"
discard "forward decl of HLRBRep_InternalAlgo"
discard "forward decl of HLRBRep_InternalAlgo"
type
  Handle_HLRBRep_InternalAlgo* = handle[HLRBRep_InternalAlgo]
  HLRBRep_InternalAlgo* {.importcpp: "HLRBRep_InternalAlgo",
                         header: "HLRBRep_InternalAlgo.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## first
                                                                                              ## if
                                                                                              ## <SideFace>
                                                                                              ## own
                                                                                              ## hiding
                                                                                              ## of
                                                                                              ## the
                                                                                              ## side
                                                                                              ## faces.
                                                                                              ##
                                                                                              ## !
                                                                                              ## After
                                                                                              ## hiding
                                                                                              ## of
                                                                                              ## the
                                                                                              ## selected
                                                                                              ## parts
                                                                                              ## of
                                                                                              ## the
                                                                                              ##
                                                                                              ## !
                                                                                              ## DataStructure.


proc constructHLRBRep_InternalAlgo*(): HLRBRep_InternalAlgo {.constructor,
    importcpp: "HLRBRep_InternalAlgo(@)", header: "HLRBRep_InternalAlgo.hxx".}
proc constructHLRBRep_InternalAlgo*(A: handle[HLRBRep_InternalAlgo]): HLRBRep_InternalAlgo {.
    constructor, importcpp: "HLRBRep_InternalAlgo(@)",
    header: "HLRBRep_InternalAlgo.hxx".}
proc Projector*(this: var HLRBRep_InternalAlgo; P: HLRAlgo_Projector) {.
    importcpp: "Projector", header: "HLRBRep_InternalAlgo.hxx".}
proc Projector*(this: var HLRBRep_InternalAlgo): var HLRAlgo_Projector {.
    importcpp: "Projector", header: "HLRBRep_InternalAlgo.hxx".}
proc Update*(this: var HLRBRep_InternalAlgo) {.importcpp: "Update",
    header: "HLRBRep_InternalAlgo.hxx".}
proc Load*(this: var HLRBRep_InternalAlgo; S: handle[HLRTopoBRep_OutLiner];
          SData: handle[Standard_Transient]; nbIso: Standard_Integer = 0) {.
    importcpp: "Load", header: "HLRBRep_InternalAlgo.hxx".}
proc Load*(this: var HLRBRep_InternalAlgo; S: handle[HLRTopoBRep_OutLiner];
          nbIso: Standard_Integer = 0) {.importcpp: "Load",
                                     header: "HLRBRep_InternalAlgo.hxx".}
proc Index*(this: HLRBRep_InternalAlgo; S: handle[HLRTopoBRep_OutLiner]): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "HLRBRep_InternalAlgo.hxx".}
proc Remove*(this: var HLRBRep_InternalAlgo; I: Standard_Integer) {.
    importcpp: "Remove", header: "HLRBRep_InternalAlgo.hxx".}
proc ShapeData*(this: var HLRBRep_InternalAlgo; I: Standard_Integer;
               SData: handle[Standard_Transient]) {.importcpp: "ShapeData",
    header: "HLRBRep_InternalAlgo.hxx".}
proc SeqOfShapeBounds*(this: var HLRBRep_InternalAlgo): var HLRBRep_SeqOfShapeBounds {.
    importcpp: "SeqOfShapeBounds", header: "HLRBRep_InternalAlgo.hxx".}
proc NbShapes*(this: HLRBRep_InternalAlgo): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "HLRBRep_InternalAlgo.hxx".}
proc ShapeBounds*(this: var HLRBRep_InternalAlgo; I: Standard_Integer): var HLRBRep_ShapeBounds {.
    importcpp: "ShapeBounds", header: "HLRBRep_InternalAlgo.hxx".}
proc InitEdgeStatus*(this: var HLRBRep_InternalAlgo) {.importcpp: "InitEdgeStatus",
    header: "HLRBRep_InternalAlgo.hxx".}
proc Select*(this: var HLRBRep_InternalAlgo) {.importcpp: "Select",
    header: "HLRBRep_InternalAlgo.hxx".}
proc Select*(this: var HLRBRep_InternalAlgo; I: Standard_Integer) {.
    importcpp: "Select", header: "HLRBRep_InternalAlgo.hxx".}
proc SelectEdge*(this: var HLRBRep_InternalAlgo; I: Standard_Integer) {.
    importcpp: "SelectEdge", header: "HLRBRep_InternalAlgo.hxx".}
proc SelectFace*(this: var HLRBRep_InternalAlgo; I: Standard_Integer) {.
    importcpp: "SelectFace", header: "HLRBRep_InternalAlgo.hxx".}
proc ShowAll*(this: var HLRBRep_InternalAlgo) {.importcpp: "ShowAll",
    header: "HLRBRep_InternalAlgo.hxx".}
proc ShowAll*(this: var HLRBRep_InternalAlgo; I: Standard_Integer) {.
    importcpp: "ShowAll", header: "HLRBRep_InternalAlgo.hxx".}
proc HideAll*(this: var HLRBRep_InternalAlgo) {.importcpp: "HideAll",
    header: "HLRBRep_InternalAlgo.hxx".}
proc HideAll*(this: var HLRBRep_InternalAlgo; I: Standard_Integer) {.
    importcpp: "HideAll", header: "HLRBRep_InternalAlgo.hxx".}
proc PartialHide*(this: var HLRBRep_InternalAlgo) {.importcpp: "PartialHide",
    header: "HLRBRep_InternalAlgo.hxx".}
proc Hide*(this: var HLRBRep_InternalAlgo) {.importcpp: "Hide",
    header: "HLRBRep_InternalAlgo.hxx".}
proc Hide*(this: var HLRBRep_InternalAlgo; I: Standard_Integer) {.importcpp: "Hide",
    header: "HLRBRep_InternalAlgo.hxx".}
proc Hide*(this: var HLRBRep_InternalAlgo; I: Standard_Integer; J: Standard_Integer) {.
    importcpp: "Hide", header: "HLRBRep_InternalAlgo.hxx".}
proc Debug*(this: var HLRBRep_InternalAlgo; deb: Standard_Boolean) {.
    importcpp: "Debug", header: "HLRBRep_InternalAlgo.hxx".}
proc Debug*(this: HLRBRep_InternalAlgo): Standard_Boolean {.noSideEffect,
    importcpp: "Debug", header: "HLRBRep_InternalAlgo.hxx".}
proc DataStructure*(this: HLRBRep_InternalAlgo): handle[HLRBRep_Data] {.
    noSideEffect, importcpp: "DataStructure", header: "HLRBRep_InternalAlgo.hxx".}
type
  HLRBRep_InternalAlgobase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRBRep_InternalAlgo::get_type_name(@)",
                              header: "HLRBRep_InternalAlgo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRBRep_InternalAlgo::get_type_descriptor(@)",
    header: "HLRBRep_InternalAlgo.hxx".}
proc DynamicType*(this: HLRBRep_InternalAlgo): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRBRep_InternalAlgo.hxx".}