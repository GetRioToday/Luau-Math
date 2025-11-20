# Luau-math
A reimplemtation of simple functions & constants from Luau's math library, without calling built-in functions. This is useful for sensitive tasks like encryption/hashing/etc where you can't trust that the math library has not been tampered with.

# Functions
- floor: Drops the fractional part of a number
1. 53 -> 53
2. 53.001 -> 53
3. 53.678 -> 53
- ceil: Raises a number to the next integer
1. 53 -> 53
2. 53.001 -> 54
3. 53.93 -> 54
- abs: Makes a number absolute
1. -200 -> 200
2. -5326 -> 5326
3. 35 -> 35
- clamp: Keeps an input number in a (min, max) range
1. (200, 10, 20) -> 10
2. (14, 10, 20) -> 14
3. (57, 10, 20) -> 20

# Constants
- huge: Interpreted as "infinite", value set to 9e500
- pi: Represented to be as large as precisely possible
