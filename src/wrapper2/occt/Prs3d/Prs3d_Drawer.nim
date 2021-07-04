##  Copyright (c) 1995-1999 Matra Datavision
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

## !!!Ignored construct:  # _Prs3d_Drawer_HeaderFile [NewLine] # _Prs3d_Drawer_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../Aspect/Aspect_TypeOfDeflection.hxx [NewLine] # ../Graphic3d/Graphic3d_GroupAspect.hxx [NewLine] # ../Graphic3d/Graphic3d_PresentationAttributes.hxx [NewLine] # ../Graphic3d/Graphic3d_ShaderProgram.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # Prs3d_VertexDrawMode.hxx [NewLine] # Prs3d_DimensionUnits.hxx [NewLine] # Prs3d_TypeOfHLR.hxx [NewLine] # ../Standard/Standard_Transient.hxx [NewLine] # ../GeomAbs/GeomAbs_Shape.hxx [NewLine] class Prs3d_IsoAspect ;
## Error: expected ';'!!!

discard "forward decl of Prs3d_LineAspect"
discard "forward decl of Prs3d_TextAspect"
discard "forward decl of Prs3d_ShadingAspect"
discard "forward decl of Prs3d_PointAspect"
discard "forward decl of Prs3d_PlaneAspect"
discard "forward decl of Prs3d_ArrowAspect"
discard "forward decl of Prs3d_DatumAspect"
discard "forward decl of Prs3d_DimensionAspect"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Prs3d_Drawer"
type
  Handle_Prs3d_DrawerPrs3d_Drawer* = handle[Prs3d_Drawer]

## ! A graphic attribute manager which governs how
## ! objects such as color, width, line thickness and deflection are displayed.
## ! A drawer includes an instance of the Aspect classes with particular default values.

type
  Prs3d_Drawer* {.importcpp: "Prs3d_Drawer", header: "Prs3d_Drawer.hxx", bycopy.} = object of Graphic3d_PresentationAttributes ##
                                                                                                                     ## !
                                                                                                                     ## Default
                                                                                                                     ## constructor.
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @name
                                                                                                                     ## deprecated
                                                                                                                     ## methods
    myNbPoints* {.importc: "myNbPoints".}: Standard_Integer
    myHasOwnNbPoints* {.importc: "myHasOwnNbPoints".}: Standard_Boolean
    myMaximalParameterValue* {.importc: "myMaximalParameterValue".}: Standard_Real
    myHasOwnMaximalParameterValue* {.importc: "myHasOwnMaximalParameterValue".}: Standard_Boolean
    myChordialDeviation* {.importc: "myChordialDeviation".}: Standard_Real
    myHasOwnChordialDeviation* {.importc: "myHasOwnChordialDeviation".}: Standard_Boolean
    myTypeOfDeflection* {.importc: "myTypeOfDeflection".}: Aspect_TypeOfDeflection
    myHasOwnTypeOfDeflection* {.importc: "myHasOwnTypeOfDeflection".}: Standard_Boolean
    myTypeOfHLR* {.importc: "myTypeOfHLR".}: Prs3d_TypeOfHLR
    myDeviationCoefficient* {.importc: "myDeviationCoefficient".}: Standard_Real
    myPreviousDeviationCoefficient* {.importc: "myPreviousDeviationCoefficient".}: Standard_Real
    myHasOwnDeviationCoefficient* {.importc: "myHasOwnDeviationCoefficient".}: Standard_Boolean
    myDeviationAngle* {.importc: "myDeviationAngle".}: Standard_Real
    myHasOwnDeviationAngle* {.importc: "myHasOwnDeviationAngle".}: Standard_Boolean
    myPreviousDeviationAngle* {.importc: "myPreviousDeviationAngle".}: Standard_Real
    myIsoOnPlane* {.importc: "myIsoOnPlane".}: Standard_Boolean
    myHasOwnIsoOnPlane* {.importc: "myHasOwnIsoOnPlane".}: Standard_Boolean
    myIsoOnTriangulation* {.importc: "myIsoOnTriangulation".}: Standard_Boolean
    myHasOwnIsoOnTriangulation* {.importc: "myHasOwnIsoOnTriangulation".}: Standard_Boolean
    myIsAutoTriangulated* {.importc: "myIsAutoTriangulated".}: Standard_Boolean
    myHasOwnIsAutoTriangulated* {.importc: "myHasOwnIsAutoTriangulated".}: Standard_Boolean
    myUIsoAspect* {.importc: "myUIsoAspect".}: handle[Prs3d_IsoAspect]
    myHasOwnUIsoAspect* {.importc: "myHasOwnUIsoAspect".}: Standard_Boolean
    myVIsoAspect* {.importc: "myVIsoAspect".}: handle[Prs3d_IsoAspect]
    myHasOwnVIsoAspect* {.importc: "myHasOwnVIsoAspect".}: Standard_Boolean
    myWireAspect* {.importc: "myWireAspect".}: handle[Prs3d_LineAspect]
    myHasOwnWireAspect* {.importc: "myHasOwnWireAspect".}: Standard_Boolean
    myWireDraw* {.importc: "myWireDraw".}: Standard_Boolean
    myHasOwnWireDraw* {.importc: "myHasOwnWireDraw".}: Standard_Boolean
    myPointAspect* {.importc: "myPointAspect".}: handle[Prs3d_PointAspect]
    myHasOwnPointAspect* {.importc: "myHasOwnPointAspect".}: Standard_Boolean
    myLineAspect* {.importc: "myLineAspect".}: handle[Prs3d_LineAspect]
    myHasOwnLineAspect* {.importc: "myHasOwnLineAspect".}: Standard_Boolean
    myTextAspect* {.importc: "myTextAspect".}: handle[Prs3d_TextAspect]
    myHasOwnTextAspect* {.importc: "myHasOwnTextAspect".}: Standard_Boolean
    myShadingAspect* {.importc: "myShadingAspect".}: handle[Prs3d_ShadingAspect]
    myHasOwnShadingAspect* {.importc: "myHasOwnShadingAspect".}: Standard_Boolean
    myPlaneAspect* {.importc: "myPlaneAspect".}: handle[Prs3d_PlaneAspect]
    myHasOwnPlaneAspect* {.importc: "myHasOwnPlaneAspect".}: Standard_Boolean
    mySeenLineAspect* {.importc: "mySeenLineAspect".}: handle[Prs3d_LineAspect]
    myHasOwnSeenLineAspect* {.importc: "myHasOwnSeenLineAspect".}: Standard_Boolean
    myArrowAspect* {.importc: "myArrowAspect".}: handle[Prs3d_ArrowAspect]
    myHasOwnArrowAspect* {.importc: "myHasOwnArrowAspect".}: Standard_Boolean
    myLineArrowDraw* {.importc: "myLineArrowDraw".}: Standard_Boolean
    myHasOwnLineArrowDraw* {.importc: "myHasOwnLineArrowDraw".}: Standard_Boolean
    myHiddenLineAspect* {.importc: "myHiddenLineAspect".}: handle[Prs3d_LineAspect]
    myHasOwnHiddenLineAspect* {.importc: "myHasOwnHiddenLineAspect".}: Standard_Boolean
    myDrawHiddenLine* {.importc: "myDrawHiddenLine".}: Standard_Boolean
    myHasOwnDrawHiddenLine* {.importc: "myHasOwnDrawHiddenLine".}: Standard_Boolean
    myVectorAspect* {.importc: "myVectorAspect".}: handle[Prs3d_LineAspect]
    myHasOwnVectorAspect* {.importc: "myHasOwnVectorAspect".}: Standard_Boolean
    myVertexDrawMode* {.importc: "myVertexDrawMode".}: Prs3d_VertexDrawMode
    myDatumAspect* {.importc: "myDatumAspect".}: handle[Prs3d_DatumAspect]
    myHasOwnDatumAspect* {.importc: "myHasOwnDatumAspect".}: Standard_Boolean
    mySectionAspect* {.importc: "mySectionAspect".}: handle[Prs3d_LineAspect]
    myHasOwnSectionAspect* {.importc: "myHasOwnSectionAspect".}: Standard_Boolean
    myFreeBoundaryAspect* {.importc: "myFreeBoundaryAspect".}: handle[
        Prs3d_LineAspect]
    myHasOwnFreeBoundaryAspect* {.importc: "myHasOwnFreeBoundaryAspect".}: Standard_Boolean
    myFreeBoundaryDraw* {.importc: "myFreeBoundaryDraw".}: Standard_Boolean
    myHasOwnFreeBoundaryDraw* {.importc: "myHasOwnFreeBoundaryDraw".}: Standard_Boolean
    myUnFreeBoundaryAspect* {.importc: "myUnFreeBoundaryAspect".}: handle[
        Prs3d_LineAspect]
    myHasOwnUnFreeBoundaryAspect* {.importc: "myHasOwnUnFreeBoundaryAspect".}: Standard_Boolean
    myUnFreeBoundaryDraw* {.importc: "myUnFreeBoundaryDraw".}: Standard_Boolean
    myHasOwnUnFreeBoundaryDraw* {.importc: "myHasOwnUnFreeBoundaryDraw".}: Standard_Boolean
    myFaceBoundaryAspect* {.importc: "myFaceBoundaryAspect".}: handle[
        Prs3d_LineAspect]
    myFaceBoundaryUpperContinuity* {.importc: "myFaceBoundaryUpperContinuity".}: Standard_Integer ## !< the most edge continuity class (GeomAbs_Shape) to be included to face boundaries presentation, or -1 if undefined
    myHasOwnFaceBoundaryAspect* {.importc: "myHasOwnFaceBoundaryAspect".}: Standard_Boolean
    myFaceBoundaryDraw* {.importc: "myFaceBoundaryDraw".}: Standard_Boolean
    myHasOwnFaceBoundaryDraw* {.importc: "myHasOwnFaceBoundaryDraw".}: Standard_Boolean
    myDimensionAspect* {.importc: "myDimensionAspect".}: handle[
        Prs3d_DimensionAspect]
    myHasOwnDimensionAspect* {.importc: "myHasOwnDimensionAspect".}: Standard_Boolean
    myDimensionModelUnits* {.importc: "myDimensionModelUnits".}: Prs3d_DimensionUnits
    myHasOwnDimLengthModelUnits* {.importc: "myHasOwnDimLengthModelUnits".}: Standard_Boolean
    myHasOwnDimAngleModelUnits* {.importc: "myHasOwnDimAngleModelUnits".}: Standard_Boolean
    myDimensionDisplayUnits* {.importc: "myDimensionDisplayUnits".}: Prs3d_DimensionUnits
    myHasOwnDimLengthDisplayUnits* {.importc: "myHasOwnDimLengthDisplayUnits".}: Standard_Boolean
    myHasOwnDimAngleDisplayUnits* {.importc: "myHasOwnDimAngleDisplayUnits".}: Standard_Boolean

  Prs3d_Drawerbase_type* = Graphic3d_PresentationAttributes

proc get_type_name*(): cstring {.importcpp: "Prs3d_Drawer::get_type_name(@)",
                              header: "Prs3d_Drawer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_Drawer::get_type_descriptor(@)", header: "Prs3d_Drawer.hxx".}
proc DynamicType*(this: Prs3d_Drawer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_Drawer.hxx".}
proc constructPrs3d_Drawer*(): Prs3d_Drawer {.constructor,
    importcpp: "Prs3d_Drawer(@)", header: "Prs3d_Drawer.hxx".}
proc SetTypeOfDeflection*(this: var Prs3d_Drawer;
                         theTypeOfDeflection: Aspect_TypeOfDeflection) {.
    importcpp: "SetTypeOfDeflection", header: "Prs3d_Drawer.hxx".}
proc TypeOfDeflection*(this: Prs3d_Drawer): Aspect_TypeOfDeflection {.noSideEffect,
    importcpp: "TypeOfDeflection", header: "Prs3d_Drawer.hxx".}
proc HasOwnTypeOfDeflection*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnTypeOfDeflection", header: "Prs3d_Drawer.hxx".}
proc SetMaximalChordialDeviation*(this: var Prs3d_Drawer;
                                 theChordialDeviation: Standard_Real) {.
    importcpp: "SetMaximalChordialDeviation", header: "Prs3d_Drawer.hxx".}
proc MaximalChordialDeviation*(this: Prs3d_Drawer): Standard_Real {.noSideEffect,
    importcpp: "MaximalChordialDeviation", header: "Prs3d_Drawer.hxx".}
proc HasOwnMaximalChordialDeviation*(this: Prs3d_Drawer): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnMaximalChordialDeviation",
    header: "Prs3d_Drawer.hxx".}
proc SetTypeOfHLR*(this: var Prs3d_Drawer; theTypeOfHLR: Prs3d_TypeOfHLR) {.
    importcpp: "SetTypeOfHLR", header: "Prs3d_Drawer.hxx".}
proc TypeOfHLR*(this: var Prs3d_Drawer): Prs3d_TypeOfHLR {.importcpp: "TypeOfHLR",
    header: "Prs3d_Drawer.hxx".}
proc HasOwnTypeOfHLR*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnTypeOfHLR", header: "Prs3d_Drawer.hxx".}
proc SetMaximalParameterValue*(this: var Prs3d_Drawer; theValue: Standard_Real) {.
    importcpp: "SetMaximalParameterValue", header: "Prs3d_Drawer.hxx".}
proc MaximalParameterValue*(this: Prs3d_Drawer): Standard_Real {.noSideEffect,
    importcpp: "MaximalParameterValue", header: "Prs3d_Drawer.hxx".}
proc HasOwnMaximalParameterValue*(this: Prs3d_Drawer): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnMaximalParameterValue",
    header: "Prs3d_Drawer.hxx".}
proc SetIsoOnPlane*(this: var Prs3d_Drawer; theIsEnabled: Standard_Boolean) {.
    importcpp: "SetIsoOnPlane", header: "Prs3d_Drawer.hxx".}
proc IsoOnPlane*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "IsoOnPlane", header: "Prs3d_Drawer.hxx".}
proc HasOwnIsoOnPlane*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnIsoOnPlane", header: "Prs3d_Drawer.hxx".}
proc IsoOnTriangulation*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "IsoOnTriangulation", header: "Prs3d_Drawer.hxx".}
proc HasOwnIsoOnTriangulation*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnIsoOnTriangulation", header: "Prs3d_Drawer.hxx".}
proc SetIsoOnTriangulation*(this: var Prs3d_Drawer; theToEnable: Standard_Boolean) {.
    importcpp: "SetIsoOnTriangulation", header: "Prs3d_Drawer.hxx".}
proc SetDiscretisation*(this: var Prs3d_Drawer; theValue: Standard_Integer) {.
    importcpp: "SetDiscretisation", header: "Prs3d_Drawer.hxx".}
proc Discretisation*(this: Prs3d_Drawer): Standard_Integer {.noSideEffect,
    importcpp: "Discretisation", header: "Prs3d_Drawer.hxx".}
proc HasOwnDiscretisation*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnDiscretisation", header: "Prs3d_Drawer.hxx".}
proc SetDeviationCoefficient*(this: var Prs3d_Drawer; theCoefficient: Standard_Real) {.
    importcpp: "SetDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc DeviationCoefficient*(this: Prs3d_Drawer): Standard_Real {.noSideEffect,
    importcpp: "DeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc SetDeviationCoefficient*(this: var Prs3d_Drawer) {.
    importcpp: "SetDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc HasOwnDeviationCoefficient*(this: Prs3d_Drawer): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnDeviationCoefficient",
    header: "Prs3d_Drawer.hxx".}
proc PreviousDeviationCoefficient*(this: Prs3d_Drawer): Standard_Real {.
    noSideEffect, importcpp: "PreviousDeviationCoefficient",
    header: "Prs3d_Drawer.hxx".}
proc UpdatePreviousDeviationCoefficient*(this: var Prs3d_Drawer) {.
    importcpp: "UpdatePreviousDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc SetDeviationAngle*(this: var Prs3d_Drawer; theAngle: Standard_Real) {.
    importcpp: "SetDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc DeviationAngle*(this: Prs3d_Drawer): Standard_Real {.noSideEffect,
    importcpp: "DeviationAngle", header: "Prs3d_Drawer.hxx".}
proc SetDeviationAngle*(this: var Prs3d_Drawer) {.importcpp: "SetDeviationAngle",
    header: "Prs3d_Drawer.hxx".}
proc HasOwnDeviationAngle*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc PreviousDeviationAngle*(this: Prs3d_Drawer): Standard_Real {.noSideEffect,
    importcpp: "PreviousDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc UpdatePreviousDeviationAngle*(this: var Prs3d_Drawer) {.
    importcpp: "UpdatePreviousDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc SetAutoTriangulation*(this: var Prs3d_Drawer; theIsEnabled: Standard_Boolean) {.
    importcpp: "SetAutoTriangulation", header: "Prs3d_Drawer.hxx".}
proc IsAutoTriangulation*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "IsAutoTriangulation", header: "Prs3d_Drawer.hxx".}
proc HasOwnIsAutoTriangulation*(this: Prs3d_Drawer): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnIsAutoTriangulation",
    header: "Prs3d_Drawer.hxx".}
proc UIsoAspect*(this: var Prs3d_Drawer): handle[Prs3d_IsoAspect] {.
    importcpp: "UIsoAspect", header: "Prs3d_Drawer.hxx".}
proc SetUIsoAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_IsoAspect]) {.
    importcpp: "SetUIsoAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnUIsoAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnUIsoAspect", header: "Prs3d_Drawer.hxx".}
proc VIsoAspect*(this: var Prs3d_Drawer): handle[Prs3d_IsoAspect] {.
    importcpp: "VIsoAspect", header: "Prs3d_Drawer.hxx".}
proc SetVIsoAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_IsoAspect]) {.
    importcpp: "SetVIsoAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnVIsoAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnVIsoAspect", header: "Prs3d_Drawer.hxx".}
proc WireAspect*(this: var Prs3d_Drawer): handle[Prs3d_LineAspect] {.
    importcpp: "WireAspect", header: "Prs3d_Drawer.hxx".}
proc SetWireAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_LineAspect]) {.
    importcpp: "SetWireAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnWireAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnWireAspect", header: "Prs3d_Drawer.hxx".}
proc SetWireDraw*(this: var Prs3d_Drawer; theIsEnabled: Standard_Boolean) {.
    importcpp: "SetWireDraw", header: "Prs3d_Drawer.hxx".}
proc WireDraw*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "WireDraw", header: "Prs3d_Drawer.hxx".}
proc HasOwnWireDraw*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnWireDraw", header: "Prs3d_Drawer.hxx".}
proc PointAspect*(this: var Prs3d_Drawer): handle[Prs3d_PointAspect] {.
    importcpp: "PointAspect", header: "Prs3d_Drawer.hxx".}
proc SetPointAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_PointAspect]) {.
    importcpp: "SetPointAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnPointAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnPointAspect", header: "Prs3d_Drawer.hxx".}
proc SetupOwnPointAspect*(this: var Prs3d_Drawer; theDefaults: handle[Prs3d_Drawer] = handle[
    Prs3d_Drawer]()): Standard_Boolean {.importcpp: "SetupOwnPointAspect",
                                       header: "Prs3d_Drawer.hxx".}
proc LineAspect*(this: var Prs3d_Drawer): handle[Prs3d_LineAspect] {.
    importcpp: "LineAspect", header: "Prs3d_Drawer.hxx".}
proc SetLineAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_LineAspect]) {.
    importcpp: "SetLineAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnLineAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnLineAspect", header: "Prs3d_Drawer.hxx".}
proc SetOwnLineAspects*(this: var Prs3d_Drawer; theDefaults: handle[Prs3d_Drawer] = handle[
    Prs3d_Drawer]()): Standard_Boolean {.importcpp: "SetOwnLineAspects",
                                       header: "Prs3d_Drawer.hxx".}
proc SetOwnDatumAspects*(this: var Prs3d_Drawer; theDefaults: handle[Prs3d_Drawer] = handle[
    Prs3d_Drawer]()): Standard_Boolean {.importcpp: "SetOwnDatumAspects",
                                       header: "Prs3d_Drawer.hxx".}
proc TextAspect*(this: var Prs3d_Drawer): handle[Prs3d_TextAspect] {.
    importcpp: "TextAspect", header: "Prs3d_Drawer.hxx".}
proc SetTextAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_TextAspect]) {.
    importcpp: "SetTextAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnTextAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnTextAspect", header: "Prs3d_Drawer.hxx".}
proc ShadingAspect*(this: var Prs3d_Drawer): handle[Prs3d_ShadingAspect] {.
    importcpp: "ShadingAspect", header: "Prs3d_Drawer.hxx".}
proc SetShadingAspect*(this: var Prs3d_Drawer;
                      theAspect: handle[Prs3d_ShadingAspect]) {.
    importcpp: "SetShadingAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnShadingAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnShadingAspect", header: "Prs3d_Drawer.hxx".}
proc SetupOwnShadingAspect*(this: var Prs3d_Drawer; theDefaults: handle[Prs3d_Drawer] = handle[
    Prs3d_Drawer]()): Standard_Boolean {.importcpp: "SetupOwnShadingAspect",
                                       header: "Prs3d_Drawer.hxx".}
proc SeenLineAspect*(this: var Prs3d_Drawer): handle[Prs3d_LineAspect] {.
    importcpp: "SeenLineAspect", header: "Prs3d_Drawer.hxx".}
proc SetSeenLineAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_LineAspect]) {.
    importcpp: "SetSeenLineAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnSeenLineAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnSeenLineAspect", header: "Prs3d_Drawer.hxx".}
proc PlaneAspect*(this: var Prs3d_Drawer): handle[Prs3d_PlaneAspect] {.
    importcpp: "PlaneAspect", header: "Prs3d_Drawer.hxx".}
proc SetPlaneAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_PlaneAspect]) {.
    importcpp: "SetPlaneAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnPlaneAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnPlaneAspect", header: "Prs3d_Drawer.hxx".}
proc ArrowAspect*(this: var Prs3d_Drawer): handle[Prs3d_ArrowAspect] {.
    importcpp: "ArrowAspect", header: "Prs3d_Drawer.hxx".}
proc SetArrowAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_ArrowAspect]) {.
    importcpp: "SetArrowAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnArrowAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnArrowAspect", header: "Prs3d_Drawer.hxx".}
proc SetLineArrowDraw*(this: var Prs3d_Drawer; theIsEnabled: Standard_Boolean) {.
    importcpp: "SetLineArrowDraw", header: "Prs3d_Drawer.hxx".}
proc LineArrowDraw*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "LineArrowDraw", header: "Prs3d_Drawer.hxx".}
proc HasOwnLineArrowDraw*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnLineArrowDraw", header: "Prs3d_Drawer.hxx".}
proc HiddenLineAspect*(this: var Prs3d_Drawer): handle[Prs3d_LineAspect] {.
    importcpp: "HiddenLineAspect", header: "Prs3d_Drawer.hxx".}
proc SetHiddenLineAspect*(this: var Prs3d_Drawer;
                         theAspect: handle[Prs3d_LineAspect]) {.
    importcpp: "SetHiddenLineAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnHiddenLineAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnHiddenLineAspect", header: "Prs3d_Drawer.hxx".}
proc DrawHiddenLine*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "DrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc EnableDrawHiddenLine*(this: var Prs3d_Drawer) {.
    importcpp: "EnableDrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc DisableDrawHiddenLine*(this: var Prs3d_Drawer) {.
    importcpp: "DisableDrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc HasOwnDrawHiddenLine*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnDrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc VectorAspect*(this: var Prs3d_Drawer): handle[Prs3d_LineAspect] {.
    importcpp: "VectorAspect", header: "Prs3d_Drawer.hxx".}
proc SetVectorAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_LineAspect]) {.
    importcpp: "SetVectorAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnVectorAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnVectorAspect", header: "Prs3d_Drawer.hxx".}
proc SetVertexDrawMode*(this: var Prs3d_Drawer; theMode: Prs3d_VertexDrawMode) {.
    importcpp: "SetVertexDrawMode", header: "Prs3d_Drawer.hxx".}
proc VertexDrawMode*(this: var Prs3d_Drawer): Prs3d_VertexDrawMode {.
    importcpp: "VertexDrawMode", header: "Prs3d_Drawer.hxx".}
proc HasOwnVertexDrawMode*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnVertexDrawMode", header: "Prs3d_Drawer.hxx".}
proc DatumAspect*(this: var Prs3d_Drawer): handle[Prs3d_DatumAspect] {.
    importcpp: "DatumAspect", header: "Prs3d_Drawer.hxx".}
proc SetDatumAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_DatumAspect]) {.
    importcpp: "SetDatumAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnDatumAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnDatumAspect", header: "Prs3d_Drawer.hxx".}
proc SectionAspect*(this: var Prs3d_Drawer): handle[Prs3d_LineAspect] {.
    importcpp: "SectionAspect", header: "Prs3d_Drawer.hxx".}
proc SetSectionAspect*(this: var Prs3d_Drawer; theAspect: handle[Prs3d_LineAspect]) {.
    importcpp: "SetSectionAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnSectionAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnSectionAspect", header: "Prs3d_Drawer.hxx".}
proc SetFreeBoundaryAspect*(this: var Prs3d_Drawer;
                           theAspect: handle[Prs3d_LineAspect]) {.
    importcpp: "SetFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc FreeBoundaryAspect*(this: var Prs3d_Drawer): handle[Prs3d_LineAspect] {.
    importcpp: "FreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnFreeBoundaryAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc SetFreeBoundaryDraw*(this: var Prs3d_Drawer; theIsEnabled: Standard_Boolean) {.
    importcpp: "SetFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc FreeBoundaryDraw*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "FreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc HasOwnFreeBoundaryDraw*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc SetUnFreeBoundaryAspect*(this: var Prs3d_Drawer;
                             theAspect: handle[Prs3d_LineAspect]) {.
    importcpp: "SetUnFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc UnFreeBoundaryAspect*(this: var Prs3d_Drawer): handle[Prs3d_LineAspect] {.
    importcpp: "UnFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnUnFreeBoundaryAspect*(this: Prs3d_Drawer): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnUnFreeBoundaryAspect",
    header: "Prs3d_Drawer.hxx".}
proc SetUnFreeBoundaryDraw*(this: var Prs3d_Drawer; theIsEnabled: Standard_Boolean) {.
    importcpp: "SetUnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc UnFreeBoundaryDraw*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "UnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc HasOwnUnFreeBoundaryDraw*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnUnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc SetFaceBoundaryAspect*(this: var Prs3d_Drawer;
                           theAspect: handle[Prs3d_LineAspect]) {.
    importcpp: "SetFaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc FaceBoundaryAspect*(this: var Prs3d_Drawer): handle[Prs3d_LineAspect] {.
    importcpp: "FaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnFaceBoundaryAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnFaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc SetupOwnFaceBoundaryAspect*(this: var Prs3d_Drawer; theDefaults: handle[
    Prs3d_Drawer] = handle[Prs3d_Drawer]()): Standard_Boolean {.
    importcpp: "SetupOwnFaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc SetFaceBoundaryDraw*(this: var Prs3d_Drawer; theIsEnabled: Standard_Boolean) {.
    importcpp: "SetFaceBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc FaceBoundaryDraw*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "FaceBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc HasOwnFaceBoundaryDraw*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnFaceBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc HasOwnFaceBoundaryUpperContinuity*(this: Prs3d_Drawer): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnFaceBoundaryUpperContinuity",
    header: "Prs3d_Drawer.hxx".}
proc FaceBoundaryUpperContinuity*(this: Prs3d_Drawer): GeomAbs_Shape {.noSideEffect,
    importcpp: "FaceBoundaryUpperContinuity", header: "Prs3d_Drawer.hxx".}
proc SetFaceBoundaryUpperContinuity*(this: var Prs3d_Drawer;
                                    theMostAllowedEdgeClass: GeomAbs_Shape) {.
    importcpp: "SetFaceBoundaryUpperContinuity", header: "Prs3d_Drawer.hxx".}
proc UnsetFaceBoundaryUpperContinuity*(this: var Prs3d_Drawer) {.
    importcpp: "UnsetFaceBoundaryUpperContinuity", header: "Prs3d_Drawer.hxx".}
proc DimensionAspect*(this: var Prs3d_Drawer): handle[Prs3d_DimensionAspect] {.
    importcpp: "DimensionAspect", header: "Prs3d_Drawer.hxx".}
proc SetDimensionAspect*(this: var Prs3d_Drawer;
                        theAspect: handle[Prs3d_DimensionAspect]) {.
    importcpp: "SetDimensionAspect", header: "Prs3d_Drawer.hxx".}
proc HasOwnDimensionAspect*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnDimensionAspect", header: "Prs3d_Drawer.hxx".}
proc SetDimLengthModelUnits*(this: var Prs3d_Drawer;
                            theUnits: TCollection_AsciiString) {.
    importcpp: "SetDimLengthModelUnits", header: "Prs3d_Drawer.hxx".}
proc SetDimAngleModelUnits*(this: var Prs3d_Drawer;
                           theUnits: TCollection_AsciiString) {.
    importcpp: "SetDimAngleModelUnits", header: "Prs3d_Drawer.hxx".}
proc DimLengthModelUnits*(this: Prs3d_Drawer): TCollection_AsciiString {.
    noSideEffect, importcpp: "DimLengthModelUnits", header: "Prs3d_Drawer.hxx".}
proc DimAngleModelUnits*(this: Prs3d_Drawer): TCollection_AsciiString {.
    noSideEffect, importcpp: "DimAngleModelUnits", header: "Prs3d_Drawer.hxx".}
proc HasOwnDimLengthModelUnits*(this: Prs3d_Drawer): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnDimLengthModelUnits",
    header: "Prs3d_Drawer.hxx".}
proc HasOwnDimAngleModelUnits*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnDimAngleModelUnits", header: "Prs3d_Drawer.hxx".}
proc SetDimLengthDisplayUnits*(this: var Prs3d_Drawer;
                              theUnits: TCollection_AsciiString) {.
    importcpp: "SetDimLengthDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc SetDimAngleDisplayUnits*(this: var Prs3d_Drawer;
                             theUnits: TCollection_AsciiString) {.
    importcpp: "SetDimAngleDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc DimLengthDisplayUnits*(this: Prs3d_Drawer): TCollection_AsciiString {.
    noSideEffect, importcpp: "DimLengthDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc DimAngleDisplayUnits*(this: Prs3d_Drawer): TCollection_AsciiString {.
    noSideEffect, importcpp: "DimAngleDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc HasOwnDimLengthDisplayUnits*(this: Prs3d_Drawer): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnDimLengthDisplayUnits",
    header: "Prs3d_Drawer.hxx".}
proc HasOwnDimAngleDisplayUnits*(this: Prs3d_Drawer): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnDimAngleDisplayUnits",
    header: "Prs3d_Drawer.hxx".}
proc Link*(this: var Prs3d_Drawer): handle[Prs3d_Drawer] {.importcpp: "Link",
    header: "Prs3d_Drawer.hxx".}
proc HasLink*(this: Prs3d_Drawer): Standard_Boolean {.noSideEffect,
    importcpp: "HasLink", header: "Prs3d_Drawer.hxx".}
proc Link*(this: var Prs3d_Drawer; theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "Link", header: "Prs3d_Drawer.hxx".}
proc SetLink*(this: var Prs3d_Drawer; theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "SetLink", header: "Prs3d_Drawer.hxx".}
proc ClearLocalAttributes*(this: var Prs3d_Drawer) {.
    importcpp: "ClearLocalAttributes", header: "Prs3d_Drawer.hxx".}
proc SetShaderProgram*(this: var Prs3d_Drawer;
                      theProgram: handle[Graphic3d_ShaderProgram];
                      theAspect: Graphic3d_GroupAspect;
                      theToOverrideDefaults: bool = false): bool {.
    importcpp: "SetShaderProgram", header: "Prs3d_Drawer.hxx".}
proc SetShadingModel*(this: var Prs3d_Drawer;
                     theModel: Graphic3d_TypeOfShadingModel;
                     theToOverrideDefaults: bool = false): bool {.
    importcpp: "SetShadingModel", header: "Prs3d_Drawer.hxx".}
proc DumpJson*(this: Prs3d_Drawer; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_Drawer.hxx".}
## !!!Ignored construct:  public : ! @name deprecated methods Standard_DEPRECATED ( SetDeviationAngle() should be used instead ) void SetHLRAngle ( const Standard_Real theAngle ) { SetDeviationAngle ( theAngle ) ; } Standard_DEPRECATED ( DeviationAngle() should be used instead ) Standard_Real HLRAngle ( ) const { return DeviationAngle ( ) ; } Standard_DEPRECATED ( SetDeviationAngle() should be used instead ) void SetHLRAngle ( ) { SetDeviationAngle ( ) ; } Standard_DEPRECATED ( HasOwnDeviationAngle() should be used instead ) Standard_Boolean HasOwnHLRDeviationAngle ( ) const { return HasOwnDeviationAngle ( ) ; } Standard_DEPRECATED ( PreviousDeviationAngle() should be used instead ) Standard_Real PreviousHLRDeviationAngle ( ) const { return PreviousDeviationAngle ( ) ; } protected : opencascade :: handle < Prs3d_Drawer > [end of template] myLink ;
## Error: identifier expected, but got: SetDeviationAngle() should be used instead!!!

## !!!Ignored construct:  Standard_DEPRECATED ( Class name is deprecated - use Prs3d_Drawer instead ) typedef Prs3d_Drawer Graphic3d_HighlightStyle ;
## Error: expected ';'!!!
