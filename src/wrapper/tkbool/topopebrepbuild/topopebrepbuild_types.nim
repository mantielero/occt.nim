type
  TopOpeBRepBuildArea1dBuilder* {.importcpp: "TopOpeBRepBuild_Area1dBuilder",
                                 header: "TopOpeBRepBuild_Area1dBuilder.hxx",
                                 bycopy.} = object of TopOpeBRepBuildAreaBuilder
type
  TopOpeBRepBuildArea2dBuilder* {.importcpp: "TopOpeBRepBuild_Area2dBuilder",
                                 header: "TopOpeBRepBuild_Area2dBuilder.hxx",
                                 bycopy.} = object of TopOpeBRepBuildAreaBuilder
type
  TopOpeBRepBuildArea3dBuilder* {.importcpp: "TopOpeBRepBuild_Area3dBuilder",
                                 header: "TopOpeBRepBuild_Area3dBuilder.hxx",
                                 bycopy.} = object of TopOpeBRepBuildAreaBuilder
type
  TopOpeBRepBuildAreaBuilder* {.importcpp: "TopOpeBRepBuild_AreaBuilder",
                               header: "TopOpeBRepBuild_AreaBuilder.hxx", bycopy.} = object of RootObj
type
  TopOpeBRepBuildBlockBuilder* {.importcpp: "TopOpeBRepBuild_BlockBuilder",
                                header: "TopOpeBRepBuild_BlockBuilder.hxx", bycopy.} = object
type
  TopOpeBRepBuildBlockIterator* {.importcpp: "TopOpeBRepBuild_BlockIterator",
                                 header: "TopOpeBRepBuild_BlockIterator.hxx",
                                 bycopy.} = object
type
  TopOpeBRepBuildBuilder* {.importcpp: "TopOpeBRepBuild_Builder",
                           header: "TopOpeBRepBuild_Builder.hxx", bycopy.} = object of RootObj ## !
                                                                               ## update
                                                                               ## the
                                                                               ## DS
                                                                               ## by
                                                                               ## creating
                                                                               ## new
                                                                               ## geometries.
                                                                               ## !
                                                                               ## create
                                                                               ## edges
                                                                               ## on
                                                                               ## the
                                                                               ## new
                                                                               ## curve
                                                                               ## <Icurv>.
type
  TopOpeBRepBuildBuilder1* {.importcpp: "TopOpeBRepBuild_Builder1",
                            header: "TopOpeBRepBuild_Builder1.hxx", bycopy.} = object of TopOpeBRepBuildBuilder
type
  TopOpeBRepBuildBuilderON* {.importcpp: "TopOpeBRepBuild_BuilderON",
                             header: "TopOpeBRepBuild_BuilderON.hxx", bycopy.} = object
type
  TopOpeBRepBuildCompositeClassifier* {.importcpp: "TopOpeBRepBuild_CompositeClassifier", header: "TopOpeBRepBuild_CompositeClassifier.hxx",
                                       bycopy.} = object of TopOpeBRepBuildLoopClassifier
type
  TopOpeBRepBuildCorrectFace2d* {.importcpp: "TopOpeBRepBuild_CorrectFace2d",
                                 header: "TopOpeBRepBuild_CorrectFace2d.hxx",
                                 bycopy.} = object
type
  TopOpeBRepBuildEdgeBuilder* {.importcpp: "TopOpeBRepBuild_EdgeBuilder",
                               header: "TopOpeBRepBuild_EdgeBuilder.hxx", bycopy.} = object of TopOpeBRepBuildArea1dBuilder
type
  TopOpeBRepBuildFaceAreaBuilder* {.importcpp: "TopOpeBRepBuild_FaceAreaBuilder", header: "TopOpeBRepBuild_FaceAreaBuilder.hxx",
                                   bycopy.} = object of TopOpeBRepBuildArea2dBuilder
type
  TopOpeBRepBuildFaceBuilder* {.importcpp: "TopOpeBRepBuild_FaceBuilder",
                               header: "TopOpeBRepBuild_FaceBuilder.hxx", bycopy.} = object
type
  TopOpeBRepBuildFuseFace* {.importcpp: "TopOpeBRepBuild_FuseFace",
                            header: "TopOpeBRepBuild_FuseFace.hxx", bycopy.} = object
type
  TopOpeBRepBuildGIter* {.importcpp: "TopOpeBRepBuild_GIter",
                         header: "TopOpeBRepBuild_GIter.hxx", bycopy.} = object
type
  TopOpeBRepBuildGTool* {.importcpp: "TopOpeBRepBuild_GTool",
                         header: "TopOpeBRepBuild_GTool.hxx", bycopy.} = object
type
  TopOpeBRepBuildGTopo* {.importcpp: "TopOpeBRepBuild_GTopo",
                         header: "TopOpeBRepBuild_GTopo.hxx", bycopy.} = object
type
  HandleTopOpeBRepBuildHBuilder* = Handle[TopOpeBRepBuildHBuilder]
## ! The HBuilder  algorithm    constructs   topological
## ! objects  from   an    existing  topology  and  new
## ! geometries attached to the topology. It is used to
## ! construct the result of a topological operation;
## ! the existing  topologies are the parts involved in
## ! the  topological  operation and the new geometries
## ! are the intersection lines and points.
type
  TopOpeBRepBuildHBuilder* {.importcpp: "TopOpeBRepBuild_HBuilder",
                            header: "TopOpeBRepBuild_HBuilder.hxx", bycopy.} = object of StandardTransient
type
  HandleTopOpeBRepBuildLoop* = Handle[TopOpeBRepBuildLoop]
## ! a Loop is an existing shape (Shell,Wire) or a set
## ! of shapes (Faces,Edges) which are connex.
## ! a set of connex shape is represented by a BlockIterator
type
  TopOpeBRepBuildLoop* {.importcpp: "TopOpeBRepBuild_Loop",
                        header: "TopOpeBRepBuild_Loop.hxx", bycopy.} = object of StandardTransient
type
  TopOpeBRepBuildLoopClassifier* {.importcpp: "TopOpeBRepBuild_LoopClassifier",
                                  header: "TopOpeBRepBuild_LoopClassifier.hxx",
                                  bycopy.} = object of RootObj
type
  TopOpeBRepBuildLoopSet* {.importcpp: "TopOpeBRepBuild_LoopSet",
                           header: "TopOpeBRepBuild_LoopSet.hxx", bycopy.} = object of RootObj
type
  HandleTopOpeBRepBuildPave* = Handle[TopOpeBRepBuildPave]
  TopOpeBRepBuildPave* {.importcpp: "TopOpeBRepBuild_Pave",
                        header: "TopOpeBRepBuild_Pave.hxx", bycopy.} = object of TopOpeBRepBuildLoop ##
                                                                                              ## !
                                                                                              ## V
                                                                                              ## =
                                                                                              ## vertex,
                                                                                              ## P
                                                                                              ## =
                                                                                              ## parameter
                                                                                              ## of
                                                                                              ## vertex
                                                                                              ## <V>
                                                                                              ##
                                                                                              ## !
                                                                                              ## bound
                                                                                              ## =
                                                                                              ## True
                                                                                              ## if
                                                                                              ## <V>
                                                                                              ## is
                                                                                              ## an
                                                                                              ## old
                                                                                              ## vertex
                                                                                              ##
                                                                                              ## !
                                                                                              ## bound
                                                                                              ## =
                                                                                              ## False
                                                                                              ## if
                                                                                              ## <V>
                                                                                              ## is
                                                                                              ## a
                                                                                              ## new
                                                                                              ## vertex
type
  TopOpeBRepBuildPaveClassifier* {.importcpp: "TopOpeBRepBuild_PaveClassifier",
                                  header: "TopOpeBRepBuild_PaveClassifier.hxx",
                                  bycopy.} = object of TopOpeBRepBuildLoopClassifier ##
                                                                                ## !
                                                                                ## Create
                                                                                ## a
                                                                                ## Pave
                                                                                ## classifier
                                                                                ## to
                                                                                ## compare
                                                                                ## vertices
                                                                                ## on
                                                                                ## edge
                                                                                ## <E>.
type
  TopOpeBRepBuildPaveSet* {.importcpp: "TopOpeBRepBuild_PaveSet",
                           header: "TopOpeBRepBuild_PaveSet.hxx", bycopy.} = object of TopOpeBRepBuildLoopSet ##
                                                                                                       ## !
                                                                                                       ## Create
                                                                                                       ## a
                                                                                                       ## Pave
                                                                                                       ## set
                                                                                                       ## on
                                                                                                       ## edge
                                                                                                       ## <E>.
                                                                                                       ## It
                                                                                                       ## contains
                                                                                                       ## <E>
                                                                                                       ## vertices.
type
  TopOpeBRepBuildShapeListOfShape* {.importcpp: "TopOpeBRepBuild_ShapeListOfShape", header: "TopOpeBRepBuild_ShapeListOfShape.hxx",
                                    bycopy.} = object
type
  TopOpeBRepBuildShapeSet* {.importcpp: "TopOpeBRepBuild_ShapeSet",
                            header: "TopOpeBRepBuild_ShapeSet.hxx", bycopy.} = object of RootObj ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## a
                                                                                 ## ShapeSet
                                                                                 ## in
                                                                                 ## order
                                                                                 ## to
                                                                                 ## build
                                                                                 ## shapes
                                                                                 ## connected
                                                                                 ##
                                                                                 ## !
                                                                                 ## by
                                                                                 ## <SubShapeType>
                                                                                 ## shapes.
                                                                                 ##
                                                                                 ## !
                                                                                 ## <checkshape>:check
                                                                                 ## (or
                                                                                 ## not)
                                                                                 ## the
                                                                                 ## shapes,
                                                                                 ## startelements,
                                                                                 ## elements
                                                                                 ## added.
type
  TopOpeBRepBuildShellFaceClassifier* {.importcpp: "TopOpeBRepBuild_ShellFaceClassifier", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx",
                                       bycopy.} = object of TopOpeBRepBuildCompositeClassifier ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## classifier
                                                                                          ## in
                                                                                          ## 3D
                                                                                          ## space,
                                                                                          ## to
                                                                                          ## compare
                                                                                          ## :
                                                                                          ##
                                                                                          ## !
                                                                                          ## a
                                                                                          ## face
                                                                                          ## with
                                                                                          ## a
                                                                                          ## set
                                                                                          ## of
                                                                                          ## faces
                                                                                          ##
                                                                                          ## !
                                                                                          ## a
                                                                                          ## shell
                                                                                          ## with
                                                                                          ## a
                                                                                          ## set
                                                                                          ## of
                                                                                          ## faces
                                                                                          ##
                                                                                          ## !
                                                                                          ## a
                                                                                          ## shell
                                                                                          ## with
                                                                                          ## a
                                                                                          ## shell
type
  TopOpeBRepBuildShellFaceSet* {.importcpp: "TopOpeBRepBuild_ShellFaceSet",
                                header: "TopOpeBRepBuild_ShellFaceSet.hxx", bycopy.} = object of TopOpeBRepBuildShapeSet ##
                                                                                                                  ## !
                                                                                                                  ## Creates
                                                                                                                  ## a
                                                                                                                  ## ShellFaceSet
                                                                                                                  ## to
                                                                                                                  ## build
                                                                                                                  ## blocks
                                                                                                                  ## of
                                                                                                                  ## faces
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## connected
                                                                                                                  ## by
                                                                                                                  ## edges.
type
  TopOpeBRepBuildShellToSolid* {.importcpp: "TopOpeBRepBuild_ShellToSolid",
                                header: "TopOpeBRepBuild_ShellToSolid.hxx", bycopy.} = object
type
  TopOpeBRepBuildSolidAreaBuilder* {.importcpp: "TopOpeBRepBuild_SolidAreaBuilder", header: "TopOpeBRepBuild_SolidAreaBuilder.hxx",
                                    bycopy.} = object of TopOpeBRepBuildArea3dBuilder
type
  TopOpeBRepBuildSolidBuilder* {.importcpp: "TopOpeBRepBuild_SolidBuilder",
                                header: "TopOpeBRepBuild_SolidBuilder.hxx", bycopy.} = object
type
  TopOpeBRepBuildTools* {.importcpp: "TopOpeBRepBuild_Tools",
                         header: "TopOpeBRepBuild_Tools.hxx", bycopy.} = object
type
  TopOpeBRepBuildTools2d* {.importcpp: "TopOpeBRepBuild_Tools2d",
                           header: "TopOpeBRepBuild_Tools2d.hxx", bycopy.} = object
type
  TopOpeBRepBuildVertexInfo* {.importcpp: "TopOpeBRepBuild_VertexInfo",
                              header: "TopOpeBRepBuild_VertexInfo.hxx", bycopy.} = object
type
  TopOpeBRepBuildWireEdgeClassifier* {.importcpp: "TopOpeBRepBuild_WireEdgeClassifier", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx",
                                      bycopy.} = object of TopOpeBRepBuildCompositeClassifier ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## classifier
                                                                                         ## on
                                                                                         ## edge
                                                                                         ## <F>.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Used
                                                                                         ## to
                                                                                         ## compare
                                                                                         ## edges
                                                                                         ## and
                                                                                         ## wires
                                                                                         ## on
                                                                                         ## the
                                                                                         ## edge
                                                                                         ## <F>.
type
  TopOpeBRepBuildWireEdgeSet* {.importcpp: "TopOpeBRepBuild_WireEdgeSet",
                               header: "TopOpeBRepBuild_WireEdgeSet.hxx", bycopy.} = object of TopOpeBRepBuildShapeSet ##
                                                                                                                ## !
                                                                                                                ## Creates
                                                                                                                ## a
                                                                                                                ## WireEdgeSet
                                                                                                                ## to
                                                                                                                ## build
                                                                                                                ## edges
                                                                                                                ## connected
                                                                                                                ## by
                                                                                                                ## vertices
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## on
                                                                                                                ## face
                                                                                                                ## F.
                                                                                                                ## Edges
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## WireEdgeSet
                                                                                                                ## must
                                                                                                                ## have
                                                                                                                ## a
                                                                                                                ## representation
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## on
                                                                                                                ## surface
                                                                                                                ## of
                                                                                                                ## face
                                                                                                                ## F.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Indicates
                                                                                                                ## whether
                                                                                                                ## vertex
                                                                                                                ## V
                                                                                                                ## is
                                                                                                                ## a
                                                                                                                ## good
                                                                                                                ## connexity
                                                                                                                ## vertex
                                                                                                                ## between
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## edges
                                                                                                                ## E1
                                                                                                                ## and
                                                                                                                ## E2.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## i.e,
                                                                                                                ## returns
                                                                                                                ## True
                                                                                                                ## if
                                                                                                                ## V
                                                                                                                ## is
                                                                                                                ## shared
                                                                                                                ## by
                                                                                                                ## E1
                                                                                                                ## and
                                                                                                                ## E2
                                                                                                                ## and
                                                                                                                ## if
                                                                                                                ## V
                                                                                                                ## has
                                                                                                                ## different
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## orientations
                                                                                                                ## on
                                                                                                                ## E1
                                                                                                                ## and
                                                                                                                ## E2.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## If
                                                                                                                ## V
                                                                                                                ## is
                                                                                                                ## shared
                                                                                                                ## by
                                                                                                                ## E1
                                                                                                                ## and
                                                                                                                ## E2,
                                                                                                                ## returns
                                                                                                                ## the
                                                                                                                ## orientation
                                                                                                                ## of
                                                                                                                ## V
                                                                                                                ## on
                                                                                                                ## E1
                                                                                                                ## and
                                                                                                                ## E2
type
  TopOpeBRepBuildWireToFace* {.importcpp: "TopOpeBRepBuild_WireToFace",
                              header: "TopOpeBRepBuild_WireToFace.hxx", bycopy.} = object
