type
  TopExp* {.importcpp: "TopExp", header: "TopExp.hxx", bycopy.} = object ## ! Tool to explore a topological data structure.
                                                                 ## ! Stores in the map <M> all  the sub-shapes of <S>
                                                                 ## ! of type <T>.
                                                                 ## !
                                                                 ## ! Warning: The map is not cleared at first.
type
  TopExpExplorer* {.importcpp: "TopExp_Explorer", header: "TopExp_Explorer.hxx",
                   bycopy.} = object of RootObj ## ! Creates an empty explorer, becomes usefull after Init.
