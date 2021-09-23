import occt

var p = newPnt()
p.x = 1.1
p.y = 2.2
p.z = 3.3

echo p.x
echo p.y
echo p.z

echo $p

p[0] = 4.4
p[0] = 5.5
p[0] = 6.6

echo p[0]
echo p[1]
echo p[2]

p.set(7.7, 8.8, 9.9)
echo $p

var q = newPnt(1,2,3)
echo $q

echo q.distance(p)