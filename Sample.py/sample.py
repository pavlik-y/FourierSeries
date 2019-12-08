import cmath

def genSquareSamples(samples_per_side, side_length):
  for i in xrange(samples_per_side):
    x = side_length * i / samples_per_side
    yield complex(x, 0.0)
  for i in xrange(samples_per_side):
    y = side_length * i / samples_per_side
    yield complex(side_length, y)
  for i in xrange(samples_per_side):
    x = side_length * (samples_per_side - i) / samples_per_side
    yield complex(x, side_length)
  for i in xrange(samples_per_side):
    y = side_length * (samples_per_side - i) / samples_per_side
    yield complex(0.0, y)

def genCircleSamples(count, r, center):
  for i in xrange(count):
    angle = cmath.pi * 2 * i / count
    yield cmath.rect(r, angle) + center

def genArcSamples(count, r, center, startAngle, endAngle):
  for i in xrange(count):
    angle = startAngle + (endAngle-startAngle) * i / count
    yield cmath.rect(r, angle) + center

def rotatedSamples(harmonic, samples):
  count = len(samples)
  for i, z in enumerate(samples):
    angle = cmath.pi * 2 * harmonic * i / count
    r, phi = cmath.polar(z)
    yield cmath.rect(r, phi - angle)

def printHarmonic(i, samples, threshold):
  z = sum(rotatedSamples(i, samples))/len(samples)
  if abs(z) < threshold:
    return
  r, phi = cmath.polar(z)
  print("  fs.setHarmonic(%i, %f, %f);" % (i, r, phi))

def genMickey(samplesPerSegment, r):
  sections = [
    (2, -cmath.pi/2, 0.563801580551, complex(0, -55*r), 110*r),
    (2, -1.9158889444467222, -2.7536620839293393 + cmath.pi*2, complex(115*r, 65*r), 65*r),
    (1, 1.04939542494, 2.09219722865, complex(0, -55*r), 110*r),
    (2, -0.38793056966045397, -1.2257037091430711 + cmath.pi*2, complex(-115*r, 65*r), 65*r),
    (2, 2.57779107304, 3*cmath.pi/2, complex(0, -55*r), 110*r),
  ]
  for sec in sections:
    for s in genArcSamples(samplesPerSegment * sec[0], sec[4], sec[3], sec[1], sec[2]):
      yield s

def main():
  # Mickey()
  threshold = 0.001
  samples = list(genMickey(300, 1.8))
  printHarmonic(0, samples, threshold)
  for i in xrange(1, 200):
    printHarmonic(i, samples, threshold)
    printHarmonic(-i, samples, threshold)

leftC = complex(-115, 65)
rightC = complex(115, 65)
centerC = complex(0, -55)
points = [
    complex(-54.8, 40.4),
    complex(-93, 3.8),
    complex(54.8, 40.4),
    complex(93, 3.8)]
def printAngles():
  for p in points:
    x = p-rightC
    print(x, cmath.phase(x))
if __name__ == "__main__":
  # printAngles()
  main()


# -pi/2
# 0.563801580551
# c=complex(0, -55)
# r=110

# -1.9158889444467222
# -2.7536620839293393 + pi
# c=complex(115, 65)
# r=65

# 1.04939542494
# 2.09219722865
# c=complex(0, -55)
# r=110

# -0.38793056966045397
# -1.2257037091430711 + pi
# c = complex(-115, 65)
# r=65


# 2.57779107304
# 3*pi/2
# c=complex(0, -55)
# r=110

