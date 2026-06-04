# Scripting

Scripting is required in some capacity in every custom map. This is a simple guide to help you understand the structure of Black Ops III scripts. This guide is aimed at assisting people with little to no programming experience.

## What is GSC?
GSC, or Game Script Code, is Call of Duty's proprietary C style syntax used to manage scripts for gamemodes, maps, and features.

## Difference between GSC, CSC, and GSH
Client script code, or CSC, is code that runs exclusively for a single client. Meaning it would not affect other players or the level. There are 

Game script header, or GSH, declares global values.

## C Style Syntax
### Functions
To write GSC code, you need to understand the structure of a function.
The following is a function named `example` that takes zero arguments.
```c
function example()
{
	// code would go here
}
```
To call a function, you simply type its name, followed by the parenthesis and the names of any arguments the function wants inside, and ended with a semicolon `;`.
```c
example();
```
### Arguments
Arguments are variables, or parameters, that can be passed to a function for usability within your code.
```c
function example( text )
{
	IPrintLnBold( text );
}
```
The function now takes a `String` variable as the argument `text` and prints it on screen using the built-in `IPrintLnBold()` function.

You can also call functions *on* variables
```c
function example()
{
	my_trigger = GetEnt( "my_trigger", "targetname" );
	my_triggers_angles = my_trigger GetAngles();
	IPrintLnBold( my_triggers_angles );
}
```
As well as having your function `return` or give a variable back to the code that called it.

The game offers many built-in functions you can use to interact with the game. To see a list of all of the functions available and what each does, visit the [functions list documentation](functions.md).

### Data Types
Data types are different objects that are interacted with inside your code.

Data Type | Example | Explanation
| - | - | - |
Integer | 0, 69, 1337 | Any whole number
Float | 3.14159, 0.001 | Any decimal/fractional number
String | "Hello world!", "123" | Text
Boolean | true, false | An on or off, true or false, simple variable
Array | [], [1, 2, 3] | A list of other data
Entity | player | Interactable object in the game. More details [here](types/entity.md)
HudElem | overlay = NewHudElem() | A user interface element. More details [here](types/hudelem.md)
PathNode | node = SpawnPathNode( cover_left, origin, angles ) | For scripting AI. More details [here](types/pathnode.md)

### Variables
Variables are objects of different data types that can be used as arguments in your code.
```c
function example()
{
	my_string = "Hello world!";
	IPrintLnBold( my_string );
}
```
#### Modifying numerical variables
There are quick ways to make modifications to integers and floats
```c
c++; // Adds one
c--; // Subtracts one
c += 5; // Adds 5
c -= 5; // Subtracts 5
c *= 5; // Multiplies by 5
c /= 5; // Divides by 5
```

### Logic Gates
The most common way to decide whether to do or not do something is an `if / else` statement.
```c
function example( my_integer )
{
	if( my_integer == 1 )
	{
		IPrintLnBold( "We are number one!" );
	}
	else if( my_integer > 1 )
	{
		IPrintLnBold( "We are bigger than one!" );
	}
	else if( my_integer <= 0 )
	{
		IPrintLnBold( "We are smaller than one!" );
	}
	else
	{
		IPrintLnBold( "I have no clue what we are." );
	}
}
```
We can also check multiple conditions at once
```c
function example( my_integer, my_boolean )
{
	if( my_integer != 1 && !my_boolean )
	{
		IPrintLnBold( "Integer is not one and boolean is false!" );
	}
	else if( my_integer == 1 || my_boolean )
		IPrintLnBold( "Integer is one OR boolean is true!" );
		// Braces { } are not needed if the code below is only one line
}
```
Or if we want to check the value against a lot of different options
```c
switch ( my_integer )
{
	case 0:
		IPrintLnBold( "nothin" );
		break;
	case 1:
		IPrintLnBold( "one" );
		break;
	case 2:
	case 3:
		IPrintLnBold( "two or three" );
		break;
	default:
		IPrintLnBold( "anything else" );
}
```
### Loops
Loops are used to repeat an operation a specified amount of times
```c
// i=0; is the starting value of i
// i<10; the loop stops when i reaches 10
// i++; adds 1 to i
for( i=0; i<10; i++ )
{
	IPrintLnBold(i);
	wait(1);
}
```
While loops continue as long as a condition is true. To have an infinitely repeating loop, you can use
```c
while( true )
{
	IPrintLnBold( "This is forever." );
	wait(1);
}
```
You can use `continue` to complete that iteration of the loop early, or `break` to entirely stop the loop.

### Notifies
GSC uses notifies throughout the code for scripts to communicate with each other when to start and stop running. You can send a notify with
```c
level notify( "example_notify" );
```
then, to run something when the flag is notified
```c
function example()
{
	self endon( "death" );
	while( 1 )
	{
		self waittill( "example_notify" );
		IPrintLnBold( "The example flag has been called!" );
	}
}
```
this will continuously check wait for `example_notify` to be called until the entity dies

### Threads
The flag example above will not allow any other GSC code to run since it is holding it up in an infinite loop. The way to avoid this is by calling it in a thread.
```c
function main()
{
	level thread example();
}
```
This gives the function it's own thread, or code process, so it doesn't hold anything else up
