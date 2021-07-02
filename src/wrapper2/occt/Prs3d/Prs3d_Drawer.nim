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

## !!!Ignored construct:  # _Prs3d_Drawer_HeaderFile [NewLine] # _Prs3d_Drawer_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Aspect_TypeOfDeflection . hxx > [NewLine] # < Graphic3d_GroupAspect . hxx > [NewLine] # < Graphic3d_PresentationAttributes . hxx > [NewLine] # < Graphic3d_ShaderProgram . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Prs3d_VertexDrawMode . hxx > [NewLine] # < Prs3d_DimensionUnits . hxx > [NewLine] # < Prs3d_TypeOfHLR . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < GeomAbs_Shape . hxx > [NewLine] class Prs3d_IsoAspect ;
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
  HandlePrs3dDrawerPrs3dDrawer* = Handle[Prs3dDrawer]

## ! A graphic attribute manager which governs how
## ! objects such as color, width, line thickness and deflection are displayed.
## ! A drawer includes an instance of the Aspect classes with particular default values.

type
  Prs3dDrawer* {.importcpp: "Prs3d_Drawer", header: "Prs3d_Drawer.hxx", bycopy.} = object of Graphic3dPresentationAttributes ##
                                                                                                                   ## !
                                                                                                                   ## Default
                                                                                                                   ## constructor.
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## @name
                                                                                                                   ## deprecated
                                                                                                                   ## methods
    myNbPoints* {.importc: "myNbPoints".}: StandardInteger
    myHasOwnNbPoints* {.importc: "myHasOwnNbPoints".}: StandardBoolean
    myMaximalParameterValue* {.importc: "myMaximalParameterValue".}: StandardReal
    myHasOwnMaximalParameterValue* {.importc: "myHasOwnMaximalParameterValue".}: StandardBoolean
    myChordialDeviation* {.importc: "myChordialDeviation".}: StandardReal
    myHasOwnChordialDeviation* {.importc: "myHasOwnChordialDeviation".}: StandardBoolean
    myTypeOfDeflection* {.importc: "myTypeOfDeflection".}: AspectTypeOfDeflection
    myHasOwnTypeOfDeflection* {.importc: "myHasOwnTypeOfDeflection".}: StandardBoolean
    myTypeOfHLR* {.importc: "myTypeOfHLR".}: Prs3dTypeOfHLR
    myDeviationCoefficient* {.importc: "myDeviationCoefficient".}: StandardReal
    myPreviousDeviationCoefficient* {.importc: "myPreviousDeviationCoefficient".}: StandardReal
    myHasOwnDeviationCoefficient* {.importc: "myHasOwnDeviationCoefficient".}: StandardBoolean
    myDeviationAngle* {.importc: "myDeviationAngle".}: StandardReal
    myHasOwnDeviationAngle* {.importc: "myHasOwnDeviationAngle".}: StandardBoolean
    myPreviousDeviationAngle* {.importc: "myPreviousDeviationAngle".}: StandardReal
    myIsoOnPlane* {.importc: "myIsoOnPlane".}: StandardBoolean
    myHasOwnIsoOnPlane* {.importc: "myHasOwnIsoOnPlane".}: StandardBoolean
    myIsoOnTriangulation* {.importc: "myIsoOnTriangulation".}: StandardBoolean
    myHasOwnIsoOnTriangulation* {.importc: "myHasOwnIsoOnTriangulation".}: StandardBoolean
    myIsAutoTriangulated* {.importc: "myIsAutoTriangulated".}: StandardBoolean
    myHasOwnIsAutoTriangulated* {.importc: "myHasOwnIsAutoTriangulated".}: StandardBoolean
    myUIsoAspect* {.importc: "myUIsoAspect".}: Handle[Prs3dIsoAspect]
    myHasOwnUIsoAspect* {.importc: "myHasOwnUIsoAspect".}: StandardBoolean
    myVIsoAspect* {.importc: "myVIsoAspect".}: Handle[Prs3dIsoAspect]
    myHasOwnVIsoAspect* {.importc: "myHasOwnVIsoAspect".}: StandardBoolean
    myWireAspect* {.importc: "myWireAspect".}: Handle[Prs3dLineAspect]
    myHasOwnWireAspect* {.importc: "myHasOwnWireAspect".}: StandardBoolean
    myWireDraw* {.importc: "myWireDraw".}: StandardBoolean
    myHasOwnWireDraw* {.importc: "myHasOwnWireDraw".}: StandardBoolean
    myPointAspect* {.importc: "myPointAspect".}: Handle[Prs3dPointAspect]
    myHasOwnPointAspect* {.importc: "myHasOwnPointAspect".}: StandardBoolean
    myLineAspect* {.importc: "myLineAspect".}: Handle[Prs3dLineAspect]
    myHasOwnLineAspect* {.importc: "myHasOwnLineAspect".}: StandardBoolean
    myTextAspect* {.importc: "myTextAspect".}: Handle[Prs3dTextAspect]
    myHasOwnTextAspect* {.importc: "myHasOwnTextAspect".}: StandardBoolean
    myShadingAspect* {.importc: "myShadingAspect".}: Handle[Prs3dShadingAspect]
    myHasOwnShadingAspect* {.importc: "myHasOwnShadingAspect".}: StandardBoolean
    myPlaneAspect* {.importc: "myPlaneAspect".}: Handle[Prs3dPlaneAspect]
    myHasOwnPlaneAspect* {.importc: "myHasOwnPlaneAspect".}: StandardBoolean
    mySeenLineAspect* {.importc: "mySeenLineAspect".}: Handle[Prs3dLineAspect]
    myHasOwnSeenLineAspect* {.importc: "myHasOwnSeenLineAspect".}: StandardBoolean
    myArrowAspect* {.importc: "myArrowAspect".}: Handle[Prs3dArrowAspect]
    myHasOwnArrowAspect* {.importc: "myHasOwnArrowAspect".}: StandardBoolean
    myLineArrowDraw* {.importc: "myLineArrowDraw".}: StandardBoolean
    myHasOwnLineArrowDraw* {.importc: "myHasOwnLineArrowDraw".}: StandardBoolean
    myHiddenLineAspect* {.importc: "myHiddenLineAspect".}: Handle[Prs3dLineAspect]
    myHasOwnHiddenLineAspect* {.importc: "myHasOwnHiddenLineAspect".}: StandardBoolean
    myDrawHiddenLine* {.importc: "myDrawHiddenLine".}: StandardBoolean
    myHasOwnDrawHiddenLine* {.importc: "myHasOwnDrawHiddenLine".}: StandardBoolean
    myVectorAspect* {.importc: "myVectorAspect".}: Handle[Prs3dLineAspect]
    myHasOwnVectorAspect* {.importc: "myHasOwnVectorAspect".}: StandardBoolean
    myVertexDrawMode* {.importc: "myVertexDrawMode".}: Prs3dVertexDrawMode
    myDatumAspect* {.importc: "myDatumAspect".}: Handle[Prs3dDatumAspect]
    myHasOwnDatumAspect* {.importc: "myHasOwnDatumAspect".}: StandardBoolean
    mySectionAspect* {.importc: "mySectionAspect".}: Handle[Prs3dLineAspect]
    myHasOwnSectionAspect* {.importc: "myHasOwnSectionAspect".}: StandardBoolean
    myFreeBoundaryAspect* {.importc: "myFreeBoundaryAspect".}: Handle[
        Prs3dLineAspect]
    myHasOwnFreeBoundaryAspect* {.importc: "myHasOwnFreeBoundaryAspect".}: StandardBoolean
    myFreeBoundaryDraw* {.importc: "myFreeBoundaryDraw".}: StandardBoolean
    myHasOwnFreeBoundaryDraw* {.importc: "myHasOwnFreeBoundaryDraw".}: StandardBoolean
    myUnFreeBoundaryAspect* {.importc: "myUnFreeBoundaryAspect".}: Handle[
        Prs3dLineAspect]
    myHasOwnUnFreeBoundaryAspect* {.importc: "myHasOwnUnFreeBoundaryAspect".}: StandardBoolean
    myUnFreeBoundaryDraw* {.importc: "myUnFreeBoundaryDraw".}: StandardBoolean
    myHasOwnUnFreeBoundaryDraw* {.importc: "myHasOwnUnFreeBoundaryDraw".}: StandardBoolean
    myFaceBoundaryAspect* {.importc: "myFaceBoundaryAspect".}: Handle[
        Prs3dLineAspect]
    myFaceBoundaryUpperContinuity* {.importc: "myFaceBoundaryUpperContinuity".}: StandardInteger ## !< the most edge continuity class (GeomAbs_Shape) to be included to face boundaries presentation, or -1 if undefined
    myHasOwnFaceBoundaryAspect* {.importc: "myHasOwnFaceBoundaryAspect".}: StandardBoolean
    myFaceBoundaryDraw* {.importc: "myFaceBoundaryDraw".}: StandardBoolean
    myHasOwnFaceBoundaryDraw* {.importc: "myHasOwnFaceBoundaryDraw".}: StandardBoolean
    myDimensionAspect* {.importc: "myDimensionAspect".}: Handle[
        Prs3dDimensionAspect]
    myHasOwnDimensionAspect* {.importc: "myHasOwnDimensionAspect".}: StandardBoolean
    myDimensionModelUnits* {.importc: "myDimensionModelUnits".}: Prs3dDimensionUnits
    myHasOwnDimLengthModelUnits* {.importc: "myHasOwnDimLengthModelUnits".}: StandardBoolean
    myHasOwnDimAngleModelUnits* {.importc: "myHasOwnDimAngleModelUnits".}: StandardBoolean
    myDimensionDisplayUnits* {.importc: "myDimensionDisplayUnits".}: Prs3dDimensionUnits
    myHasOwnDimLengthDisplayUnits* {.importc: "myHasOwnDimLengthDisplayUnits".}: StandardBoolean
    myHasOwnDimAngleDisplayUnits* {.importc: "myHasOwnDimAngleDisplayUnits".}: StandardBoolean

  Prs3dDrawerbaseType* = Graphic3dPresentationAttributes

proc getTypeName*(): cstring {.importcpp: "Prs3d_Drawer::get_type_name(@)",
                            header: "Prs3d_Drawer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Prs3d_Drawer::get_type_descriptor(@)", header: "Prs3d_Drawer.hxx".}
proc dynamicType*(this: Prs3dDrawer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_Drawer.hxx".}
proc constructPrs3dDrawer*(): Prs3dDrawer {.constructor,
    importcpp: "Prs3d_Drawer(@)", header: "Prs3d_Drawer.hxx".}
proc setTypeOfDeflection*(this: var Prs3dDrawer;
                         theTypeOfDeflection: AspectTypeOfDeflection) {.
    importcpp: "SetTypeOfDeflection", header: "Prs3d_Drawer.hxx".}
proc typeOfDeflection*(this: Prs3dDrawer): AspectTypeOfDeflection {.noSideEffect,
    importcpp: "TypeOfDeflection", header: "Prs3d_Drawer.hxx".}
proc hasOwnTypeOfDeflection*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnTypeOfDeflection", header: "Prs3d_Drawer.hxx".}
proc setMaximalChordialDeviation*(this: var Prs3dDrawer;
                                 theChordialDeviation: StandardReal) {.
    importcpp: "SetMaximalChordialDeviation", header: "Prs3d_Drawer.hxx".}
proc maximalChordialDeviation*(this: Prs3dDrawer): StandardReal {.noSideEffect,
    importcpp: "MaximalChordialDeviation", header: "Prs3d_Drawer.hxx".}
proc hasOwnMaximalChordialDeviation*(this: Prs3dDrawer): StandardBoolean {.
    noSideEffect, importcpp: "HasOwnMaximalChordialDeviation",
    header: "Prs3d_Drawer.hxx".}
proc setTypeOfHLR*(this: var Prs3dDrawer; theTypeOfHLR: Prs3dTypeOfHLR) {.
    importcpp: "SetTypeOfHLR", header: "Prs3d_Drawer.hxx".}
proc typeOfHLR*(this: var Prs3dDrawer): Prs3dTypeOfHLR {.importcpp: "TypeOfHLR",
    header: "Prs3d_Drawer.hxx".}
proc hasOwnTypeOfHLR*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnTypeOfHLR", header: "Prs3d_Drawer.hxx".}
proc setMaximalParameterValue*(this: var Prs3dDrawer; theValue: StandardReal) {.
    importcpp: "SetMaximalParameterValue", header: "Prs3d_Drawer.hxx".}
proc maximalParameterValue*(this: Prs3dDrawer): StandardReal {.noSideEffect,
    importcpp: "MaximalParameterValue", header: "Prs3d_Drawer.hxx".}
proc hasOwnMaximalParameterValue*(this: Prs3dDrawer): StandardBoolean {.
    noSideEffect, importcpp: "HasOwnMaximalParameterValue",
    header: "Prs3d_Drawer.hxx".}
proc setIsoOnPlane*(this: var Prs3dDrawer; theIsEnabled: StandardBoolean) {.
    importcpp: "SetIsoOnPlane", header: "Prs3d_Drawer.hxx".}
proc isoOnPlane*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "IsoOnPlane", header: "Prs3d_Drawer.hxx".}
proc hasOwnIsoOnPlane*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnIsoOnPlane", header: "Prs3d_Drawer.hxx".}
proc isoOnTriangulation*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "IsoOnTriangulation", header: "Prs3d_Drawer.hxx".}
proc hasOwnIsoOnTriangulation*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnIsoOnTriangulation", header: "Prs3d_Drawer.hxx".}
proc setIsoOnTriangulation*(this: var Prs3dDrawer; theToEnable: StandardBoolean) {.
    importcpp: "SetIsoOnTriangulation", header: "Prs3d_Drawer.hxx".}
proc setDiscretisation*(this: var Prs3dDrawer; theValue: StandardInteger) {.
    importcpp: "SetDiscretisation", header: "Prs3d_Drawer.hxx".}
proc discretisation*(this: Prs3dDrawer): StandardInteger {.noSideEffect,
    importcpp: "Discretisation", header: "Prs3d_Drawer.hxx".}
proc hasOwnDiscretisation*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnDiscretisation", header: "Prs3d_Drawer.hxx".}
proc setDeviationCoefficient*(this: var Prs3dDrawer; theCoefficient: StandardReal) {.
    importcpp: "SetDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc deviationCoefficient*(this: Prs3dDrawer): StandardReal {.noSideEffect,
    importcpp: "DeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc setDeviationCoefficient*(this: var Prs3dDrawer) {.
    importcpp: "SetDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc hasOwnDeviationCoefficient*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc previousDeviationCoefficient*(this: Prs3dDrawer): StandardReal {.noSideEffect,
    importcpp: "PreviousDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc updatePreviousDeviationCoefficient*(this: var Prs3dDrawer) {.
    importcpp: "UpdatePreviousDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc setDeviationAngle*(this: var Prs3dDrawer; theAngle: StandardReal) {.
    importcpp: "SetDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc deviationAngle*(this: Prs3dDrawer): StandardReal {.noSideEffect,
    importcpp: "DeviationAngle", header: "Prs3d_Drawer.hxx".}
proc setDeviationAngle*(this: var Prs3dDrawer) {.importcpp: "SetDeviationAngle",
    header: "Prs3d_Drawer.hxx".}
proc hasOwnDeviationAngle*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc previousDeviationAngle*(this: Prs3dDrawer): StandardReal {.noSideEffect,
    importcpp: "PreviousDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc updatePreviousDeviationAngle*(this: var Prs3dDrawer) {.
    importcpp: "UpdatePreviousDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc setAutoTriangulation*(this: var Prs3dDrawer; theIsEnabled: StandardBoolean) {.
    importcpp: "SetAutoTriangulation", header: "Prs3d_Drawer.hxx".}
proc isAutoTriangulation*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "IsAutoTriangulation", header: "Prs3d_Drawer.hxx".}
proc hasOwnIsAutoTriangulation*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnIsAutoTriangulation", header: "Prs3d_Drawer.hxx".}
proc uIsoAspect*(this: var Prs3dDrawer): Handle[Prs3dIsoAspect] {.
    importcpp: "UIsoAspect", header: "Prs3d_Drawer.hxx".}
proc setUIsoAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dIsoAspect]) {.
    importcpp: "SetUIsoAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnUIsoAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnUIsoAspect", header: "Prs3d_Drawer.hxx".}
proc vIsoAspect*(this: var Prs3dDrawer): Handle[Prs3dIsoAspect] {.
    importcpp: "VIsoAspect", header: "Prs3d_Drawer.hxx".}
proc setVIsoAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dIsoAspect]) {.
    importcpp: "SetVIsoAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnVIsoAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnVIsoAspect", header: "Prs3d_Drawer.hxx".}
proc wireAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.
    importcpp: "WireAspect", header: "Prs3d_Drawer.hxx".}
proc setWireAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    importcpp: "SetWireAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnWireAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnWireAspect", header: "Prs3d_Drawer.hxx".}
proc setWireDraw*(this: var Prs3dDrawer; theIsEnabled: StandardBoolean) {.
    importcpp: "SetWireDraw", header: "Prs3d_Drawer.hxx".}
proc wireDraw*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "WireDraw", header: "Prs3d_Drawer.hxx".}
proc hasOwnWireDraw*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnWireDraw", header: "Prs3d_Drawer.hxx".}
proc pointAspect*(this: var Prs3dDrawer): Handle[Prs3dPointAspect] {.
    importcpp: "PointAspect", header: "Prs3d_Drawer.hxx".}
proc setPointAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dPointAspect]) {.
    importcpp: "SetPointAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnPointAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnPointAspect", header: "Prs3d_Drawer.hxx".}
proc setupOwnPointAspect*(this: var Prs3dDrawer; theDefaults: Handle[Prs3dDrawer] = handle[
    Prs3dDrawer]()): StandardBoolean {.importcpp: "SetupOwnPointAspect",
                                     header: "Prs3d_Drawer.hxx".}
proc lineAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.
    importcpp: "LineAspect", header: "Prs3d_Drawer.hxx".}
proc setLineAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    importcpp: "SetLineAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnLineAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnLineAspect", header: "Prs3d_Drawer.hxx".}
proc setOwnLineAspects*(this: var Prs3dDrawer;
                       theDefaults: Handle[Prs3dDrawer] = handle[Prs3dDrawer]()): StandardBoolean {.
    importcpp: "SetOwnLineAspects", header: "Prs3d_Drawer.hxx".}
proc setOwnDatumAspects*(this: var Prs3dDrawer; theDefaults: Handle[Prs3dDrawer] = handle[
    Prs3dDrawer]()): StandardBoolean {.importcpp: "SetOwnDatumAspects",
                                     header: "Prs3d_Drawer.hxx".}
proc textAspect*(this: var Prs3dDrawer): Handle[Prs3dTextAspect] {.
    importcpp: "TextAspect", header: "Prs3d_Drawer.hxx".}
proc setTextAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dTextAspect]) {.
    importcpp: "SetTextAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnTextAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnTextAspect", header: "Prs3d_Drawer.hxx".}
proc shadingAspect*(this: var Prs3dDrawer): Handle[Prs3dShadingAspect] {.
    importcpp: "ShadingAspect", header: "Prs3d_Drawer.hxx".}
proc setShadingAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dShadingAspect]) {.
    importcpp: "SetShadingAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnShadingAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnShadingAspect", header: "Prs3d_Drawer.hxx".}
proc setupOwnShadingAspect*(this: var Prs3dDrawer; theDefaults: Handle[Prs3dDrawer] = handle[
    Prs3dDrawer]()): StandardBoolean {.importcpp: "SetupOwnShadingAspect",
                                     header: "Prs3d_Drawer.hxx".}
proc seenLineAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.
    importcpp: "SeenLineAspect", header: "Prs3d_Drawer.hxx".}
proc setSeenLineAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    importcpp: "SetSeenLineAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnSeenLineAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnSeenLineAspect", header: "Prs3d_Drawer.hxx".}
proc planeAspect*(this: var Prs3dDrawer): Handle[Prs3dPlaneAspect] {.
    importcpp: "PlaneAspect", header: "Prs3d_Drawer.hxx".}
proc setPlaneAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dPlaneAspect]) {.
    importcpp: "SetPlaneAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnPlaneAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnPlaneAspect", header: "Prs3d_Drawer.hxx".}
proc arrowAspect*(this: var Prs3dDrawer): Handle[Prs3dArrowAspect] {.
    importcpp: "ArrowAspect", header: "Prs3d_Drawer.hxx".}
proc setArrowAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dArrowAspect]) {.
    importcpp: "SetArrowAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnArrowAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnArrowAspect", header: "Prs3d_Drawer.hxx".}
proc setLineArrowDraw*(this: var Prs3dDrawer; theIsEnabled: StandardBoolean) {.
    importcpp: "SetLineArrowDraw", header: "Prs3d_Drawer.hxx".}
proc lineArrowDraw*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "LineArrowDraw", header: "Prs3d_Drawer.hxx".}
proc hasOwnLineArrowDraw*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnLineArrowDraw", header: "Prs3d_Drawer.hxx".}
proc hiddenLineAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.
    importcpp: "HiddenLineAspect", header: "Prs3d_Drawer.hxx".}
proc setHiddenLineAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    importcpp: "SetHiddenLineAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnHiddenLineAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnHiddenLineAspect", header: "Prs3d_Drawer.hxx".}
proc drawHiddenLine*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "DrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc enableDrawHiddenLine*(this: var Prs3dDrawer) {.
    importcpp: "EnableDrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc disableDrawHiddenLine*(this: var Prs3dDrawer) {.
    importcpp: "DisableDrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc hasOwnDrawHiddenLine*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnDrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc vectorAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.
    importcpp: "VectorAspect", header: "Prs3d_Drawer.hxx".}
proc setVectorAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    importcpp: "SetVectorAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnVectorAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnVectorAspect", header: "Prs3d_Drawer.hxx".}
proc setVertexDrawMode*(this: var Prs3dDrawer; theMode: Prs3dVertexDrawMode) {.
    importcpp: "SetVertexDrawMode", header: "Prs3d_Drawer.hxx".}
proc vertexDrawMode*(this: var Prs3dDrawer): Prs3dVertexDrawMode {.
    importcpp: "VertexDrawMode", header: "Prs3d_Drawer.hxx".}
proc hasOwnVertexDrawMode*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnVertexDrawMode", header: "Prs3d_Drawer.hxx".}
proc datumAspect*(this: var Prs3dDrawer): Handle[Prs3dDatumAspect] {.
    importcpp: "DatumAspect", header: "Prs3d_Drawer.hxx".}
proc setDatumAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dDatumAspect]) {.
    importcpp: "SetDatumAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnDatumAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnDatumAspect", header: "Prs3d_Drawer.hxx".}
proc sectionAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.
    importcpp: "SectionAspect", header: "Prs3d_Drawer.hxx".}
proc setSectionAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    importcpp: "SetSectionAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnSectionAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnSectionAspect", header: "Prs3d_Drawer.hxx".}
proc setFreeBoundaryAspect*(this: var Prs3dDrawer;
                           theAspect: Handle[Prs3dLineAspect]) {.
    importcpp: "SetFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc freeBoundaryAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.
    importcpp: "FreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnFreeBoundaryAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc setFreeBoundaryDraw*(this: var Prs3dDrawer; theIsEnabled: StandardBoolean) {.
    importcpp: "SetFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc freeBoundaryDraw*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "FreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc hasOwnFreeBoundaryDraw*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc setUnFreeBoundaryAspect*(this: var Prs3dDrawer;
                             theAspect: Handle[Prs3dLineAspect]) {.
    importcpp: "SetUnFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc unFreeBoundaryAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.
    importcpp: "UnFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnUnFreeBoundaryAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnUnFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc setUnFreeBoundaryDraw*(this: var Prs3dDrawer; theIsEnabled: StandardBoolean) {.
    importcpp: "SetUnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc unFreeBoundaryDraw*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "UnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc hasOwnUnFreeBoundaryDraw*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnUnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc setFaceBoundaryAspect*(this: var Prs3dDrawer;
                           theAspect: Handle[Prs3dLineAspect]) {.
    importcpp: "SetFaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc faceBoundaryAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.
    importcpp: "FaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnFaceBoundaryAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnFaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc setupOwnFaceBoundaryAspect*(this: var Prs3dDrawer; theDefaults: Handle[
    Prs3dDrawer] = handle[Prs3dDrawer]()): StandardBoolean {.
    importcpp: "SetupOwnFaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc setFaceBoundaryDraw*(this: var Prs3dDrawer; theIsEnabled: StandardBoolean) {.
    importcpp: "SetFaceBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc faceBoundaryDraw*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "FaceBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc hasOwnFaceBoundaryDraw*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnFaceBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc hasOwnFaceBoundaryUpperContinuity*(this: Prs3dDrawer): StandardBoolean {.
    noSideEffect, importcpp: "HasOwnFaceBoundaryUpperContinuity",
    header: "Prs3d_Drawer.hxx".}
proc faceBoundaryUpperContinuity*(this: Prs3dDrawer): GeomAbsShape {.noSideEffect,
    importcpp: "FaceBoundaryUpperContinuity", header: "Prs3d_Drawer.hxx".}
proc setFaceBoundaryUpperContinuity*(this: var Prs3dDrawer;
                                    theMostAllowedEdgeClass: GeomAbsShape) {.
    importcpp: "SetFaceBoundaryUpperContinuity", header: "Prs3d_Drawer.hxx".}
proc unsetFaceBoundaryUpperContinuity*(this: var Prs3dDrawer) {.
    importcpp: "UnsetFaceBoundaryUpperContinuity", header: "Prs3d_Drawer.hxx".}
proc dimensionAspect*(this: var Prs3dDrawer): Handle[Prs3dDimensionAspect] {.
    importcpp: "DimensionAspect", header: "Prs3d_Drawer.hxx".}
proc setDimensionAspect*(this: var Prs3dDrawer;
                        theAspect: Handle[Prs3dDimensionAspect]) {.
    importcpp: "SetDimensionAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnDimensionAspect*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnDimensionAspect", header: "Prs3d_Drawer.hxx".}
proc setDimLengthModelUnits*(this: var Prs3dDrawer; theUnits: TCollectionAsciiString) {.
    importcpp: "SetDimLengthModelUnits", header: "Prs3d_Drawer.hxx".}
proc setDimAngleModelUnits*(this: var Prs3dDrawer; theUnits: TCollectionAsciiString) {.
    importcpp: "SetDimAngleModelUnits", header: "Prs3d_Drawer.hxx".}
proc dimLengthModelUnits*(this: Prs3dDrawer): TCollectionAsciiString {.noSideEffect,
    importcpp: "DimLengthModelUnits", header: "Prs3d_Drawer.hxx".}
proc dimAngleModelUnits*(this: Prs3dDrawer): TCollectionAsciiString {.noSideEffect,
    importcpp: "DimAngleModelUnits", header: "Prs3d_Drawer.hxx".}
proc hasOwnDimLengthModelUnits*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnDimLengthModelUnits", header: "Prs3d_Drawer.hxx".}
proc hasOwnDimAngleModelUnits*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnDimAngleModelUnits", header: "Prs3d_Drawer.hxx".}
proc setDimLengthDisplayUnits*(this: var Prs3dDrawer;
                              theUnits: TCollectionAsciiString) {.
    importcpp: "SetDimLengthDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc setDimAngleDisplayUnits*(this: var Prs3dDrawer;
                             theUnits: TCollectionAsciiString) {.
    importcpp: "SetDimAngleDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc dimLengthDisplayUnits*(this: Prs3dDrawer): TCollectionAsciiString {.
    noSideEffect, importcpp: "DimLengthDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc dimAngleDisplayUnits*(this: Prs3dDrawer): TCollectionAsciiString {.
    noSideEffect, importcpp: "DimAngleDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc hasOwnDimLengthDisplayUnits*(this: Prs3dDrawer): StandardBoolean {.
    noSideEffect, importcpp: "HasOwnDimLengthDisplayUnits",
    header: "Prs3d_Drawer.hxx".}
proc hasOwnDimAngleDisplayUnits*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnDimAngleDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc link*(this: var Prs3dDrawer): Handle[Prs3dDrawer] {.importcpp: "Link",
    header: "Prs3d_Drawer.hxx".}
proc hasLink*(this: Prs3dDrawer): StandardBoolean {.noSideEffect,
    importcpp: "HasLink", header: "Prs3d_Drawer.hxx".}
proc link*(this: var Prs3dDrawer; theDrawer: Handle[Prs3dDrawer]) {.importcpp: "Link",
    header: "Prs3d_Drawer.hxx".}
proc setLink*(this: var Prs3dDrawer; theDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "SetLink", header: "Prs3d_Drawer.hxx".}
proc clearLocalAttributes*(this: var Prs3dDrawer) {.
    importcpp: "ClearLocalAttributes", header: "Prs3d_Drawer.hxx".}
proc setShaderProgram*(this: var Prs3dDrawer;
                      theProgram: Handle[Graphic3dShaderProgram];
                      theAspect: Graphic3dGroupAspect;
                      theToOverrideDefaults: bool = false): bool {.
    importcpp: "SetShaderProgram", header: "Prs3d_Drawer.hxx".}
proc setShadingModel*(this: var Prs3dDrawer; theModel: Graphic3dTypeOfShadingModel;
                     theToOverrideDefaults: bool = false): bool {.
    importcpp: "SetShadingModel", header: "Prs3d_Drawer.hxx".}
proc dumpJson*(this: Prs3dDrawer; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_Drawer.hxx".}
## !!!Ignored construct:  public : ! @name deprecated methods Standard_DEPRECATED ( SetDeviationAngle() should be used instead ) void SetHLRAngle ( const Standard_Real theAngle ) { SetDeviationAngle ( theAngle ) ; } Standard_DEPRECATED ( DeviationAngle() should be used instead ) Standard_Real HLRAngle ( ) const { return DeviationAngle ( ) ; } Standard_DEPRECATED ( SetDeviationAngle() should be used instead ) void SetHLRAngle ( ) { SetDeviationAngle ( ) ; } Standard_DEPRECATED ( HasOwnDeviationAngle() should be used instead ) Standard_Boolean HasOwnHLRDeviationAngle ( ) const { return HasOwnDeviationAngle ( ) ; } Standard_DEPRECATED ( PreviousDeviationAngle() should be used instead ) Standard_Real PreviousHLRDeviationAngle ( ) const { return PreviousDeviationAngle ( ) ; } protected : opencascade :: handle < Prs3d_Drawer > [end of template] myLink ;
## Error: identifier expected, but got: SetDeviationAngle() should be used instead!!!

## !!!Ignored construct:  Standard_DEPRECATED ( Class name is deprecated - use Prs3d_Drawer instead ) typedef Prs3d_Drawer Graphic3d_HighlightStyle ;
## Error: expected ';'!!!


