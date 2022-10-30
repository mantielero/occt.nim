# PROVIDES: TopExp TopExpExplorer
# DEPENDS:

type
  TopExp* {.importcpp: "TopExp", header: "TopExp.hxx", bycopy.} = object 
                                                                 
                                                                 
                                                                 
                                                                 
                                                                 

  TopExpExplorer* {.importcpp: "TopExp_Explorer", header: "TopExp_Explorer.hxx",
                   bycopy.} = object of RootObj 

