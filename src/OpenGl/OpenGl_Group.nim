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

## !!!Ignored construct:  # _OpenGl_Group_Header [NewLine] # _OpenGl_Group_Header [NewLine] # < Graphic3d_Group . hxx > [NewLine] # < Graphic3d_Structure . hxx > [NewLine] # < NCollection_List . hxx > [NewLine] # < OpenGl_Aspects . hxx > [NewLine] # < OpenGl_Element . hxx > [NewLine] class OpenGl_Group ;
## Error: expected ';'!!!

discard "forward decl of OpenGl_Structure"
type
  OpenGlElementNode* {.importcpp: "OpenGl_ElementNode", header: "OpenGl_Group.hxx",
                      bycopy.} = object
    elem* {.importc: "elem".}: ptr OpenGlElement
    next* {.importc: "next".}: ptr OpenGlElementNode


## ! Implementation of low-level graphic group.

type
  OpenGlGroup* {.importcpp: "OpenGl_Group", header: "OpenGl_Group.hxx", bycopy.} = object of Graphic3dGroup ##
                                                                                                  ## !
                                                                                                  ## Create
                                                                                                  ## empty
                                                                                                  ## group.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Will
                                                                                                  ## throw
                                                                                                  ## exception
                                                                                                  ## if
                                                                                                  ## not
                                                                                                  ## created
                                                                                                  ## by
                                                                                                  ## OpenGl_Structure.
    graphic3dAspects* {.importc: "Graphic3d_Aspects".}: Handle
    standardType* {.importc: "Standard_Type".}: Handle


## !!!Ignored construct:  public : ! Create empty group.
## ! Will throw exception if not created by OpenGl_Structure. OpenGl_Group ( const Handle ( Graphic3d_Structure ) & theStruct ) ;
## Error: token expected: ) but got: &!!!

proc clear*(this: var OpenGlGroup; theToUpdateStructureMgr: bool) {.
    importcpp: "Clear", header: "OpenGl_Group.hxx".}
## !!!Ignored construct:  Aspects ( ) const { return myAspects != NULL ? myAspects -> Aspect ( ) : Handle ( Graphic3d_Aspects ) ( ) ; } ! Update aspect. virtual void SetGroupPrimitivesAspect ( const Handle ( Graphic3d_Aspects ) & theAspect ) ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  ! Append aspect as an element. virtual void SetPrimitivesAspect ( const Handle ( Graphic3d_Aspects ) & theAspect ) ;
## Error: token expected: ) but got: &!!!

proc synchronizeAspects*(this: var OpenGlGroup) {.importcpp: "SynchronizeAspects",
    header: "OpenGl_Group.hxx".}
proc replaceAspects*(this: var OpenGlGroup; theMap: Graphic3dMapOfAspectsToAspects) {.
    importcpp: "ReplaceAspects", header: "OpenGl_Group.hxx".}
## !!!Ignored construct:  ! Add primitive array element virtual void AddPrimitiveArray ( const Graphic3d_TypeOfPrimitiveArray theType , const Handle ( Graphic3d_IndexBuffer ) & theIndices , const Handle ( Graphic3d_Buffer ) & theAttribs , const Handle ( Graphic3d_BoundBuffer ) & theBounds , const Standard_Boolean theToEvalMinMax ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Adds a text for display virtual void AddText ( const Handle ( Graphic3d_Text ) & theTextParams , const Standard_Boolean theToEvalMinMax ) ;
## Error: token expected: ) but got: &!!!

proc setFlippingOptions*(this: var OpenGlGroup; theIsEnabled: bool; theRefPlane: Ax2) {.
    importcpp: "SetFlippingOptions", header: "OpenGl_Group.hxx".}
proc setStencilTestOptions*(this: var OpenGlGroup; theIsEnabled: bool) {.
    importcpp: "SetStencilTestOptions", header: "OpenGl_Group.hxx".}
proc glStruct*(this: OpenGlGroup): ptr OpenGlStructure {.noSideEffect,
    importcpp: "GlStruct", header: "OpenGl_Group.hxx".}
proc addElement*(this: var OpenGlGroup; theElem: ptr OpenGlElement) {.
    importcpp: "AddElement", header: "OpenGl_Group.hxx".}
## !!!Ignored construct:  virtual void Render ( const Handle ( OpenGl_Workspace ) & theWorkspace ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  virtual void Release ( const Handle ( OpenGl_Context ) & theGlCtx ) ;
## Error: token expected: ) but got: &!!!

proc firstNode*(this: OpenGlGroup): ptr OpenGlElementNode {.noSideEffect,
    importcpp: "FirstNode", header: "OpenGl_Group.hxx".}
proc glAspects*(this: OpenGlGroup): ptr OpenGlAspects {.noSideEffect,
    importcpp: "GlAspects", header: "OpenGl_Group.hxx".}
proc isRaytracable*(this: OpenGlGroup): bool {.noSideEffect,
    importcpp: "IsRaytracable", header: "OpenGl_Group.hxx".}
proc dumpJson*(this: OpenGlGroup; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "OpenGl_Group.hxx".}
type
  OpenGlGroupbaseType* = Graphic3dGroup

proc getTypeName*(): cstring {.importcpp: "OpenGl_Group::get_type_name(@)",
                            header: "OpenGl_Group.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( OpenGl_Group , Graphic3d_Group ) #  _OpenGl_Group_Header
## Error: expected ';'!!!














































