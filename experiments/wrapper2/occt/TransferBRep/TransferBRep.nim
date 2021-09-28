##  Created on: 1994-10-03
##  Created by: Christian CAILLET
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of TransferBRep_ShapeMapper"
discard "forward decl of Message_Printer"
discard "forward decl of Message_Msg"
discard "forward decl of TransferBRep_TransferResultInfo"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TransferBRep_Reader"
discard "forward decl of TransferBRep_ShapeInfo"
discard "forward decl of TransferBRep_BinderOfShape"
discard "forward decl of TransferBRep_ShapeBinder"
discard "forward decl of TransferBRep_ShapeListBinder"
discard "forward decl of TransferBRep_ShapeMapper"
discard "forward decl of TransferBRep_OrientedShapeMapper"
discard "forward decl of TransferBRep_TransferResultInfo"
type
  TransferBRep* {.importcpp: "TransferBRep", header: "TransferBRep.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Get
                                                                                   ## the
                                                                                   ## Shape
                                                                                   ## recorded
                                                                                   ## in
                                                                                   ## a
                                                                                   ## Binder
                                                                                   ##
                                                                                   ## !
                                                                                   ## If
                                                                                   ## the
                                                                                   ## Binder
                                                                                   ## brings
                                                                                   ## a
                                                                                   ## multiple
                                                                                   ## result,
                                                                                   ## search
                                                                                   ## for
                                                                                   ## the
                                                                                   ## Shape


proc shapeResult*(binder: Handle[TransferBinder]): TopoDS_Shape {.
    importcpp: "TransferBRep::ShapeResult(@)", header: "TransferBRep.hxx".}
proc shapeResult*(tp: Handle[TransferTransientProcess];
                 ent: Handle[StandardTransient]): TopoDS_Shape {.
    importcpp: "TransferBRep::ShapeResult(@)", header: "TransferBRep.hxx".}
proc setShapeResult*(tp: Handle[TransferTransientProcess];
                    ent: Handle[StandardTransient]; result: TopoDS_Shape) {.
    importcpp: "TransferBRep::SetShapeResult(@)", header: "TransferBRep.hxx".}
proc shapes*(tp: Handle[TransferTransientProcess]; rootsonly: bool = true): Handle[
    TopToolsHSequenceOfShape] {.importcpp: "TransferBRep::Shapes(@)",
                               header: "TransferBRep.hxx".}
proc shapes*(tp: Handle[TransferTransientProcess];
            list: Handle[TColStdHSequenceOfTransient]): Handle[
    TopToolsHSequenceOfShape] {.importcpp: "TransferBRep::Shapes(@)",
                               header: "TransferBRep.hxx".}
proc shapeState*(fp: Handle[TransferFinderProcess]; shape: TopoDS_Shape): TopAbsOrientation {.
    importcpp: "TransferBRep::ShapeState(@)", header: "TransferBRep.hxx".}
proc resultFromShape*(fp: Handle[TransferFinderProcess]; shape: TopoDS_Shape): Handle[
    TransferBinder] {.importcpp: "TransferBRep::ResultFromShape(@)",
                     header: "TransferBRep.hxx".}
proc transientFromShape*(fp: Handle[TransferFinderProcess]; shape: TopoDS_Shape): Handle[
    StandardTransient] {.importcpp: "TransferBRep::TransientFromShape(@)",
                        header: "TransferBRep.hxx".}
proc setTransientFromShape*(fp: Handle[TransferFinderProcess]; shape: TopoDS_Shape;
                           result: Handle[StandardTransient]) {.
    importcpp: "TransferBRep::SetTransientFromShape(@)",
    header: "TransferBRep.hxx".}
proc shapeMapper*(fp: Handle[TransferFinderProcess]; shape: TopoDS_Shape): Handle[
    TransferBRepShapeMapper] {.importcpp: "TransferBRep::ShapeMapper(@)",
                              header: "TransferBRep.hxx".}
proc transferResultInfo*(tp: Handle[TransferTransientProcess];
                        entityTypes: Handle[TColStdHSequenceOfTransient]; infoSeq: var Handle[
    TransferBRepHSequenceOfTransferResultInfo]) {.
    importcpp: "TransferBRep::TransferResultInfo(@)", header: "TransferBRep.hxx".}
proc transferResultInfo*(fp: Handle[TransferFinderProcess];
                        shapeTypes: Handle[TColStdHSequenceOfInteger]; infoSeq: var Handle[
    TransferBRepHSequenceOfTransferResultInfo]) {.
    importcpp: "TransferBRep::TransferResultInfo(@)", header: "TransferBRep.hxx".}
proc printResultInfo*(printer: Handle[MessagePrinter]; header: MessageMsg;
                     resultInfo: Handle[TransferBRepTransferResultInfo];
                     printEmpty: bool = true) {.
    importcpp: "TransferBRep::PrintResultInfo(@)", header: "TransferBRep.hxx".}
proc bRepCheck*(shape: TopoDS_Shape; lev: cint = 1): InterfaceCheckIterator {.
    importcpp: "TransferBRep::BRepCheck(@)", header: "TransferBRep.hxx".}
proc resultCheckList*(chl: InterfaceCheckIterator;
                     fp: Handle[TransferFinderProcess];
                     model: Handle[InterfaceInterfaceModel]): InterfaceCheckIterator {.
    importcpp: "TransferBRep::ResultCheckList(@)", header: "TransferBRep.hxx".}
proc checked*(chl: InterfaceCheckIterator; alsoshapes: bool = false): Handle[
    TColStdHSequenceOfTransient] {.importcpp: "TransferBRep::Checked(@)",
                                  header: "TransferBRep.hxx".}
proc checkedShapes*(chl: InterfaceCheckIterator): Handle[TopToolsHSequenceOfShape] {.
    importcpp: "TransferBRep::CheckedShapes(@)", header: "TransferBRep.hxx".}
proc checkObject*(chl: InterfaceCheckIterator; obj: Handle[StandardTransient]): InterfaceCheckIterator {.
    importcpp: "TransferBRep::CheckObject(@)", header: "TransferBRep.hxx".}

























