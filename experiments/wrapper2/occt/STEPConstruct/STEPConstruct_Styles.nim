##  Created on: 1999-09-10
##  Created by: Andrey BETENEV
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle,
  ../TColStd/TColStd_IndexedDataMapOfTransientTransient,
  ../TColStd/TColStd_IndexedMapOfTransient,
  ../TColStd/TColStd_SequenceOfTransient, STEPConstruct_Tool,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HSequenceOfTransient,
  STEPConstruct_DataMapOfAsciiStringTransient,
  STEPConstruct_DataMapOfPointTransient

discard "forward decl of XSControl_WorkSession"
discard "forward decl of StepVisual_StyledItem"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepVisual_PresentationStyleAssignment"
discard "forward decl of TopoDS_Shape"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepVisual_MechanicalDesignGeometricPresentationRepresentation"
discard "forward decl of StepShape_ContextDependentShapeRepresentation"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepVisual_Colour"
discard "forward decl of Quantity_Color"
type
  STEPConstruct_Styles* {.importcpp: "STEPConstruct_Styles",
                         header: "STEPConstruct_Styles.hxx", bycopy.} = object of STEPConstruct_Tool ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## tool


proc constructSTEPConstruct_Styles*(): STEPConstruct_Styles {.constructor,
    importcpp: "STEPConstruct_Styles(@)", header: "STEPConstruct_Styles.hxx".}
proc constructSTEPConstruct_Styles*(WS: handle[XSControl_WorkSession]): STEPConstruct_Styles {.
    constructor, importcpp: "STEPConstruct_Styles(@)",
    header: "STEPConstruct_Styles.hxx".}
proc Init*(this: var STEPConstruct_Styles; WS: handle[XSControl_WorkSession]): Standard_Boolean {.
    importcpp: "Init", header: "STEPConstruct_Styles.hxx".}
proc NbStyles*(this: STEPConstruct_Styles): Standard_Integer {.noSideEffect,
    importcpp: "NbStyles", header: "STEPConstruct_Styles.hxx".}
proc Style*(this: STEPConstruct_Styles; i: Standard_Integer): handle[
    StepVisual_StyledItem] {.noSideEffect, importcpp: "Style",
                            header: "STEPConstruct_Styles.hxx".}
proc ClearStyles*(this: var STEPConstruct_Styles) {.importcpp: "ClearStyles",
    header: "STEPConstruct_Styles.hxx".}
proc AddStyle*(this: var STEPConstruct_Styles; style: handle[StepVisual_StyledItem]) {.
    importcpp: "AddStyle", header: "STEPConstruct_Styles.hxx".}
proc AddStyle*(this: var STEPConstruct_Styles;
              item: handle[StepRepr_RepresentationItem];
              PSA: handle[StepVisual_PresentationStyleAssignment];
              Override: handle[StepVisual_StyledItem]): handle[
    StepVisual_StyledItem] {.importcpp: "AddStyle",
                            header: "STEPConstruct_Styles.hxx".}
proc AddStyle*(this: var STEPConstruct_Styles; Shape: TopoDS_Shape;
              PSA: handle[StepVisual_PresentationStyleAssignment];
              Override: handle[StepVisual_StyledItem]): handle[
    StepVisual_StyledItem] {.importcpp: "AddStyle",
                            header: "STEPConstruct_Styles.hxx".}
proc CreateMDGPR*(this: var STEPConstruct_Styles;
                 Context: handle[StepRepr_RepresentationContext]; MDGPR: var handle[
    StepVisual_MechanicalDesignGeometricPresentationRepresentation]): Standard_Boolean {.
    importcpp: "CreateMDGPR", header: "STEPConstruct_Styles.hxx".}
proc CreateNAUOSRD*(this: var STEPConstruct_Styles;
                   Context: handle[StepRepr_RepresentationContext];
                   CDSR: handle[StepShape_ContextDependentShapeRepresentation];
                   initPDS: handle[StepRepr_ProductDefinitionShape]): Standard_Boolean {.
    importcpp: "CreateNAUOSRD", header: "STEPConstruct_Styles.hxx".}
proc FindContext*(this: STEPConstruct_Styles; Shape: TopoDS_Shape): handle[
    StepRepr_RepresentationContext] {.noSideEffect, importcpp: "FindContext",
                                     header: "STEPConstruct_Styles.hxx".}
proc LoadStyles*(this: var STEPConstruct_Styles): Standard_Boolean {.
    importcpp: "LoadStyles", header: "STEPConstruct_Styles.hxx".}
proc LoadInvisStyles*(this: STEPConstruct_Styles;
                     InvSyles: var handle[TColStd_HSequenceOfTransient]): Standard_Boolean {.
    noSideEffect, importcpp: "LoadInvisStyles", header: "STEPConstruct_Styles.hxx".}
proc MakeColorPSA*(this: STEPConstruct_Styles;
                  item: handle[StepRepr_RepresentationItem];
                  SurfCol: handle[StepVisual_Colour];
                  CurveCol: handle[StepVisual_Colour];
                  RenderCol: handle[StepVisual_Colour];
                  RenderTransp: Standard_Real;
                  isForNAUO: Standard_Boolean = Standard_False): handle[
    StepVisual_PresentationStyleAssignment] {.noSideEffect,
    importcpp: "MakeColorPSA", header: "STEPConstruct_Styles.hxx".}
proc GetColorPSA*(this: var STEPConstruct_Styles;
                 item: handle[StepRepr_RepresentationItem];
                 Col: handle[StepVisual_Colour]): handle[
    StepVisual_PresentationStyleAssignment] {.importcpp: "GetColorPSA",
    header: "STEPConstruct_Styles.hxx".}
proc GetColors*(this: STEPConstruct_Styles; style: handle[StepVisual_StyledItem];
               SurfCol: var handle[StepVisual_Colour];
               BoundCol: var handle[StepVisual_Colour];
               CurveCol: var handle[StepVisual_Colour];
               RenderCol: var handle[StepVisual_Colour];
               RenderTransp: var Standard_Real; IsComponent: var Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "GetColors", header: "STEPConstruct_Styles.hxx".}
proc EncodeColor*(Col: Quantity_Color): handle[StepVisual_Colour] {.
    importcpp: "STEPConstruct_Styles::EncodeColor(@)",
    header: "STEPConstruct_Styles.hxx".}
proc EncodeColor*(Col: Quantity_Color;
                 DPDCs: var STEPConstruct_DataMapOfAsciiStringTransient;
                 ColRGBs: var STEPConstruct_DataMapOfPointTransient): handle[
    StepVisual_Colour] {.importcpp: "STEPConstruct_Styles::EncodeColor(@)",
                        header: "STEPConstruct_Styles.hxx".}
proc DecodeColor*(Colour: handle[StepVisual_Colour]; Col: var Quantity_Color): Standard_Boolean {.
    importcpp: "STEPConstruct_Styles::DecodeColor(@)",
    header: "STEPConstruct_Styles.hxx".}