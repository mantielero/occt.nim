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
  STEPConstructStyles* {.importcpp: "STEPConstruct_Styles",
                        header: "STEPConstruct_Styles.hxx", bycopy.} = object of STEPConstructTool ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## tool


proc constructSTEPConstructStyles*(): STEPConstructStyles {.constructor,
    importcpp: "STEPConstruct_Styles(@)", header: "STEPConstruct_Styles.hxx".}
proc constructSTEPConstructStyles*(ws: Handle[XSControlWorkSession]): STEPConstructStyles {.
    constructor, importcpp: "STEPConstruct_Styles(@)",
    header: "STEPConstruct_Styles.hxx".}
proc init*(this: var STEPConstructStyles; ws: Handle[XSControlWorkSession]): StandardBoolean {.
    importcpp: "Init", header: "STEPConstruct_Styles.hxx".}
proc nbStyles*(this: STEPConstructStyles): StandardInteger {.noSideEffect,
    importcpp: "NbStyles", header: "STEPConstruct_Styles.hxx".}
proc style*(this: STEPConstructStyles; i: StandardInteger): Handle[
    StepVisualStyledItem] {.noSideEffect, importcpp: "Style",
                           header: "STEPConstruct_Styles.hxx".}
proc clearStyles*(this: var STEPConstructStyles) {.importcpp: "ClearStyles",
    header: "STEPConstruct_Styles.hxx".}
proc addStyle*(this: var STEPConstructStyles; style: Handle[StepVisualStyledItem]) {.
    importcpp: "AddStyle", header: "STEPConstruct_Styles.hxx".}
proc addStyle*(this: var STEPConstructStyles;
              item: Handle[StepReprRepresentationItem];
              psa: Handle[StepVisualPresentationStyleAssignment];
              override: Handle[StepVisualStyledItem]): Handle[StepVisualStyledItem] {.
    importcpp: "AddStyle", header: "STEPConstruct_Styles.hxx".}
proc addStyle*(this: var STEPConstructStyles; shape: TopoDS_Shape;
              psa: Handle[StepVisualPresentationStyleAssignment];
              override: Handle[StepVisualStyledItem]): Handle[StepVisualStyledItem] {.
    importcpp: "AddStyle", header: "STEPConstruct_Styles.hxx".}
proc createMDGPR*(this: var STEPConstructStyles;
                 context: Handle[StepReprRepresentationContext]; mdgpr: var Handle[
    StepVisualMechanicalDesignGeometricPresentationRepresentation]): StandardBoolean {.
    importcpp: "CreateMDGPR", header: "STEPConstruct_Styles.hxx".}
proc createNAUOSRD*(this: var STEPConstructStyles;
                   context: Handle[StepReprRepresentationContext];
                   cdsr: Handle[StepShapeContextDependentShapeRepresentation];
                   initPDS: Handle[StepReprProductDefinitionShape]): StandardBoolean {.
    importcpp: "CreateNAUOSRD", header: "STEPConstruct_Styles.hxx".}
proc findContext*(this: STEPConstructStyles; shape: TopoDS_Shape): Handle[
    StepReprRepresentationContext] {.noSideEffect, importcpp: "FindContext",
                                    header: "STEPConstruct_Styles.hxx".}
proc loadStyles*(this: var STEPConstructStyles): StandardBoolean {.
    importcpp: "LoadStyles", header: "STEPConstruct_Styles.hxx".}
proc loadInvisStyles*(this: STEPConstructStyles;
                     invSyles: var Handle[TColStdHSequenceOfTransient]): StandardBoolean {.
    noSideEffect, importcpp: "LoadInvisStyles", header: "STEPConstruct_Styles.hxx".}
proc makeColorPSA*(this: STEPConstructStyles;
                  item: Handle[StepReprRepresentationItem];
                  surfCol: Handle[StepVisualColour];
                  curveCol: Handle[StepVisualColour];
                  renderCol: Handle[StepVisualColour]; renderTransp: StandardReal;
                  isForNAUO: StandardBoolean = standardFalse): Handle[
    StepVisualPresentationStyleAssignment] {.noSideEffect,
    importcpp: "MakeColorPSA", header: "STEPConstruct_Styles.hxx".}
proc getColorPSA*(this: var STEPConstructStyles;
                 item: Handle[StepReprRepresentationItem];
                 col: Handle[StepVisualColour]): Handle[
    StepVisualPresentationStyleAssignment] {.importcpp: "GetColorPSA",
    header: "STEPConstruct_Styles.hxx".}
proc getColors*(this: STEPConstructStyles; style: Handle[StepVisualStyledItem];
               surfCol: var Handle[StepVisualColour];
               boundCol: var Handle[StepVisualColour];
               curveCol: var Handle[StepVisualColour];
               renderCol: var Handle[StepVisualColour];
               renderTransp: var StandardReal; isComponent: var StandardBoolean): StandardBoolean {.
    noSideEffect, importcpp: "GetColors", header: "STEPConstruct_Styles.hxx".}
proc encodeColor*(col: QuantityColor): Handle[StepVisualColour] {.
    importcpp: "STEPConstruct_Styles::EncodeColor(@)",
    header: "STEPConstruct_Styles.hxx".}
proc encodeColor*(col: QuantityColor;
                 dPDCs: var STEPConstructDataMapOfAsciiStringTransient;
                 colRGBs: var STEPConstructDataMapOfPointTransient): Handle[
    StepVisualColour] {.importcpp: "STEPConstruct_Styles::EncodeColor(@)",
                       header: "STEPConstruct_Styles.hxx".}
proc decodeColor*(colour: Handle[StepVisualColour]; col: var QuantityColor): StandardBoolean {.
    importcpp: "STEPConstruct_Styles::DecodeColor(@)",
    header: "STEPConstruct_Styles.hxx".}

