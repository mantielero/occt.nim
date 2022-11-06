import occt

# type
#   Person = ref object of RootObj
#     name: string

#   Student = ref object of Person


# Geom_CartesianPoint a sub-class of Geom_Point; 
var aPnt1: Handle[Geom_Point]           
var aPnt2, aPnt3: Handle[Geom_CartesianPoint] 
 
assert(`*`(aPnt2) of Geom_Point)
assert(`*`(aPnt2) of Geom_CartesianPoint)
aPnt2 = newHandle( cnew newGeomCartesianPoint(1.0,2.0,3.0) ) # 
aPnt1 = newHandle( cast[ptr Geom_Point](aPnt2.get) )

assert (`*`(aPnt1).x) == (`*`(aPnt2).x)

aPnt3 = newHandle( cast[ptr Geom_CartesianPoint](aPnt1.get) )
assert (`*`(aPnt1).x) == (`*`(aPnt3).x)
# var a = new Person
# var b = new Student
# b.name = "joe"
# a = b
# echo a.name

# b.name = "peter"
# echo a.name
# echo b.name
# echo typeof(a)
# echo typeof(b)

#[

Handle(Geom_CartesianPoint) aPnt2, aPnt3;
aPnt2 = new Geom_CartesianPoint();
aPnt1 = aPnt2; // OK, standard assignment
aPnt3 = Handle(Geom_CartesianPoint)::DownCast (aPnt1);
// OK, the actual type of aPnt1 is Geom_CartesianPoint, although the static type of the handle is Geom_Point
]#