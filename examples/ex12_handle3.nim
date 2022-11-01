import occt

# Create the pointer to the object
var aPnt2:HandleCartesianPointObj
var aPnt1 = newPnt(1, 2.2, 3.3)
echo aPnt1.x, " ", aPnt1.y, " ", aPnt1.z
echo "aPnt is null: ", aPnt1.isNull, " ", aPnt2.isNull

aPnt2 = aPnt1
echo aPnt2.y
echo aPnt1.y

aPnt1.y = 5.5
echo aPnt2.y
echo aPnt1.y

