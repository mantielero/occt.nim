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

import
  ../gp/gp_Ax2, Prs3d_Drawer, Prs3d_Presentation, Prs3d_TextAspect

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Pnt"
type
  Prs3d_Text* {.importcpp: "Prs3d_Text", header: "Prs3d_Text.hxx", bycopy.} = object ## !
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
                                                                             ## theText
                                                                             ## text to
                                                                             ## draw
                                                                             ## !
                                                                             ## @param
                                                                             ## theAttachmentPoint
                                                                             ## attachment
                                                                             ## point
                                                                             ## !
                                                                             ## @return
                                                                             ## text to
                                                                             ## draw
                                                                             ## !
                                                                             ## Alias to
                                                                             ## another
                                                                             ## method
                                                                             ## Draw() for
                                                                             ## backward
                                                                             ## compatibility.


proc Draw*(theGroup: handle[Graphic3d_Group]; theAspect: handle[Prs3d_TextAspect];
          theText: TCollection_ExtendedString; theAttachmentPoint: gp_Pnt): handle[
    Graphic3d_Text] {.importcpp: "Prs3d_Text::Draw(@)", header: "Prs3d_Text.hxx".}
proc Draw*(theGroup: handle[Graphic3d_Group]; theAspect: handle[Prs3d_TextAspect];
          theText: TCollection_ExtendedString; theOrientation: gp_Ax2;
          theHasOwnAnchor: Standard_Boolean = Standard_True): handle[Graphic3d_Text] {.
    importcpp: "Prs3d_Text::Draw(@)", header: "Prs3d_Text.hxx".}
## !!!Ignored construct:  public : ! Alias to another method Draw() for backward compatibility. Standard_DEPRECATED ( Prs3d_Text::Draw() taking Graphic3d_Group should be used instead ) static void Draw ( const opencascade :: handle < Prs3d_Presentation > [end of template] & thePrs , const opencascade :: handle < Prs3d_Drawer > [end of template] & theDrawer , const TCollection_ExtendedString & theText , const gp_Pnt & theAttachmentPoint ) { Draw ( thePrs -> CurrentGroup ( ) , theDrawer -> TextAspect ( ) , theText , theAttachmentPoint ) ; } ! Alias to another method Draw() for backward compatibility. Standard_DEPRECATED ( Prs3d_Text::Draw() taking Graphic3d_Group should be used instead ) static void Draw ( const opencascade :: handle < Prs3d_Presentation > [end of template] & thePrs , const opencascade :: handle < Prs3d_TextAspect > [end of template] & theAspect , const TCollection_ExtendedString & theText , const gp_Ax2 & theOrientation , const Standard_Boolean theHasOwnAnchor = Standard_True ) { Draw ( thePrs -> CurrentGroup ( ) , theAspect , theText , theOrientation , theHasOwnAnchor ) ; } ! Alias to another method Draw() for backward compatibility. Standard_DEPRECATED ( Prs3d_Text::Draw() taking Graphic3d_Group should be used instead ) static void Draw ( const opencascade :: handle < Prs3d_Presentation > [end of template] & thePrs , const opencascade :: handle < Prs3d_TextAspect > [end of template] & theAspect , const TCollection_ExtendedString & theText , const gp_Pnt & theAttachmentPoint ) { Draw ( thePrs -> CurrentGroup ( ) , theAspect , theText , theAttachmentPoint ) ; } }
## Error: identifier expected, but got: Prs3d_Text::Draw() taking Graphic3d_Group should be used instead!!!
