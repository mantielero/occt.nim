# PROVIDES: TopoDS TopoDS_Builder HandleTopoDS_FrozenShape HandleTopoDS_HShape TopoDS_Iterator HandleTopoDS_LockedShape TopoDS_Shape HandleTopoDS_TCompound HandleTopoDS_TCompSolid HandleTopoDS_TEdge HandleTopoDS_TFace HandleTopoDS_TShell HandleTopoDS_TSolid HandleTopoDS_TVertex HandleTopoDS_TWire HandleTopoDS_UnCompatibleShapes TopoDS_Compound TopoDS_CompSolid TopoDS_Edge TopoDS_Face TopoDS_Shell TopoDS_Solid TopoDS_Vertex TopoDS_Wire
# DEPENDS: MessageAttributeStream MessageAlert StandardTransient TopoDS_TShape TopoDS_TShape TopoDS_TShape TopoDS_TShape StandardTransient TopoDS_TShape TopoDS_TShape TopoDS_TShape TopoDS_TShape

type
  TopoDS* {.importcpp: "TopoDS", header: "TopoDS.hxx", bycopy.} = object ## ! Basic tool to access the data structure.
                                                                 ## ! Casts shape S to the more specialized return type, Vertex.
                                                                 ## ! Exceptions
                                                                 ## !
                                                                 ## Standard_TypeMismatch if S cannot be cast to this return type.

type
  TopoDS_Builder* {.importcpp: "TopoDS_Builder", header: "TopoDS_Builder.hxx", bycopy.} = object of RootObj ##
                                                                                         ## !
                                                                                         ## Make
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## Wire.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## basic
                                                                                         ## method
                                                                                         ## to
                                                                                         ## make
                                                                                         ## a
                                                                                         ## Shape,
                                                                                         ## used
                                                                                         ## by
                                                                                         ## all
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## Make
                                                                                         ## methods.

type
  HandleTopoDS_FrozenShape* = Handle[TopoDS_FrozenShape]

type
  HandleTopoDS_HShape* = Handle[TopoDS_HShape]
## ! Class to manipulate a Shape with  handle.

type
  TopoDS_Iterator* {.importcpp: "TopoDS_Iterator", header: "TopoDS_Iterator.hxx",
                    bycopy.} = object ## ! Creates an empty Iterator.

type
  HandleTopoDS_LockedShape* = Handle[TopoDS_LockedShape]

type
  TopoDS_Shape* {.importcpp: "TopoDS_Shape", header: "TopoDS_Shape.hxx", bycopy, pure, inheritable.} = object ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## a
                                                                                   ## NULL
                                                                                   ## Shape
                                                                                   ## referring
                                                                                   ## to
                                                                                   ## nothing.

type
  HandleTopoDS_TCompound* = Handle[TopoDS_TCompound]
## ! A TCompound is an all-purpose set of Shapes.

type
  HandleTopoDS_TCompSolid* = Handle[TopoDS_TCompSolid]
## ! A set of solids connected by their faces.

type
  HandleTopoDS_TEdge* = Handle[TopoDS_TEdge]
## ! A topological part  of a  curve  in 2D or 3D,  the
## ! boundary    is   a   set  of oriented    Vertices.

type
  HandleTopoDS_TFace* = Handle[TopoDS_TFace]
## ! A  topological part  of a surface   or  of the  2D
## ! space.  The  boundary  is  a   set of  wires   and
## ! vertices.

type
  HandleTopoDS_TShell* = Handle[TopoDS_TShell]
## ! A set of faces connected by their edges.

type
  HandleTopoDS_TSolid* = Handle[TopoDS_TSolid]
## ! A Topological part of 3D space, bounded by shells,
## ! edges and vertices.

type
  HandleTopoDS_TVertex* = Handle[TopoDS_TVertex]
## ! A  Vertex is a topological  point in  two or three
## ! dimensions.

type
  HandleTopoDS_TWire* = Handle[TopoDS_TWire]
## ! A set of edges connected by their vertices.

type
  HandleTopoDS_UnCompatibleShapes* = Handle[TopoDS_UnCompatibleShapes]

type
  TopoDS_Compound* {.importcpp: "TopoDS_Compound", header: "TopoDS_Compound.hxx",
                    bycopy.} = object of TopoDS_Shape ## ! Constructs an Undefined Compound.

type
  TopoDS_CompSolid* {.importcpp: "TopoDS_CompSolid",
                     header: "TopoDS_CompSolid.hxx", bycopy.} = object of TopoDS_Shape ##
                                                                                ## !
                                                                                ## Constructs
                                                                                ## an
                                                                                ## Undefined
                                                                                ## CompSolid.

type
  TopoDS_Edge* {.importcpp: "TopoDS_Edge", header: "TopoDS_Edge.hxx", bycopy.} = object of TopoDS_Shape ##
                                                                                              ## !
                                                                                              ## Undefined
                                                                                              ## Edge.

type
  TopoDS_Face* {.importcpp: "TopoDS_Face", header: "TopoDS_Face.hxx", bycopy.} = object of TopoDS_Shape ##
                                                                                              ## !
                                                                                              ## Undefined
                                                                                              ## Face.

type
  TopoDS_Shell* {.importcpp: "TopoDS_Shell", header: "TopoDS_Shell.hxx", bycopy.} = object of TopoDS_Shape ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## an
                                                                                                 ## Undefined
                                                                                                 ## Shell.

type
  TopoDS_Solid* {.importcpp: "TopoDS_Solid", header: "TopoDS_Solid.hxx", bycopy.} = object of TopoDS_Shape ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## an
                                                                                                 ## Undefined
                                                                                                 ## Solid.

type
  TopoDS_Vertex* {.importcpp: "TopoDS_Vertex", header: "TopoDS_Vertex.hxx", bycopy.} = object of TopoDS_Shape ##
                                                                                                    ## !
                                                                                                    ## Undefined
                                                                                                    ## Vertex.

                                                                                                    ## Vertex.
type
  TopoDS_Wire* {.importcpp: "TopoDS_Wire", header: "TopoDS_Wire.hxx", bycopy.} = object of TopoDS_Shape ##
                                                                                              ## !
                                                                                              ## Undefined
                                                                                              ## Wire.


type
  TopoDS_AlertAttribute* {.importcpp: "TopoDS_AlertAttribute",
                          header: "TopoDS_AlertAttribute.hxx", bycopy.} = object of MessageAttributeStream ##
                                                                                                    ## !
                                                                                                    ## Constructor
                                                                                                    ## with
                                                                                                    ## shape
                                                                                                    ## argument
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Push
                                                                                                    ## shape
                                                                                                    ## information
                                                                                                    ## into
                                                                                                    ## messenger

type
  TopoDS_AlertWithShape* {.importcpp: "TopoDS_AlertWithShape",
                          header: "TopoDS_AlertWithShape.hxx", bycopy.} = object of MessageAlert ##
                                                                                          ## !
                                                                                          ## Constructor
                                                                                          ## with
                                                                                          ## shape
                                                                                          ## argument

type
  TopoDS_HShape* {.importcpp: "TopoDS_HShape", header: "TopoDS_HShape.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## Constructs
                                                                                                         ## an
                                                                                                         ## empty
                                                                                                         ## shape
                                                                                                         ## object

type
  TopoDS_TCompound* {.importcpp: "TopoDS_TCompound",
                     header: "TopoDS_TCompound.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## an
                                                                                 ## empty
                                                                                 ## TCompound.

type
  TopoDS_TCompSolid* {.importcpp: "TopoDS_TCompSolid",
                      header: "TopoDS_TCompSolid.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## empty
                                                                                   ## TCompSolid.

type
  TopoDS_TEdge* {.importcpp: "TopoDS_TEdge", header: "TopoDS_TEdge.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## EDGE.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Construct
                                                                                                  ## an
                                                                                                  ## edge.

type
  TopoDS_TFace* {.importcpp: "TopoDS_TFace", header: "TopoDS_TFace.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## an
                                                                                                  ## empty
                                                                                                  ## TFace.

type
  TopoDS_TShape* {.importcpp: "TopoDS_TShape", header: "TopoDS_TShape.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## the
                                                                                                         ## free
                                                                                                         ## flag.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Constructs
                                                                                                         ## an
                                                                                                         ## empty
                                                                                                         ## TShape.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Free
                                                                                                         ## :
                                                                                                         ## True
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Modified
                                                                                                         ## :
                                                                                                         ## True
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Checked
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Orientable
                                                                                                         ## :
                                                                                                         ## True
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Closed
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Infinite
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Convex
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## Defined
                                                                                                         ## mask
                                                                                                         ## values

type
  TopoDS_TShell* {.importcpp: "TopoDS_TShell", header: "TopoDS_TShell.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## an
                                                                                                     ## empty
                                                                                                     ## TShell.

type
  TopoDS_TSolid* {.importcpp: "TopoDS_TSolid", header: "TopoDS_TSolid.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## an
                                                                                                     ## empty
                                                                                                     ## TSolid.

type
  TopoDS_TVertex* {.importcpp: "TopoDS_TVertex", header: "TopoDS_TVertex.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## VERTEX.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Construct
                                                                                                        ## a
                                                                                                        ## vertex.

type
  TopoDS_TWire* {.importcpp: "TopoDS_TWire", header: "TopoDS_TWire.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## an
                                                                                                  ## empty
                                                                                                  ## TWire.

