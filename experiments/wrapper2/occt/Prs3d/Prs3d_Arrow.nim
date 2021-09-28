##  Created on: 1993-04-15
##  Created by: Jean-Louis Frenkel
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

discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
type
  Prs3dArrow* {.importcpp: "Prs3d_Arrow", header: "Prs3d_Arrow.hxx", bycopy.} = object ## !
                                                                               ## Defines
                                                                               ## the
                                                                               ## representation
                                                                               ## of
                                                                               ## the
                                                                               ## arrow
                                                                               ## as
                                                                               ## shaded
                                                                               ## triangulation.
                                                                               ## !
                                                                               ## @param
                                                                               ## theAxis
                                                                               ## axis
                                                                               ## definition
                                                                               ## (arrow
                                                                               ## origin
                                                                               ## and
                                                                               ## direction)
                                                                               ## !
                                                                               ## @param
                                                                               ## theTubeRadius
                                                                               ## tube
                                                                               ## (cylinder)
                                                                               ## radius
                                                                               ## !
                                                                               ## @param
                                                                               ## theAxisLength
                                                                               ## overall
                                                                               ## arrow
                                                                               ## length
                                                                               ## (cylinder +
                                                                               ## cone)
                                                                               ## !
                                                                               ## @param
                                                                               ## theConeRadius
                                                                               ## cone
                                                                               ## radius
                                                                               ## (arrow
                                                                               ## tip)
                                                                               ## !
                                                                               ## @param
                                                                               ## theConeLength
                                                                               ## cone
                                                                               ## length
                                                                               ## (arrow
                                                                               ## tip)
                                                                               ## !
                                                                               ## @param
                                                                               ## theNbFacettes
                                                                               ## tessellation
                                                                               ## quality
                                                                               ## for
                                                                               ## each
                                                                               ## part


## !!!Ignored construct:  DrawShaded ( const gp_Ax1 & theAxis , const Standard_Real theTubeRadius , const Standard_Real theAxisLength , const Standard_Real theConeRadius , const Standard_Real theConeLength , const Standard_Integer theNbFacettes ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  DrawSegments ( const gp_Pnt & theLocation , const gp_Dir & theDir , const Standard_Real theAngle , const Standard_Real theLength , const Standard_Integer theNbSegments ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  ! Defines the representation of the arrow.
## ! Note that this method does NOT assign any presentation aspects to the primitives group!
## ! @param theGroup     presentation group to add primitives
## ! @param theLocation  location of the arrow tip
## ! @param theDirection direction of the arrow
## ! @param theAngle     angle of opening of the arrow head
## ! @param theLength    length of the arrow (from the tip) static void Draw ( const Handle ( Graphic3d_Group ) & theGroup , const gp_Pnt & theLocation , const gp_Dir & theDirection , const Standard_Real theAngle , const Standard_Real theLength ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Alias to another method Draw() for backward compatibility. Standard_DEPRECATED ( Prs3d_Arrow::Draw() taking Graphic3d_Group should be used instead ) static void Draw ( const Handle ( Prs3d_Presentation ) & thePrs , const gp_Pnt & theLocation , const gp_Dir & theDirection , const Standard_Real theAngle , const Standard_Real theLength ) { Draw ( thePrs -> CurrentGroup ( ) , theLocation , theDirection , theAngle , theLength ) ; } }
## Error: identifier expected, but got: Prs3d_Arrow::Draw() taking Graphic3d_Group should be used instead!!!














































