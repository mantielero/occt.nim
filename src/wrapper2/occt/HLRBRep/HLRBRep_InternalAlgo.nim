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

discard "forward decl of HLRBRep_Data"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of HLRAlgo_Projector"
discard "forward decl of HLRTopoBRep_OutLiner"
discard "forward decl of HLRBRep_ShapeBounds"
discard "forward decl of HLRBRep_InternalAlgo"
discard "forward decl of HLRBRep_InternalAlgo"
type
  HandleHLRBRepInternalAlgo* = Handle[HLRBRepInternalAlgo]
  HLRBRepInternalAlgo* {.importcpp: "HLRBRep_InternalAlgo",
                        header: "HLRBRep_InternalAlgo.hxx", bycopy.} = object of StandardTransient ##
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


proc constructHLRBRepInternalAlgo*(): HLRBRepInternalAlgo {.constructor,
    importcpp: "HLRBRep_InternalAlgo(@)", header: "HLRBRep_InternalAlgo.hxx".}
proc constructHLRBRepInternalAlgo*(a: Handle[HLRBRepInternalAlgo]): HLRBRepInternalAlgo {.
    constructor, importcpp: "HLRBRep_InternalAlgo(@)",
    header: "HLRBRep_InternalAlgo.hxx".}
proc projector*(this: var HLRBRepInternalAlgo; p: HLRAlgoProjector) {.
    importcpp: "Projector", header: "HLRBRep_InternalAlgo.hxx".}
proc projector*(this: var HLRBRepInternalAlgo): var HLRAlgoProjector {.
    importcpp: "Projector", header: "HLRBRep_InternalAlgo.hxx".}
proc update*(this: var HLRBRepInternalAlgo) {.importcpp: "Update",
    header: "HLRBRep_InternalAlgo.hxx".}
proc load*(this: var HLRBRepInternalAlgo; s: Handle[HLRTopoBRepOutLiner];
          sData: Handle[StandardTransient]; nbIso: StandardInteger = 0) {.
    importcpp: "Load", header: "HLRBRep_InternalAlgo.hxx".}
proc load*(this: var HLRBRepInternalAlgo; s: Handle[HLRTopoBRepOutLiner];
          nbIso: StandardInteger = 0) {.importcpp: "Load",
                                    header: "HLRBRep_InternalAlgo.hxx".}
proc index*(this: HLRBRepInternalAlgo; s: Handle[HLRTopoBRepOutLiner]): StandardInteger {.
    noSideEffect, importcpp: "Index", header: "HLRBRep_InternalAlgo.hxx".}
proc remove*(this: var HLRBRepInternalAlgo; i: StandardInteger) {.importcpp: "Remove",
    header: "HLRBRep_InternalAlgo.hxx".}
proc shapeData*(this: var HLRBRepInternalAlgo; i: StandardInteger;
               sData: Handle[StandardTransient]) {.importcpp: "ShapeData",
    header: "HLRBRep_InternalAlgo.hxx".}
proc seqOfShapeBounds*(this: var HLRBRepInternalAlgo): var HLRBRepSeqOfShapeBounds {.
    importcpp: "SeqOfShapeBounds", header: "HLRBRep_InternalAlgo.hxx".}
proc nbShapes*(this: HLRBRepInternalAlgo): StandardInteger {.noSideEffect,
    importcpp: "NbShapes", header: "HLRBRep_InternalAlgo.hxx".}
proc shapeBounds*(this: var HLRBRepInternalAlgo; i: StandardInteger): var HLRBRepShapeBounds {.
    importcpp: "ShapeBounds", header: "HLRBRep_InternalAlgo.hxx".}
proc initEdgeStatus*(this: var HLRBRepInternalAlgo) {.importcpp: "InitEdgeStatus",
    header: "HLRBRep_InternalAlgo.hxx".}
proc select*(this: var HLRBRepInternalAlgo) {.importcpp: "Select",
    header: "HLRBRep_InternalAlgo.hxx".}
proc select*(this: var HLRBRepInternalAlgo; i: StandardInteger) {.importcpp: "Select",
    header: "HLRBRep_InternalAlgo.hxx".}
proc selectEdge*(this: var HLRBRepInternalAlgo; i: StandardInteger) {.
    importcpp: "SelectEdge", header: "HLRBRep_InternalAlgo.hxx".}
proc selectFace*(this: var HLRBRepInternalAlgo; i: StandardInteger) {.
    importcpp: "SelectFace", header: "HLRBRep_InternalAlgo.hxx".}
proc showAll*(this: var HLRBRepInternalAlgo) {.importcpp: "ShowAll",
    header: "HLRBRep_InternalAlgo.hxx".}
proc showAll*(this: var HLRBRepInternalAlgo; i: StandardInteger) {.
    importcpp: "ShowAll", header: "HLRBRep_InternalAlgo.hxx".}
proc hideAll*(this: var HLRBRepInternalAlgo) {.importcpp: "HideAll",
    header: "HLRBRep_InternalAlgo.hxx".}
proc hideAll*(this: var HLRBRepInternalAlgo; i: StandardInteger) {.
    importcpp: "HideAll", header: "HLRBRep_InternalAlgo.hxx".}
proc partialHide*(this: var HLRBRepInternalAlgo) {.importcpp: "PartialHide",
    header: "HLRBRep_InternalAlgo.hxx".}
proc hide*(this: var HLRBRepInternalAlgo) {.importcpp: "Hide",
                                        header: "HLRBRep_InternalAlgo.hxx".}
proc hide*(this: var HLRBRepInternalAlgo; i: StandardInteger) {.importcpp: "Hide",
    header: "HLRBRep_InternalAlgo.hxx".}
proc hide*(this: var HLRBRepInternalAlgo; i: StandardInteger; j: StandardInteger) {.
    importcpp: "Hide", header: "HLRBRep_InternalAlgo.hxx".}
proc debug*(this: var HLRBRepInternalAlgo; deb: StandardBoolean) {.importcpp: "Debug",
    header: "HLRBRep_InternalAlgo.hxx".}
proc debug*(this: HLRBRepInternalAlgo): StandardBoolean {.noSideEffect,
    importcpp: "Debug", header: "HLRBRep_InternalAlgo.hxx".}
proc dataStructure*(this: HLRBRepInternalAlgo): Handle[HLRBRepData] {.noSideEffect,
    importcpp: "DataStructure", header: "HLRBRep_InternalAlgo.hxx".}
type
  HLRBRepInternalAlgobaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRBRep_InternalAlgo::get_type_name(@)",
                            header: "HLRBRep_InternalAlgo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRBRep_InternalAlgo::get_type_descriptor(@)",
    header: "HLRBRep_InternalAlgo.hxx".}
proc dynamicType*(this: HLRBRepInternalAlgo): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRBRep_InternalAlgo.hxx".}

