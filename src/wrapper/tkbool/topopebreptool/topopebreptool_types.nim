type
  TopOpeBRepTool* {.importcpp: "TopOpeBRepTool", header: "TopOpeBRepTool.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Fuse
                                                                                         ## edges
                                                                                         ## (in
                                                                                         ## a
                                                                                         ## wire)
                                                                                         ## of
                                                                                         ## a
                                                                                         ## shape
                                                                                         ## where
                                                                                         ## we
                                                                                         ## have
                                                                                         ##
                                                                                         ## !
                                                                                         ## useless
                                                                                         ## vertex.
                                                                                         ##
                                                                                         ## !
                                                                                         ## In
                                                                                         ## case
                                                                                         ## face
                                                                                         ## <FF>
                                                                                         ## is
                                                                                         ## built
                                                                                         ## on
                                                                                         ## UV-non-connexed
                                                                                         ## wires
                                                                                         ##
                                                                                         ## !
                                                                                         ## (with
                                                                                         ## the
                                                                                         ## two
                                                                                         ## closing
                                                                                         ## edges
                                                                                         ## FORWARD
                                                                                         ## and
                                                                                         ## REVERSED,
                                                                                         ## in
                                                                                         ##
                                                                                         ## !
                                                                                         ## spite
                                                                                         ## of
                                                                                         ## one
                                                                                         ## only),
                                                                                         ## we
                                                                                         ## find
                                                                                         ## out
                                                                                         ## the
                                                                                         ## faulty
                                                                                         ## edge,
                                                                                         ## add
                                                                                         ##
                                                                                         ## !
                                                                                         ## the
                                                                                         ## faulty
                                                                                         ## shapes
                                                                                         ## (edge,wire,face)
                                                                                         ## to
                                                                                         ## <MshNOK>.
                                                                                         ##
                                                                                         ## !
                                                                                         ## <FF>
                                                                                         ## is
                                                                                         ## a
                                                                                         ## face
                                                                                         ## descendant
                                                                                         ## of
                                                                                         ## <F>.
                                                                                         ##
                                                                                         ## !
                                                                                         ## <MWisOld>(wire)
                                                                                         ## =
                                                                                         ## 1
                                                                                         ## if
                                                                                         ## wire
                                                                                         ## is
                                                                                         ## wire
                                                                                         ## of
                                                                                         ## <F>
                                                                                         ##
                                                                                         ## !
                                                                                         ## 0
                                                                                         ## wire
                                                                                         ## results
                                                                                         ## from
                                                                                         ## <F>'s
                                                                                         ## wire
                                                                                         ## splitted.
                                                                                         ##
                                                                                         ## !
                                                                                         ## returns
                                                                                         ## false
                                                                                         ## if
                                                                                         ## purge
                                                                                         ## fails
type
  TopOpeBRepToolAncestorsTool* {.importcpp: "TopOpeBRepTool_AncestorsTool",
                                header: "TopOpeBRepTool_AncestorsTool.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## same
                                                                                         ## as
                                                                                         ## package
                                                                                         ## method
                                                                                         ## TopExp::MapShapeListOfShapes()
type
  TopOpeBRepToolBoxSort* {.importcpp: "TopOpeBRepTool_BoxSort",
                          header: "TopOpeBRepTool_BoxSort.hxx", bycopy.} = object
type
  TopOpeBRepToolC2DF* {.importcpp: "TopOpeBRepTool_C2DF",
                       header: "TopOpeBRepTool_C2DF.hxx", bycopy.} = object
type
  TopOpeBRepToolCLASSI* {.importcpp: "TopOpeBRepTool_CLASSI",
                         header: "TopOpeBRepTool_CLASSI.hxx", bycopy.} = object
type
  TopOpeBRepToolConnexity* {.importcpp: "TopOpeBRepTool_connexity",
                            header: "TopOpeBRepTool_connexity.hxx", bycopy.} = object
type
  TopOpeBRepToolCORRISO* {.importcpp: "TopOpeBRepTool_CORRISO",
                          header: "TopOpeBRepTool_CORRISO.hxx", bycopy.} = object
type
  TopOpeBRepToolCurveTool* {.importcpp: "TopOpeBRepTool_CurveTool",
                            header: "TopOpeBRepTool_CurveTool.hxx", bycopy.} = object
type
  TopOpeBRepToolFace* {.importcpp: "TopOpeBRepTool_face",
                       header: "TopOpeBRepTool_face.hxx", bycopy.} = object
type
  TopOpeBRepToolFuseEdges* {.importcpp: "TopOpeBRepTool_FuseEdges",
                            header: "TopOpeBRepTool_FuseEdges.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Initialise
                                                                                 ## members
                                                                                 ## and
                                                                                 ## build
                                                                                 ## construction
                                                                                 ## of
                                                                                 ## map
                                                                                 ##
                                                                                 ## !
                                                                                 ## of
                                                                                 ## ancestors.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Build
                                                                                 ## the
                                                                                 ## all
                                                                                 ## the
                                                                                 ## lists
                                                                                 ## of
                                                                                 ## edges
                                                                                 ## that
                                                                                 ## are
                                                                                 ## to
                                                                                 ## be
                                                                                 ## fused
type
  TopOpeBRepToolGeomTool* {.importcpp: "TopOpeBRepTool_GeomTool",
                           header: "TopOpeBRepTool_GeomTool.hxx", bycopy.} = object ## !
                                                                               ## Boolean
                                                                               ## flags
                                                                               ## <CompC3D>,
                                                                               ## <CompPC1>,
                                                                               ## <CompPC2>
                                                                               ## !
                                                                               ## indicate
                                                                               ## whether
                                                                               ## the
                                                                               ## corresponding
                                                                               ## result
                                                                               ## curves
                                                                               ## !
                                                                               ## <C3D>,
                                                                               ## <PC1>,
                                                                               ## <PC2>
                                                                               ## of
                                                                               ## MakeCurves
                                                                               ## method
                                                                               ## must
                                                                               ## or
                                                                               ## not
                                                                               ## !
                                                                               ## be
                                                                               ## computed
                                                                               ## from
                                                                               ## an
                                                                               ## intersection
                                                                               ## line
                                                                               ## <L>.
                                                                               ## !
                                                                               ## When
                                                                               ## the
                                                                               ## line
                                                                               ## <L>
                                                                               ## is a
                                                                               ## walking
                                                                               ## one,
                                                                               ## <TypeC3D>
                                                                               ## is
                                                                               ## the
                                                                               ## !
                                                                               ## kind
                                                                               ## of
                                                                               ## the
                                                                               ## 3D
                                                                               ## curve
                                                                               ## <C3D>
                                                                               ## to
                                                                               ## compute  :
                                                                               ## ! -
                                                                               ## BSPLINE1
                                                                               ## to
                                                                               ## compute  a
                                                                               ## BSpline
                                                                               ## of
                                                                               ## degree 1
                                                                               ## on
                                                                               ## the
                                                                               ## !
                                                                               ## walking
                                                                               ## points
                                                                               ## of
                                                                               ## <L>,
                                                                               ## ! -
                                                                               ## APPROX
                                                                               ## to
                                                                               ## build
                                                                               ## an
                                                                               ## approximation
                                                                               ## curve
                                                                               ## on
                                                                               ## the
                                                                               ## !
                                                                               ## walking
                                                                               ## points
                                                                               ## of
                                                                               ## <L>.
type
  HandleTopOpeBRepToolHBoxTool* = Handle[TopOpeBRepToolHBoxTool]
  TopOpeBRepToolHBoxTool* {.importcpp: "TopOpeBRepTool_HBoxTool",
                           header: "TopOpeBRepTool_HBoxTool.hxx", bycopy.} = object of StandardTransient
type
  TopOpeBRepToolMakeTransition* {.importcpp: "TopOpeBRepTool_makeTransition",
                                 header: "TopOpeBRepTool_makeTransition.hxx",
                                 bycopy.} = object
type
  TopOpeBRepToolMkTondgE* {.importcpp: "TopOpeBRepTool_mkTondgE",
                           header: "TopOpeBRepTool_mkTondgE.hxx", bycopy.} = object
type
  TopOpeBRepToolPurgeInternalEdges* {.importcpp: "TopOpeBRepTool_PurgeInternalEdges", header: "TopOpeBRepTool_PurgeInternalEdges.hxx",
                                     bycopy.} = object ## ! Initialize   members and  begin  exploration   of  shape
                                                    ## ! depending of the value of PerformNow
                                                    ## ! Do the main job. Explore all the  edges of myShape and
                                                    ## ! build a map with  faces as a key  and list of internal
                                                    ## ! edges(without connected faces) as value.
type
  TopOpeBRepToolREGUS* {.importcpp: "TopOpeBRepTool_REGUS",
                        header: "TopOpeBRepTool_REGUS.hxx", bycopy.} = object
type
  TopOpeBRepToolREGUW* {.importcpp: "TopOpeBRepTool_REGUW",
                        header: "TopOpeBRepTool_REGUW.hxx", bycopy.} = object
type
  TopOpeBRepToolShapeClassifier* {.importcpp: "TopOpeBRepTool_ShapeClassifier",
                                  header: "TopOpeBRepTool_ShapeClassifier.hxx",
                                  bycopy.} = object
type
  TopOpeBRepToolShapeExplorer* {.importcpp: "TopOpeBRepTool_ShapeExplorer",
                                header: "TopOpeBRepTool_ShapeExplorer.hxx", bycopy.} = object of TopExpExplorer ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## an
                                                                                                         ## empty
                                                                                                         ## explorer,
                                                                                                         ## becomes
                                                                                                         ## usefull
                                                                                                         ## after
                                                                                                         ## Init.
type
  TopOpeBRepToolShapeTool* {.importcpp: "TopOpeBRepTool_ShapeTool",
                            header: "TopOpeBRepTool_ShapeTool.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## the
                                                                                 ## tolerance
                                                                                 ## of
                                                                                 ## the
                                                                                 ## shape
                                                                                 ## <S>.
                                                                                 ##
                                                                                 ## !
                                                                                 ## If
                                                                                 ## the
                                                                                 ## shape
                                                                                 ## <S>
                                                                                 ## is
                                                                                 ## Null,
                                                                                 ## returns
                                                                                 ## 0.
type
  TopOpeBRepToolSolidClassifier* {.importcpp: "TopOpeBRepTool_SolidClassifier",
                                  header: "TopOpeBRepTool_SolidClassifier.hxx",
                                  bycopy.} = object
type
  TopOpeBRepToolTOOL* {.importcpp: "TopOpeBRepTool_TOOL",
                       header: "TopOpeBRepTool_TOOL.hxx", bycopy.} = object
