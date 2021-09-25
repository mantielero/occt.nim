#[
import cinterop

csource "TopAbs_ShapeEnum.hxx":
  type
    TopAbs_ShapeEnum* {.cgen:"'*1_$1".} = object of CEnum


type
  ShapeEnum* = enum
    sCompound = cauto^TopAbs_ShapeEnum.COMPOUND, 
    sCompSolid = cauto^TopAbs_ShapeEnum.COMPSOLID,
    sSolid = cauto^TopAbs_ShapeEnum.SOLID, 
    sShell = cauto^TopAbs_ShapeEnum.SHELL,
    sFace = cauto^TopAbs_ShapeEnum.FACE,
    sWire = cauto^TopAbs_ShapeEnum.WIRE,
    sEdge = cauto^TopAbs_ShapeEnum.EDGE,
    sVertex = cauto^TopAbs_ShapeEnum.VERTEX,
    sShape = cauto^TopAbs_ShapeEnum.SHAPE
]#


#     type CPP_ENUM* {.cgen:"'*1_$1".} = object of CEnum

#[
enum TopAbs_ShapeEnum
{
TopAbs_COMPOUND,
TopAbs_COMPSOLID,
TopAbs_SOLID,
TopAbs_SHELL,
TopAbs_FACE,
TopAbs_WIRE,
TopAbs_EDGE,
TopAbs_VERTEX,
TopAbs_SHAPE
};

]#



type
  ShapeEnum* {.size: sizeof(cint), importcpp: "TopAbs_ShapeEnum",
                    header: "TopAbs_ShapeEnum.hxx".} = enum
    sCOMPOUND, sCOMPSOLID, sSOLID, sSHELL, sFACE,
    sWIRE, sEdge, sVERTEX, sSHAPE



#---------------- EJEMPLO

# type CPP_ENUM* {.cgen:"'*1_$1".} = object of CEnum

#[
enum CPP_ENUM
{
    CPP_ENUM_MEMBER_1 = 1
};    
]#