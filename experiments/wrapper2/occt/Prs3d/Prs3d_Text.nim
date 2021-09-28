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


## !!!Ignored construct:  Draw ( const Handle ( Graphic3d_Group ) & theGroup , const Handle ( Prs3d_TextAspect ) & theAspect , const TCollection_ExtendedString & theText , const gp_Pnt & theAttachmentPoint ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  Draw ( const Handle ( Graphic3d_Group ) & theGroup , const Handle ( Prs3d_TextAspect ) & theAspect , const TCollection_ExtendedString & theText , const gp_Ax2 & theOrientation , const Standard_Boolean theHasOwnAnchor = Standard_True ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  public : ! Alias to another method Draw() for backward compatibility. Standard_DEPRECATED ( Prs3d_Text::Draw() taking Graphic3d_Group should be used instead ) static void Draw ( const Handle ( Prs3d_Presentation ) & thePrs , const Handle ( Prs3d_Drawer ) & theDrawer , const TCollection_ExtendedString & theText , const gp_Pnt & theAttachmentPoint ) { Draw ( thePrs -> CurrentGroup ( ) , theDrawer -> TextAspect ( ) , theText , theAttachmentPoint ) ; } ! Alias to another method Draw() for backward compatibility. Standard_DEPRECATED ( Prs3d_Text::Draw() taking Graphic3d_Group should be used instead ) static void Draw ( const Handle ( Prs3d_Presentation ) & thePrs , const Handle ( Prs3d_TextAspect ) & theAspect , const TCollection_ExtendedString & theText , const gp_Ax2 & theOrientation , const Standard_Boolean theHasOwnAnchor = Standard_True ) { Draw ( thePrs -> CurrentGroup ( ) , theAspect , theText , theOrientation , theHasOwnAnchor ) ; } ! Alias to another method Draw() for backward compatibility. Standard_DEPRECATED ( Prs3d_Text::Draw() taking Graphic3d_Group should be used instead ) static void Draw ( const Handle ( Prs3d_Presentation ) & thePrs , const Handle ( Prs3d_TextAspect ) & theAspect , const TCollection_ExtendedString & theText , const gp_Pnt & theAttachmentPoint ) { Draw ( thePrs -> CurrentGroup ( ) , theAspect , theText , theAttachmentPoint ) ; } }
## Error: identifier expected, but got: Prs3d_Text::Draw() taking Graphic3d_Group should be used instead!!!














































