##  Created on: 1996-12-23
##  Created by: Alexander BRIVIN and Dmitry TARASOV
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

discard "forward decl of Vrml_SFImage"
discard "forward decl of Vrml_SFRotation"
discard "forward decl of Vrml_AsciiText"
discard "forward decl of Vrml_Cone"
discard "forward decl of Vrml_Cube"
discard "forward decl of Vrml_Cylinder"
discard "forward decl of Vrml_IndexedFaceSet"
discard "forward decl of Vrml_IndexedLineSet"
discard "forward decl of Vrml_PointSet"
discard "forward decl of Vrml_Sphere"
discard "forward decl of Vrml_Coordinate3"
discard "forward decl of Vrml_FontStyle"
discard "forward decl of Vrml_Info"
discard "forward decl of Vrml_LOD"
discard "forward decl of Vrml_Material"
discard "forward decl of Vrml_MaterialBinding"
discard "forward decl of Vrml_Normal"
discard "forward decl of Vrml_NormalBinding"
discard "forward decl of Vrml_Texture2"
discard "forward decl of Vrml_Texture2Transform"
discard "forward decl of Vrml_TextureCoordinate2"
discard "forward decl of Vrml_ShapeHints"
discard "forward decl of Vrml_MatrixTransform"
discard "forward decl of Vrml_Rotation"
discard "forward decl of Vrml_Scale"
discard "forward decl of Vrml_Transform"
discard "forward decl of Vrml_Translation"
discard "forward decl of Vrml_OrthographicCamera"
discard "forward decl of Vrml_PerspectiveCamera"
discard "forward decl of Vrml_DirectionalLight"
discard "forward decl of Vrml_PointLight"
discard "forward decl of Vrml_SpotLight"
discard "forward decl of Vrml_Group"
discard "forward decl of Vrml_Separator"
discard "forward decl of Vrml_Switch"
discard "forward decl of Vrml_TransformSeparator"
discard "forward decl of Vrml_WWWAnchor"
discard "forward decl of Vrml_WWWInline"
discard "forward decl of Vrml_Instancing"
type
  Vrml* {.importcpp: "Vrml", header: "Vrml.hxx", bycopy.} = object ## ! Writes a header in anOStream (VRML file).
                                                           ## ! Writes one line of commentary in  anOStream (VRML file).


proc vrmlHeaderWriter*(anOStream: var StandardOStream): var StandardOStream {.
    importcpp: "Vrml::VrmlHeaderWriter(@)", header: "Vrml.hxx".}
proc commentWriter*(aComment: StandardCString; anOStream: var StandardOStream): var StandardOStream {.
    importcpp: "Vrml::CommentWriter(@)", header: "Vrml.hxx".}
