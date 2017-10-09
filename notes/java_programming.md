import java.util.Scanner;

## Public
- Accessible to other classes.

## Private
- Can only be accessed only by other methods in the class

## Protected
- Can only be accessed by files within the same package

# Static (in relations to a Class property)
- Shared with every object created

## Final (cannot be changed)

string/double (float)/int/ boolean (t/f)/
byte (takes up 1 byte): -128 to 127
short (2 bytes): -32768 to 32767
int (4 bytes): -2147483648 to 2147483647
long (8 bytes): -9,223,372,036,854,775,808L to 9,223,372,036,854,775,807L
(longs must end with a capital L)

float (32 bit): 6-7 digits
double (64 bit): 15-16 digits
decimal (128 bit): 28-29 significant figure limit
char: single character (Must use single quotes for char values)

char c = 'a';
String s = "hello";

void: no return value

*Converstion*
example. double aDouble = 3.1454;
String doubleString = Double.toString(aDouble);
- converts our double into a String


int doubleToInt = (int) aDouble;
- converts our double into an integer
int stringToInt = Integer.parseInt(do)


static Scanner userinput = new Scanner(System.in);
System.out.print("Enter a name: \n");
if(userInput.hasNextLine()) {

}
## Variable Interpolation in Java
- String.format("%s is %d years old.", name, date)

## Logical Operators
- & Returns true if boolean value on left and right are both true. Always evaluates both sides.
- && Returns true if boolean value on left and right are both true. Stops at the first false .
- || Returns true if either boolean value is true. Stops evaluating at first true.
- | : Or. Returns true if either boolean value is true. Always evaluates left and right side.
- ! : reverses trues and false
- ^ : XOR operator. Checks for one true and one false.

## Static and Dynamic Typing (data type)
- In a static typed programming language (such as Java), variables do not need to be defined before they are used.
- In a statically typed language, type checking is performed at compile time.
- In a dynamically typed language, type checking is performed at runtime.

## Strong and Weak Typing
- Strong typing: variables are declared with a specific data type.
- In a weak-typed language, variables can be coerced into a different type (implicit typing).
