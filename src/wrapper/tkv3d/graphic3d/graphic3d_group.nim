##  Created on: 1991-09-06
##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_ArrayOfPrimitives"
discard "forward decl of Graphic3d_Text"
type
  Graphic3dGroup* {.importcpp: "Graphic3d_Group", header: "Graphic3d_Group.hxx",
                   bycopy.} = object of StandardTransient ## ! Supress all primitives and attributes of <me>.
                                                     ## ! To clear group without update in Graphic3d_StructureManager
                                                     ## ! pass Standard_False as <theUpdateStructureMgr>. This
                                                     ## ! used on context and viewer destruction, when the pointer
                                                     ## ! to structure manager in Graphic3d_Structure could be
                                                     ## ! already released (pointers are used here to avoid handle
                                                     ## ! cross-reference);
                                                     ## ! Return fill area aspect.
                                                     ## ! sets the stencil test to theIsEnabled state;
                                                     ## ! Creates the string <AText> at position <APoint>.
                                                     ## ! The 3D point of attachment is projected. The text is
                                                     ## ! written in the plane of projection.
                                                     ## ! The attributes are given with respect to the plane of
                                                     ## ! projection.
                                                     ## ! AHeight : Height of text.
                                                     ## ! (Relative to the Normalized Projection
                                                     ## ! Coordinates (NPC) Space).
                                                     ## ! AAngle  : Orientation of the text
                                                     ## ! (with respect to the horizontal).
                                                     ## ! Creates a group in the structure <AStructure>.
    ## !< pointer to the parent structure
    ## !< bounding box
    ## !< flag indicating closed volume
    ## !< flag indicating that this group contains face primitives


proc clear*(this: var Graphic3dGroup; theUpdateStructureMgr: bool = true) {.cdecl,
    importcpp: "Clear", header: "Graphic3d_Group.hxx".}
proc destroyGraphic3dGroup*(this: var Graphic3dGroup) {.cdecl,
    importcpp: "#.~Graphic3d_Group()", header: "Graphic3d_Group.hxx".}
proc remove*(this: var Graphic3dGroup) {.cdecl, importcpp: "Remove", header: "Graphic3d_Group.hxx".}
proc aspects*(this: Graphic3dGroup): Handle[Graphic3dAspects] {.noSideEffect, cdecl,
    importcpp: "Aspects", header: "Graphic3d_Group.hxx".}
proc setGroupPrimitivesAspect*(this: var Graphic3dGroup;
                              theAspect: Handle[Graphic3dAspects]) {.cdecl,
    importcpp: "SetGroupPrimitivesAspect", header: "Graphic3d_Group.hxx".}
proc setPrimitivesAspect*(this: var Graphic3dGroup;
                         theAspect: Handle[Graphic3dAspects]) {.cdecl,
    importcpp: "SetPrimitivesAspect", header: "Graphic3d_Group.hxx".}
proc synchronizeAspects*(this: var Graphic3dGroup) {.cdecl,
    importcpp: "SynchronizeAspects", header: "Graphic3d_Group.hxx".}
#proc replaceAspects*(this: var Graphic3dGroup;
#                    theMap: Graphic3dMapOfAspectsToAspects) {.cdecl,
#    importcpp: "ReplaceAspects", header: "Graphic3d_Group.hxx".}
proc addText*(this: var Graphic3dGroup; theTextParams: Handle[Graphic3dText];
             theToEvalMinMax: bool = true) {.cdecl, importcpp: "AddText", header: "Graphic3d_Group.hxx".}
proc addPrimitiveArray*(this: var Graphic3dGroup;
                       theType: Graphic3dTypeOfPrimitiveArray;
                       theIndices: Handle[Graphic3dIndexBuffer];
                       theAttribs: Handle[Graphic3dBuffer];
                       theBounds: Handle[Graphic3dBoundBuffer];
                       theToEvalMinMax: bool = true) {.cdecl,
    importcpp: "AddPrimitiveArray", header: "Graphic3d_Group.hxx".}
proc addPrimitiveArray*(this: var Graphic3dGroup;
                       thePrim: Handle[Graphic3dArrayOfPrimitives];
                       theToEvalMinMax: bool = true) {.cdecl,
    importcpp: "AddPrimitiveArray", header: "Graphic3d_Group.hxx".}
proc marker*(this: var Graphic3dGroup; thePoint: Graphic3dVertex;
            theToEvalMinMax: bool = true) {.cdecl, importcpp: "Marker", header: "Graphic3d_Group.hxx".}
proc setStencilTestOptions*(this: var Graphic3dGroup; theIsEnabled: bool) {.cdecl,
    importcpp: "SetStencilTestOptions", header: "Graphic3d_Group.hxx".}
proc setFlippingOptions*(this: var Graphic3dGroup; theIsEnabled: bool;
                        theRefPlane: Ax2) {.cdecl, importcpp: "SetFlippingOptions",
    header: "Graphic3d_Group.hxx".}
proc containsFacet*(this: Graphic3dGroup): bool {.noSideEffect, cdecl,
    importcpp: "ContainsFacet", header: "Graphic3d_Group.hxx".}
proc isDeleted*(this: Graphic3dGroup): bool {.noSideEffect, cdecl,
    importcpp: "IsDeleted", header: "Graphic3d_Group.hxx".}
proc isEmpty*(this: Graphic3dGroup): bool {.noSideEffect, cdecl, importcpp: "IsEmpty",
                                        header: "Graphic3d_Group.hxx".}
proc minMaxValues*(this: Graphic3dGroup; theXMin: var cfloat; theYMin: var cfloat;
                  theZMin: var cfloat; theXMax: var cfloat; theYMax: var cfloat;
                  theZMax: var cfloat) {.noSideEffect, cdecl,
                                      importcpp: "MinMaxValues", header: "Graphic3d_Group.hxx".}
proc setMinMaxValues*(this: var Graphic3dGroup; theXMin: cfloat; theYMin: cfloat;
                     theZMin: cfloat; theXMax: cfloat; theYMax: cfloat;
                     theZMax: cfloat) {.cdecl, importcpp: "SetMinMaxValues",
                                      header: "Graphic3d_Group.hxx".}
proc boundingBox*(this: Graphic3dGroup): Graphic3dBndBox4f {.noSideEffect, cdecl,
    importcpp: "BoundingBox", header: "Graphic3d_Group.hxx".}
proc changeBoundingBox*(this: var Graphic3dGroup): var Graphic3dBndBox4f {.cdecl,
    importcpp: "ChangeBoundingBox", header: "Graphic3d_Group.hxx".}
proc structure*(this: Graphic3dGroup): Handle[Graphic3dStructure] {.noSideEffect,
    cdecl, importcpp: "Structure", header: "Graphic3d_Group.hxx".}
proc setClosed*(this: var Graphic3dGroup; theIsClosed: bool) {.cdecl,
    importcpp: "SetClosed", header: "Graphic3d_Group.hxx".}
proc isClosed*(this: Graphic3dGroup): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Graphic3d_Group.hxx".}
proc text*(this: var Graphic3dGroup; aText: cstring; aPoint: Graphic3dVertex;
          aHeight: cfloat; aAngle: cfloat; aTp: Graphic3dTextPath;
          aHta: Graphic3dHorizontalTextAlignment;
          aVta: Graphic3dVerticalTextAlignment; evalMinMax: bool = true) {.cdecl,
    importcpp: "Text", header: "Graphic3d_Group.hxx".}
proc text*(this: var Graphic3dGroup; aText: cstring; aPoint: Graphic3dVertex;
          aHeight: cfloat; evalMinMax: bool = true) {.cdecl, importcpp: "Text",
    header: "Graphic3d_Group.hxx".}
proc text*(this: var Graphic3dGroup; aText: TCollectionExtendedString;
          aPoint: Graphic3dVertex; aHeight: cfloat; aAngle: cfloat;
          aTp: Graphic3dTextPath; aHta: Graphic3dHorizontalTextAlignment;
          aVta: Graphic3dVerticalTextAlignment; evalMinMax: bool = true) {.cdecl,
    importcpp: "Text", header: "Graphic3d_Group.hxx".}
proc text*(this: var Graphic3dGroup; aText: TCollectionExtendedString;
          aPoint: Graphic3dVertex; aHeight: cfloat; evalMinMax: bool = true) {.cdecl,
    importcpp: "Text", header: "Graphic3d_Group.hxx".}
proc text*(this: var Graphic3dGroup; theTextUtf: cstring; theOrientation: Ax2;
          theHeight: cfloat; theAngle: cfloat; theTp: Graphic3dTextPath;
          theHTA: Graphic3dHorizontalTextAlignment;
          theVTA: Graphic3dVerticalTextAlignment; theToEvalMinMax: bool = true;
          theHasOwnAnchor: bool = true) {.cdecl, importcpp: "Text", header: "Graphic3d_Group.hxx".}
proc text*(this: var Graphic3dGroup; theText: TCollectionExtendedString;
          theOrientation: Ax2; theHeight: cfloat; theAngle: cfloat;
          theTp: Graphic3dTextPath; theHTA: Graphic3dHorizontalTextAlignment;
          theVTA: Graphic3dVerticalTextAlignment; theToEvalMinMax: bool = true;
          theHasOwnAnchor: bool = true) {.cdecl, importcpp: "Text", header: "Graphic3d_Group.hxx".}
proc dumpJson*(this: Graphic3dGroup; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_Group.hxx".}
type
  HandleGraphic3dGroup* = Handle[Graphic3dGroup]
