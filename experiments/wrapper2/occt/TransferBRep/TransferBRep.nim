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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_HSequenceOfShape,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HSequenceOfTransient,
  ../TopAbs/TopAbs_Orientation, TransferBRep_HSequenceOfTransferResultInfo,
  ../TColStd/TColStd_HSequenceOfInteger, ../Standard/Standard_Integer

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


proc ShapeResult*(binder: handle[Transfer_Binder]): TopoDS_Shape {.
    importcpp: "TransferBRep::ShapeResult(@)", header: "TransferBRep.hxx".}
proc ShapeResult*(TP: handle[Transfer_TransientProcess];
                 ent: handle[Standard_Transient]): TopoDS_Shape {.
    importcpp: "TransferBRep::ShapeResult(@)", header: "TransferBRep.hxx".}
proc SetShapeResult*(TP: handle[Transfer_TransientProcess];
                    ent: handle[Standard_Transient]; result: TopoDS_Shape) {.
    importcpp: "TransferBRep::SetShapeResult(@)", header: "TransferBRep.hxx".}
proc Shapes*(TP: handle[Transfer_TransientProcess];
            rootsonly: Standard_Boolean = Standard_True): handle[
    TopTools_HSequenceOfShape] {.importcpp: "TransferBRep::Shapes(@)",
                                header: "TransferBRep.hxx".}
proc Shapes*(TP: handle[Transfer_TransientProcess];
            list: handle[TColStd_HSequenceOfTransient]): handle[
    TopTools_HSequenceOfShape] {.importcpp: "TransferBRep::Shapes(@)",
                                header: "TransferBRep.hxx".}
proc ShapeState*(FP: handle[Transfer_FinderProcess]; shape: TopoDS_Shape): TopAbs_Orientation {.
    importcpp: "TransferBRep::ShapeState(@)", header: "TransferBRep.hxx".}
proc ResultFromShape*(FP: handle[Transfer_FinderProcess]; shape: TopoDS_Shape): handle[
    Transfer_Binder] {.importcpp: "TransferBRep::ResultFromShape(@)",
                      header: "TransferBRep.hxx".}
proc TransientFromShape*(FP: handle[Transfer_FinderProcess]; shape: TopoDS_Shape): handle[
    Standard_Transient] {.importcpp: "TransferBRep::TransientFromShape(@)",
                         header: "TransferBRep.hxx".}
proc SetTransientFromShape*(FP: handle[Transfer_FinderProcess];
                           shape: TopoDS_Shape; result: handle[Standard_Transient]) {.
    importcpp: "TransferBRep::SetTransientFromShape(@)",
    header: "TransferBRep.hxx".}
proc ShapeMapper*(FP: handle[Transfer_FinderProcess]; shape: TopoDS_Shape): handle[
    TransferBRep_ShapeMapper] {.importcpp: "TransferBRep::ShapeMapper(@)",
                               header: "TransferBRep.hxx".}
proc TransferResultInfo*(TP: handle[Transfer_TransientProcess];
                        EntityTypes: handle[TColStd_HSequenceOfTransient]; InfoSeq: var handle[
    TransferBRep_HSequenceOfTransferResultInfo]) {.
    importcpp: "TransferBRep::TransferResultInfo(@)", header: "TransferBRep.hxx".}
proc TransferResultInfo*(FP: handle[Transfer_FinderProcess];
                        ShapeTypes: handle[TColStd_HSequenceOfInteger]; InfoSeq: var handle[
    TransferBRep_HSequenceOfTransferResultInfo]) {.
    importcpp: "TransferBRep::TransferResultInfo(@)", header: "TransferBRep.hxx".}
proc PrintResultInfo*(Printer: handle[Message_Printer]; Header: Message_Msg;
                     ResultInfo: handle[TransferBRep_TransferResultInfo];
                     printEmpty: Standard_Boolean = Standard_True) {.
    importcpp: "TransferBRep::PrintResultInfo(@)", header: "TransferBRep.hxx".}
proc BRepCheck*(shape: TopoDS_Shape; lev: Standard_Integer = 1): Interface_CheckIterator {.
    importcpp: "TransferBRep::BRepCheck(@)", header: "TransferBRep.hxx".}
proc ResultCheckList*(chl: Interface_CheckIterator;
                     FP: handle[Transfer_FinderProcess];
                     model: handle[Interface_InterfaceModel]): Interface_CheckIterator {.
    importcpp: "TransferBRep::ResultCheckList(@)", header: "TransferBRep.hxx".}
proc Checked*(chl: Interface_CheckIterator;
             alsoshapes: Standard_Boolean = Standard_False): handle[
    TColStd_HSequenceOfTransient] {.importcpp: "TransferBRep::Checked(@)",
                                   header: "TransferBRep.hxx".}
proc CheckedShapes*(chl: Interface_CheckIterator): handle[TopTools_HSequenceOfShape] {.
    importcpp: "TransferBRep::CheckedShapes(@)", header: "TransferBRep.hxx".}
proc CheckObject*(chl: Interface_CheckIterator; obj: handle[Standard_Transient]): Interface_CheckIterator {.
    importcpp: "TransferBRep::CheckObject(@)", header: "TransferBRep.hxx".}