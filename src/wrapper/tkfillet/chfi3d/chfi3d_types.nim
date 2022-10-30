# PROVIDES: ChFi3d ChFi3dBuilder
# DEPENDS: ChFi3dBuilder ChFi3dBuilder MathFunctionWithDerivative

import tkmath/math/math_types
import tkfillet/chfi3d/chfi3d_types
type
  ChFi3d* {.importcpp: "ChFi3d", header: "ChFi3d.hxx", bycopy.} = object 

  ChFi3dBuilder* {.importcpp: "ChFi3d_Builder", header: "ChFi3d_Builder.hxx", bycopy.} = object of RootObj

  ChFi3dChBuilder* {.importcpp: "ChFi3d_ChBuilder", header: "ChFi3d_ChBuilder.hxx",
                    bycopy.} = object of ChFi3dBuilder 
                                                  



  ChFi3dFilBuilder* {.importcpp: "ChFi3d_FilBuilder",
                     header: "ChFi3d_FilBuilder.hxx", bycopy.} = object of ChFi3dBuilder

                     header: "ChFi3d_FilBuilder.hxx", bycopy.} = object of ChFi3dBuilder



  ChFi3dSearchSing* {.importcpp: "ChFi3d_SearchSing",
                     header: "ChFi3d_SearchSing.hxx", bycopy.} = object of MathFunctionWithDerivative






