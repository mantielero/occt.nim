##  Created on: 1993-09-14
##  Created by: Jean-Louis FRENKEL
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Pnt"
type
  Prs3dText* {.importcpp: "Prs3d_Text", header: "Prs3d_Text.hxx", bycopy.} = object ## !
                                                                            ## Defines the
                                                                            ## display of the
                                                                            ## text.
                                                                            ## !
                                                                            ## @param
                                                                            ## theGroup
                                                                            ## group to add
                                                                            ## primitives
                                                                            ## !
                                                                            ## @param
                                                                            ## theAspect
                                                                            ## presentation
                                                                            ## attributes
                                                                            ## !
                                                                            ## @param
                                                                            ## theText   text to draw
                                                                            ## !
                                                                            ## @param
                                                                            ## theAttachmentPoint
                                                                            ## attachment
                                                                            ## point
                                                                            ## !
                                                                            ## @return text to draw
                                                                            ## !
                                                                            ## Alias to
                                                                            ## another
                                                                            ## method
                                                                            ## Draw() for
                                                                            ## backward
                                                                            ## compatibility.


proc draw*(theGroup: Handle[Graphic3dGroup]; theAspect: Handle[Prs3dTextAspect];
          theText: TCollectionExtendedString; theAttachmentPoint: PntObj): Handle[
    Graphic3dText] {.cdecl, importcpp: "Prs3d_Text::Draw(@)", header: "Prs3d_Text.hxx".}
proc draw*(theGroup: Handle[Graphic3dGroup]; theAspect: Handle[Prs3dTextAspect];
          theText: TCollectionExtendedString; theOrientation: Ax2Obj;
          theHasOwnAnchor: bool = true): Handle[Graphic3dText] {.cdecl,
    importcpp: "Prs3d_Text::Draw(@)", header: "Prs3d_Text.hxx".}
proc draw*(thePrs: Handle[Prs3dPresentation]; theDrawer: Handle[Prs3dDrawer];
          theText: TCollectionExtendedString; theAttachmentPoint: PntObj) {.cdecl,
    importcpp: "Prs3d_Text::Draw(@)", header: "Prs3d_Text.hxx".}
proc draw*(thePrs: Handle[Prs3dPresentation]; theAspect: Handle[Prs3dTextAspect];
          theText: TCollectionExtendedString; theOrientation: Ax2Obj;
          theHasOwnAnchor: bool = true) {.cdecl, importcpp: "Prs3d_Text::Draw(@)",
                                      header: "Prs3d_Text.hxx".}
proc draw*(thePrs: Handle[Prs3dPresentation]; theAspect: Handle[Prs3dTextAspect];
          theText: TCollectionExtendedString; theAttachmentPoint: PntObj) {.cdecl,
    importcpp: "Prs3d_Text::Draw(@)", header: "Prs3d_Text.hxx".}