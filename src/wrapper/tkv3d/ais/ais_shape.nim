import ../../tkmath/gp/gp_types
import ../tkv3d/graphic3d/graphic3d_types
import ../../tkg3d/topabs/topabs_types
import ../../tkernel/standard/standard_types
import ais_types
import ../../tkbrep/topods/topods_types
import ../../tkernel/quantity/quantity_types
import ../../tkmath/bnd/bnd_types
import ../tkv3d/prs3d/prs3d_types



##  Created on: 1996-12-20
##  Created by: Robert COUBLANC
##  Copyright (c) 1996-1999 Matra Datavision
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

## ! A framework to manage presentation and selection of shapes.
## ! AIS_Shape is the interactive object which is used the
## ! most by   applications. There are standard functions
## ! available which allow you to prepare selection
## ! operations on the constituent elements of shapes -
## ! vertices, edges, faces etc - in an open local context.
## ! The selection modes specific to "Shape" type objects
## ! are referred to as Standard Activation Mode. These
## ! modes are only taken into account in open local
## ! context and only act on Interactive Objects which
## ! have redefined the virtual method
## ! AcceptShapeDecomposition so that it returns true.
## ! Several advanced functions are also available. These
## ! include functions to manage deviation angle and
## ! deviation coefficient - both HLR and non-HLR - of
## ! an inheriting shape class. These services allow you to
## ! select one type of shape interactive object for higher
## ! precision drawing. When you do this, the
## ! Prs3d_Drawer::IsOwn... functions corresponding to the
## ! above deviation angle and coefficient functions return
## ! true indicating that there is a local setting available
## ! for the specific object.
## !
## ! This class allows to map textures on shapes using native UV parametric space of underlying surface of each Face
## ! (this means that texture will be visually duplicated on all Faces).
## ! To generate texture coordinates, appropriate shading attribute should be set before computing presentation in AIS_Shaded display mode:
## ! @code
## !   Handle(AIS_Shape) aPrs = new AIS_Shape();
## !   aPrs->Attributes()->SetupOwnShadingAspect();
## !   aPrs->Attributes()->ShadingAspect()->Aspect()->SetTextureMapOn();
## !   aPrs->Attributes()->ShadingAspect()->Aspect()->SetTextureMap (new Graphic3d_Texture2Dmanual (Graphic3d_NOT_2D_ALUMINUM));
## ! @endcode
## ! The texture itself is parametrized in (0,1)x(0,1).



proc newAIS_Shape*(shap: TopoDS_Shape): AIS_Shape {.cdecl, constructor,
    importcpp: "AIS_Shape(@)", header: "AIS_Shape.hxx".}
proc signature*(this: AIS_Shape): cint {.noSideEffect, cdecl, importcpp: "Signature",
                                     header: "AIS_Shape.hxx".}
proc `type`*(this: AIS_Shape): AIS_KindOfInteractive {.noSideEffect, cdecl,
    importcpp: "Type", header: "AIS_Shape.hxx".}
proc acceptShapeDecomposition*(this: AIS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "AcceptShapeDecomposition", header: "AIS_Shape.hxx".}
proc acceptDisplayMode*(this: AIS_Shape; theMode: cint): bool {.noSideEffect, cdecl,
    importcpp: "AcceptDisplayMode", header: "AIS_Shape.hxx".}
proc shape*(this: AIS_Shape): TopoDS_Shape {.noSideEffect, cdecl, importcpp: "Shape",
    header: "AIS_Shape.hxx".}
proc setShape*(this: var AIS_Shape; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape", header: "AIS_Shape.hxx".}
proc set*(this: var AIS_Shape; theShape: TopoDS_Shape) {.cdecl, importcpp: "Set",
    header: "AIS_Shape.hxx".}
proc setOwnDeviationCoefficient*(this: var AIS_Shape): bool {.cdecl,
    importcpp: "SetOwnDeviationCoefficient", header: "AIS_Shape.hxx".}
proc setOwnDeviationAngle*(this: var AIS_Shape): bool {.cdecl,
    importcpp: "SetOwnDeviationAngle", header: "AIS_Shape.hxx".}
proc setOwnDeviationCoefficient*(this: var AIS_Shape; aCoefficient: cfloat) {.cdecl,
    importcpp: "SetOwnDeviationCoefficient", header: "AIS_Shape.hxx".}
proc setAngleAndDeviation*(this: var AIS_Shape; anAngle: cfloat) {.cdecl,
    importcpp: "SetAngleAndDeviation", header: "AIS_Shape.hxx".}
proc userAngle*(this: AIS_Shape): cfloat {.noSideEffect, cdecl,
                                       importcpp: "UserAngle", header: "AIS_Shape.hxx".}
proc setOwnDeviationAngle*(this: var AIS_Shape; anAngle: cfloat) {.cdecl,
    importcpp: "SetOwnDeviationAngle", header: "AIS_Shape.hxx".}
proc ownDeviationCoefficient*(this: AIS_Shape; aCoefficient: var cfloat;
                             aPreviousCoefficient: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "OwnDeviationCoefficient", header: "AIS_Shape.hxx".}
proc ownDeviationAngle*(this: AIS_Shape; anAngle: var cfloat;
                       aPreviousAngle: var cfloat): bool {.noSideEffect, cdecl,
    importcpp: "OwnDeviationAngle", header: "AIS_Shape.hxx".}
proc setTypeOfHLR*(this: var AIS_Shape; theTypeOfHLR: Prs3dTypeOfHLR) {.cdecl,
    importcpp: "SetTypeOfHLR", header: "AIS_Shape.hxx".}
proc typeOfHLR*(this: AIS_Shape): Prs3dTypeOfHLR {.noSideEffect, cdecl,
    importcpp: "TypeOfHLR", header: "AIS_Shape.hxx".}
proc setColor*(this: var AIS_Shape; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_Shape.hxx".}
proc unsetColor*(this: var AIS_Shape) {.cdecl, importcpp: "UnsetColor", header: "AIS_Shape.hxx".}
proc setWidth*(this: var AIS_Shape; aValue: cfloat) {.cdecl, importcpp: "SetWidth",
    header: "AIS_Shape.hxx".}
proc unsetWidth*(this: var AIS_Shape) {.cdecl, importcpp: "UnsetWidth", header: "AIS_Shape.hxx".}
proc setMaterial*(this: var AIS_Shape; aName: Graphic3dMaterialAspect) {.cdecl,
    importcpp: "SetMaterial", header: "AIS_Shape.hxx".}
proc unsetMaterial*(this: var AIS_Shape) {.cdecl, importcpp: "UnsetMaterial",
                                       header: "AIS_Shape.hxx".}
proc setTransparency*(this: var AIS_Shape; aValue: cfloat = 0.6) {.cdecl,
    importcpp: "SetTransparency", header: "AIS_Shape.hxx".}
proc unsetTransparency*(this: var AIS_Shape) {.cdecl, importcpp: "UnsetTransparency",
    header: "AIS_Shape.hxx".}
proc boundingBox*(this: var AIS_Shape): BndBox {.cdecl, importcpp: "BoundingBox",
    header: "AIS_Shape.hxx".}
## using statement

proc color*(this: AIS_Shape; aColor: var QuantityColor) {.noSideEffect, cdecl,
    importcpp: "Color", header: "AIS_Shape.hxx".}
proc material*(this: AIS_Shape): Graphic3dNameOfMaterial {.noSideEffect, cdecl,
    importcpp: "Material", header: "AIS_Shape.hxx".}
proc transparency*(this: AIS_Shape): cfloat {.noSideEffect, cdecl,
    importcpp: "Transparency", header: "AIS_Shape.hxx".}
proc selectionType*(theSelMode: cint): TopAbsShapeEnum {.cdecl,
    importcpp: "AIS_Shape::SelectionType(@)", header: "AIS_Shape.hxx".}
proc selectionMode*(theShapeType: TopAbsShapeEnum): cint {.cdecl,
    importcpp: "AIS_Shape::SelectionMode(@)", header: "AIS_Shape.hxx".}
proc textureRepeatUV*(this: AIS_Shape): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "TextureRepeatUV", header: "AIS_Shape.hxx".}
proc setTextureRepeatUV*(this: var AIS_Shape; theRepeatUV: Pnt2dObj) {.cdecl,
    importcpp: "SetTextureRepeatUV", header: "AIS_Shape.hxx".}
proc textureOriginUV*(this: AIS_Shape): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "TextureOriginUV", header: "AIS_Shape.hxx".}
proc setTextureOriginUV*(this: var AIS_Shape; theOriginUV: Pnt2dObj) {.cdecl,
    importcpp: "SetTextureOriginUV", header: "AIS_Shape.hxx".}
proc textureScaleUV*(this: AIS_Shape): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "TextureScaleUV", header: "AIS_Shape.hxx".}
proc setTextureScaleUV*(this: var AIS_Shape; theScaleUV: Pnt2dObj) {.cdecl,
    importcpp: "SetTextureScaleUV", header: "AIS_Shape.hxx".}
proc computeHlrPresentation*(theProjector: Handle[Graphic3dCamera];
                            thePrs: Handle[Prs3dPresentation];
                            theShape: TopoDS_Shape; theDrawer: Handle[Prs3dDrawer]) {.
    cdecl, importcpp: "AIS_Shape::computeHlrPresentation(@)", header: "AIS_Shape.hxx".}
proc dumpJson*(this: AIS_Shape; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "AIS_Shape.hxx".}


    

