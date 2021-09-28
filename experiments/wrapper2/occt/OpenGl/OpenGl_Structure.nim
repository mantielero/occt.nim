##  Created on: 2011-08-01
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

## !!!Ignored construct:  # OpenGl_Structure_Header [NewLine] # OpenGl_Structure_Header [NewLine] # < Graphic3d_CStructure . hxx > [NewLine] # < Graphic3d_SequenceOfHClipPlane . hxx > [NewLine] # < OpenGl_Aspects . hxx > [NewLine] # < OpenGl_GraphicDriver . hxx > [NewLine] # < OpenGl_Group . hxx > [NewLine] # < OpenGl_Matrix . hxx > [NewLine] # < OpenGl_Vec . hxx > [NewLine] # < OpenGl_Workspace . hxx > [NewLine] # < NCollection_List . hxx > [NewLine] class OpenGl_GraphicDriver ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( OpenGl_Structure , Graphic3d_CStructure ) typedef NCollection_List < const OpenGl_Structure * > OpenGl_ListOfStructure ;
## Error: expected ';'!!!

## ! Implementation of low-level graphic structure.

type
  OpenGlStructure* {.importcpp: "OpenGl_Structure", header: "OpenGl_Structure.hxx",
                    bycopy.} = object of Graphic3dCStructure ## ! Auxiliary wrapper to iterate OpenGl_Structure sequence.
                                                        ## ! Create empty structure
                                                        ## ! Access graphic driver
    standardType* {.importc: "Standard_Type".}: Handle
    graphic3dCStructure* {.importc: "Graphic3d_CStructure".}: Handle
    graphic3dGroup* {.importc: "Graphic3d_Group".}: Handle
    ## !< transformation, actually used for rendering (includes Local Origin shift)
    ## !< Used to tell OpenGl to interpret polygons in clockwise order.

  OpenGlStructurebaseType* = Graphic3dCStructure

proc getTypeName*(): cstring {.importcpp: "OpenGl_Structure::get_type_name(@)",
                            header: "OpenGl_Structure.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

type
  OpenGlStructureStructIterator* = SubclassStructIterator[OpenGlStructure]
  OpenGlStructureGroupIterator* = SubclassGroupIterator[OpenGlGroup]

## !!!Ignored construct:  public : ! Create empty structure OpenGl_Structure ( const Handle ( Graphic3d_StructureManager ) & theManager ) ;
## Error: token expected: ) but got: &!!!

proc onVisibilityChanged*(this: var OpenGlStructure) {.
    importcpp: "OnVisibilityChanged", header: "OpenGl_Structure.hxx".}
proc clear*(this: var OpenGlStructure) {.importcpp: "Clear",
                                     header: "OpenGl_Structure.hxx".}
proc connect*(this: var OpenGlStructure; theStructure: var Graphic3dCStructure) {.
    importcpp: "Connect", header: "OpenGl_Structure.hxx".}
proc disconnect*(this: var OpenGlStructure; theStructure: var Graphic3dCStructure) {.
    importcpp: "Disconnect", header: "OpenGl_Structure.hxx".}
## !!!Ignored construct:  ! Synchronize structure transformation virtual void SetTransformation ( const Handle ( TopLoc_Datum3D ) & theTrsf ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Set transformation persistence. virtual void SetTransformPersistence ( const Handle ( Graphic3d_TransformPers ) & theTrsfPers ) ;
## Error: token expected: ) but got: &!!!

proc setZLayer*(this: var OpenGlStructure; theLayerIndex: Graphic3dZLayerId) {.
    importcpp: "SetZLayer", header: "OpenGl_Structure.hxx".}
## !!!Ignored construct:  ! Highlights structure according to the given style and updates corresponding class fields
## ! (highlight status and style) virtual void GraphicHighlight ( const Handle ( Graphic3d_PresentationAttributes ) & theStyle ) ;
## Error: token expected: ) but got: &!!!

proc graphicUnhighlight*(this: var OpenGlStructure) {.
    importcpp: "GraphicUnhighlight", header: "OpenGl_Structure.hxx".}
## !!!Ignored construct:  ShadowLink ( const Handle ( Graphic3d_StructureManager ) & theManager ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  NewGroup ( const Handle ( Graphic3d_Structure ) & theStruct ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  ! Remove group from this structure virtual void RemoveGroup ( const Handle ( Graphic3d_Group ) & theGroup ) ;
## Error: token expected: ) but got: &!!!

proc glDriver*(this: OpenGlStructure): ptr OpenGlGraphicDriver {.noSideEffect,
    importcpp: "GlDriver", header: "OpenGl_Structure.hxx".}
## !!!Ignored construct:  void Clear ( const Handle ( OpenGl_Context ) & theGlCtx ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Renders the structure. virtual void Render ( const Handle ( OpenGl_Workspace ) & theWorkspace ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Releases structure resources. virtual void Release ( const Handle ( OpenGl_Context ) & theGlCtx ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! This method releases GL resources without actual elements destruction.
## ! As result structure could be correctly destroyed layer without GL context
## ! (after last window was closed for example).
## !
## ! Notice however that reusage of this structure after calling this method is incorrect
## ! and will lead to broken visualization due to loosed data. void ReleaseGlResources ( const Handle ( OpenGl_Context ) & theGlCtx ) ;
## Error: token expected: ) but got: &!!!

proc instancedStructure*(this: OpenGlStructure): ptr OpenGlStructure {.noSideEffect,
    importcpp: "InstancedStructure", header: "OpenGl_Structure.hxx".}
proc modificationState*(this: OpenGlStructure): StandardSize {.noSideEffect,
    importcpp: "ModificationState", header: "OpenGl_Structure.hxx".}
proc resetModificationState*(this: OpenGlStructure) {.noSideEffect,
    importcpp: "ResetModificationState", header: "OpenGl_Structure.hxx".}
proc isRaytracable*(this: OpenGlStructure): bool {.noSideEffect,
    importcpp: "IsRaytracable", header: "OpenGl_Structure.hxx".}
proc updateLayerTransformation*(this: var OpenGlStructure) {.
    importcpp: "updateLayerTransformation", header: "OpenGl_Structure.hxx".}
proc dumpJson*(this: OpenGlStructure; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "OpenGl_Structure.hxx".}
## !!!Ignored construct:  ! Renders groups of structure without applying any attributes (i.e. transform, material etc).
## ! @param theWorkspace current workspace
## ! @param theHasClosed flag will be set to TRUE if structure contains at least one group of closed primitives void renderGeometry ( const Handle ( OpenGl_Workspace ) & theWorkspace , bool & theHasClosed ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Render the bounding box. void renderBoundingBox ( const Handle ( OpenGl_Workspace ) & theWorkspace ) const ;
## Error: token expected: ) but got: &!!!














































