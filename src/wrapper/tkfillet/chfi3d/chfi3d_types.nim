# PROVIDES: ChFi3d ChFi3dBuilder ChFi3dChBuilder ChFi3dFilBuilder
# DEPENDS: MathFunctionWithDerivative

type
  ChFi3d* {.importcpp: "ChFi3d", header: "ChFi3d.hxx", bycopy.} = object ## ! Defines the type of concavity in the edge of connection of two faces

type
  ChFi3dBuilder* {.importcpp: "ChFi3d_Builder", header: "ChFi3d_Builder.hxx", bycopy.} = object of RootObj

type
  ChFi3dChBuilder* {.importcpp: "ChFi3d_ChBuilder", header: "ChFi3d_ChBuilder.hxx",
                    bycopy.} = object of ChFi3dBuilder ## ! initializes the Builder with the Shape <S> for the
                                                  ## ! computation of chamfers

type
  ChFi3dFilBuilder* {.importcpp: "ChFi3d_FilBuilder",
                     header: "ChFi3d_FilBuilder.hxx", bycopy.} = object of ChFi3dBuilder

                     header: "ChFi3d_FilBuilder.hxx", bycopy.} = object of ChFi3dBuilder
type
  ChFi3dSearchSing* {.importcpp: "ChFi3d_SearchSing",
                     header: "ChFi3d_SearchSing.hxx", bycopy.} = object of MathFunctionWithDerivative


