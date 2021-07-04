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

import
  ../Graphic3d/Graphic3d_ArrayOfTriangles,
  ../Graphic3d/Graphic3d_ArrayOfSegments, Prs3d_Presentation

discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
type
  Prs3d_Arrow* {.importcpp: "Prs3d_Arrow", header: "Prs3d_Arrow.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Defines
                                                                                ## the
                                                                                ## representation
                                                                                ## of
                                                                                ## the
                                                                                ## arrow
                                                                                ## as
                                                                                ## shaded
                                                                                ## triangulation.
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theAxis
                                                                                ## axis
                                                                                ## definition
                                                                                ## (arrow
                                                                                ## origin
                                                                                ## and
                                                                                ## direction)
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theTubeRadius
                                                                                ## tube
                                                                                ## (cylinder)
                                                                                ## radius
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theAxisLength
                                                                                ## overall
                                                                                ## arrow
                                                                                ## length
                                                                                ## (cylinder
                                                                                ## +
                                                                                ## cone)
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theConeRadius
                                                                                ## cone
                                                                                ## radius
                                                                                ## (arrow
                                                                                ## tip)
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theConeLength
                                                                                ## cone
                                                                                ## length
                                                                                ## (arrow
                                                                                ## tip)
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theNbFacettes
                                                                                ## tessellation
                                                                                ## quality
                                                                                ## for
                                                                                ## each
                                                                                ## part


proc DrawShaded*(theAxis: gp_Ax1; theTubeRadius: Standard_Real;
                theAxisLength: Standard_Real; theConeRadius: Standard_Real;
                theConeLength: Standard_Real; theNbFacettes: Standard_Integer): handle[
    Graphic3d_ArrayOfTriangles] {.importcpp: "Prs3d_Arrow::DrawShaded(@)",
                                 header: "Prs3d_Arrow.hxx".}
proc DrawSegments*(theLocation: gp_Pnt; theDir: gp_Dir; theAngle: Standard_Real;
                  theLength: Standard_Real; theNbSegments: Standard_Integer): handle[
    Graphic3d_ArrayOfSegments] {.importcpp: "Prs3d_Arrow::DrawSegments(@)",
                                header: "Prs3d_Arrow.hxx".}
proc Draw*(theGroup: handle[Graphic3d_Group]; theLocation: gp_Pnt;
          theDirection: gp_Dir; theAngle: Standard_Real; theLength: Standard_Real) {.
    importcpp: "Prs3d_Arrow::Draw(@)", header: "Prs3d_Arrow.hxx".}
## !!!Ignored construct:  ! Alias to another method Draw() for backward compatibility. Standard_DEPRECATED ( Prs3d_Arrow::Draw() taking Graphic3d_Group should be used instead ) static void Draw ( const opencascade :: handle < Prs3d_Presentation > [end of template] & thePrs , const gp_Pnt & theLocation , const gp_Dir & theDirection , const Standard_Real theAngle , const Standard_Real theLength ) { Draw ( thePrs -> CurrentGroup ( ) , theLocation , theDirection , theAngle , theLength ) ; } }
## Error: identifier expected, but got: Prs3d_Arrow::Draw() taking Graphic3d_Group should be used instead!!!
